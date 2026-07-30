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
