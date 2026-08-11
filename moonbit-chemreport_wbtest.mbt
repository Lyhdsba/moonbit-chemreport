///|
test "sample report validates without blocking issues" {
  let r = sample_mass_balance_report()
  inspect(r.has_blocking_issue(), content="false")
  inspect(r.validate().length(), content="0")
}

///|
test "markdown export is stable" {
  inspect(
    sample_mass_balance_report().to_markdown(),
    content=(
      #|# CSTR A-101 Mass Balance
      #|
      #|A stable report record for a continuous stirred tank reactor inlet/outlet balance.
      #|
      #|
      #|## Inputs
      #|
      #|- **feed flow**: 100.0 kmol/h - measured at battery limit
      #|- **reactant A mole fraction**: 0.42 mol/mol - gas chromatograph average
      #|- **conversion**: 85.0 % - single-pass target
      #|
      #|## Assumptions
      #|
      #|- **steady state**: accumulation term is zero during the reporting window
      #|- **single reaction**: A -> B is treated as the dominant stoichiometric path
      #|
      #|## Formulas
      #|
      #|- **A in**: `F_A,in = F_feed * z_A` (`F_feed`, `z_A`)
      #|- **A consumed**: `F_A,rxn = F_A,in * X_A` (`F_A,in`, `X_A`)
      #|
      #|## Results
      #|
      #|- **A feed**: 42.0 kmol/h - 100.0 * 0.42
      #|- **A consumed**: 35.7 kmol/h - 42.0 * 0.85
      #|- **A outlet**: 6.3 kmol/h - 42.0 - 35.7
      #|
      #|## Warnings
      #|
      #|- **info**: rounded to one decimal place for operator-facing output
      #|- **caution**: conversion target should be reconciled with heat-duty limits before scale-up
      #|
      #|## Data Sources
      #|
      #|- **process historian**: A-101 inlet flow and composition export, 2026-07-30
      #|- **design basis**: MoonBit Hackathon demonstration dataset
    ),
  )
}

///|
test "json and html exports include stable keys" {
  let r = sample_mass_balance_report()
  assert_true(r.to_json().contains("\"formulas\""))
  assert_true(r.to_json().contains("\"warnings\""))
  assert_true(r.to_html_fragment().contains("<section><h2>Results</h2>"))
  assert_true(r.to_html_document().contains("<!doctype html>"))
}

///|
test "missing report pieces are surfaced" {
  let r = report("")
  inspect(r.has_blocking_issue(), content="true")
  inspect(r.validate().length(), content="4")
}

///|
test "empty fields and hazard warnings are quality failures" {
  let r = report(
    "boundary case",
    inputs=[input(" ", quantity("", "kg/h"))],
    results=[result(" ", quantity("", "kg/h"))],
    sources=[source("reference", " ")],
    warnings=[hazard("flammable feed requires a closed system")],
  )
  inspect(r.validate().length(), content="6")
  inspect(r.has_blocking_issue(), content="true")
  inspect(r.is_publishable(), content="false")
}

///|
test "report metrics expose completeness counts" {
  let m = sample_mass_balance_report().metrics()
  inspect(m.input_count, content="3")
  inspect(m.assumption_count, content="2")
  inspect(m.formula_count, content="2")
  inspect(m.result_count, content="3")
  inspect(m.warning_count, content="2")
  inspect(m.source_count, content="2")
  inspect(m.issue_count, content="0")
}

///|
test "worked examples share one report contract" {
  let examples = [
    sample_energy_balance_report(),
    sample_distillation_report(),
    sample_reactor_conversion_report(),
  ]
  for r in examples {
    assert_true(r.is_publishable())
    assert_true(r.to_markdown().contains("## Results"))
    assert_true(r.to_json().contains("\"sources\""))
  }
}

///|
test "bundle aggregates reports and keeps report indexes" {
  let b = report_bundle("worked examples", [
    sample_mass_balance_report(),
    sample_energy_balance_report(),
  ])
  let m = b.metrics()
  inspect(m.report_count, content="2")
  inspect(m.publishable_count, content="2")
  inspect(m.blocking_count, content="0")
  inspect(m.result_count, content="6")
  inspect(b.validate().length(), content="0")
  assert_true(b.to_markdown().contains("# worked examples"))
  assert_true(b.to_markdown().contains("## Report 2"))
  assert_true(b.to_json().contains("\"reports\""))
}

///|
test "empty bundle and invalid member remain observable" {
  let invalid = report(
    "",
    inputs=[input("feed", quantity("1", "kg/h"))],
    results=[result("outlet", quantity("1", "kg/h"))],
    sources=[source("basis", "test")],
  )
  let empty = report_bundle("empty", [])
  inspect(empty.metrics().report_count, content="0")
  inspect(empty.has_blocking_issue(), content="false")
  let b = report_bundle("mixed", [invalid])
  inspect(b.validate().length(), content="1")
  inspect(b.has_blocking_issue(), content="true")
}

///|
test "nist benchmark set has cited, bounded cases" {
  let cases = nist_vapor_pressure_benchmarks()
  inspect(cases.length(), content="3")
  for c in cases {
    assert_true(c.report.is_publishable())
    assert_true(c.report.to_markdown().contains("NIST SRD 69"))
    assert_true(c.report.to_markdown().contains("do not extrapolate"))
  }
  let b = nist_benchmark_bundle()
  inspect(b.metrics().report_count, content="3")
  inspect(b.metrics().source_count, content="3")
}

///|
test "source-only quality issues do not become structural blocking issues" {
  let r = report(
    "source boundary",
    inputs=[input("feed", quantity("1", "kg/h"))],
    results=[result("outlet", quantity("1", "kg/h"))],
  )
  inspect(r.validate().length(), content="1")
  inspect(r.has_blocking_issue(), content="false")
  inspect(r.is_publishable(), content="false")
}

///|
test "exporters escape control characters and markup" {
  let r = report(
    "quote \" & <tag>",
    inputs=[
      input("feed", quantity("1", "kg/h"), note="line 1\nline 2\tchecked"),
    ],
    results=[result("outlet", quantity("1", "kg/h"))],
    sources=[source("basis", "author's note")],
  )
  let json = r.to_json()
  assert_true(json.contains("\\\""))
  assert_true(json.contains("\\n"))
  assert_true(json.contains("\\t"))
  assert_true(r.to_html_fragment().contains("&lt;tag&gt;"))
  assert_true(r.to_html_fragment().contains("author&#39;s note"))
}
