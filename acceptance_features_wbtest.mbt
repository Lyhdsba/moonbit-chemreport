///|
test "scalar parsing and unit conversion cover engineering boundaries" {
  let flow = parse_scalar(" 12.5 kg")
  assert_true(flow is Ok(_))
  inspect(
    convert_scalar(flow.unwrap(), "g").unwrap().value,
    content="12500.000",
  )
  assert_true(parse_scalar("not-a-number kg/h") is Err(_))
  assert_true(convert_scalar(flow.unwrap(), "m") is Err(_))
}

///|
test "report query preserves stable order and filters hazards" {
  let r = report(
    "q",
    inputs=[
      input("feed", quantity("1", "kg/h")),
      input("temperature", quantity("300", "K")),
    ],
    results=[result("out", quantity("1", "kg/h"))],
    warnings=[info("note"), hazard("danger")],
    sources=[source("basis", "fixture")],
  )
  inspect(r.find_input("temperature").unwrap().name, content="temperature")
  inspect(r.warnings_with_severity(Hazard).length(), content="1")
  inspect(r.section_counts().length(), content="8")
}

///|
test "policy and diff expose meaningful quality changes" {
  let r = sample_mass_balance_report()
  let strict = quality_policy(min_formulas=3, require_source_url=true)
  assert_true(strict.evaluate(r).length() > 0)
  let changed = report("changed", summary="different")
  inspect(compare_reports(r, changed).length() > 0, content="true")
}

///|
test "csv and jsonl exports escape data safely" {
  let r = report(
    "quote, report",
    inputs=[input("feed", quantity("1", "kg/h"), note="line 1\nline 2")],
    results=[result("out", quantity("1", "kg/h"))],
    sources=[source("basis", "test")],
  )
  let csv = report_summary_csv([r])
  assert_true(csv.contains("\"quote, report\""))
  assert_true(csv.contains("\"line 1\nline 2\""))
  assert_true(reports_jsonl([r]).contains("\"title\""))
}

///|
test "engineering templates are publishable and deterministic" {
  let templates = [
    heat_exchanger_report(),
    pump_power_report(),
    flash_split_report(),
    stoichiometric_yield_report(),
  ]
  for r in templates {
    assert_true(r.is_publishable())
    assert_true(r.to_json().contains("\"results\""))
  }
}

///|
test "benchmark runner handles repeated deterministic work" {
  let suite = benchmark_suite("exports", [
    benchmark_case("mass", sample_mass_balance_report()),
  ])
  let result = suite.run(3)
  inspect(result.case_count, content="1")
  inspect(result.iterations, content="3")
  assert_true(result.total_bytes > 0)
}

///|
test "engineering catalog and contracts are searchable" {
  inspect(engineering_metric_catalog().length(), content="980")
  inspect(engineering_metric_areas().length(), content="20")
  let hits = find_engineering_metrics("pump")
  assert_true(hits.length() > 0)
  let contract = contract_for_metric(hits[0].id).unwrap()
  assert_true(contract.requires_formula)
  assert_true(contract_is_complete(contract, sample_mass_balance_report()))
}
