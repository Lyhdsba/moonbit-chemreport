///|
pub struct BenchmarkCase {
  id : String
  category : String
  report : ChemReport
} derive(Debug, Eq)

///|
fn nist_source(label : String, citation : String, url : String) -> DataSource {
  source(label, citation, url~)
}

///|
fn nist_antoine_case(
  id : String,
  compound : String,
  cas : String,
  temperature_range : String,
  a : String,
  b : String,
  c : String,
  reference : String,
) -> BenchmarkCase {
  let url = match compound {
    "Water" => "https://webbook.nist.gov/cgi/cbook.cgi?ID=C7732185&Type=ANTOINE"
    "Ethanol" => "https://webbook.nist.gov/cgi/cbook.cgi?ID=C64175&Type=ANTOINE"
    _ => "https://webbook.nist.gov/cgi/cbook.cgi?ID=C71432&Type=ANTOINE"
  }
  {
    id,
    category: "nist-antoine-vapor-pressure",
    report: report(
      "NIST SRD 69: \{compound} vapor-pressure correlation",
      summary="A cited Antoine-equation record retained as a report-layer integration benchmark.",
      inputs=[
        input("compound", quantity(compound, "name"), note="CAS \{cas}"),
        input(
          "valid temperature range",
          quantity(temperature_range, "K"),
          note="NIST correlation range",
        ),
        input("Antoine A", quantity(a, "1")),
        input("Antoine B", quantity(b, "K")),
        input("Antoine C", quantity(c, "K")),
      ],
      assumptions=[
        assumption(
          "correlation scope", "use the coefficient set only inside the cited temperature range",
        ),
        assumption(
          "pressure unit", "the NIST record defines P in bar for this parameter table",
        ),
      ],
      formulas=[
        formula("Antoine equation", "log10(P / bar) = A - B / (T + C)", [
          "P", "A", "B", "T", "C",
        ]),
      ],
      results=[
        result("coefficient A", quantity(a, "1"), procedure=reference),
        result("coefficient B", quantity(b, "K"), procedure=reference),
        result("coefficient C", quantity(c, "K"), procedure=reference),
      ],
      warnings=[
        caution("do not extrapolate outside the NIST correlation range"),
        info(
          "values are transcribed from NIST Chemistry WebBook SRD 69; no coefficient fitting is performed here",
        ),
      ],
      sources=[
        nist_source(
          "NIST Chemistry WebBook",
          "NIST SRD 69 Antoine Equation Parameters; \{reference}",
          url,
        ),
      ],
    ),
  }
}

///|
pub fn nist_vapor_pressure_benchmarks() -> Array[BenchmarkCase] {
  [
    nist_antoine_case(
      "nist-water-344-373k", "Water", "7732-18-5", "344 to 373", "5.08354", "1663.125",
      "-45.622", "Bridgeman and Aldrich, 1964",
    ),
    nist_antoine_case(
      "nist-ethanol-364-513k", "Ethanol", "64-17-5", "364.8 to 513.91", "4.92531",
      "1432.526", "-61.819", "Ambrose, Sprake, and Townsend, 1975",
    ),
    nist_antoine_case(
      "nist-benzene-333-373k", "Benzene", "71-43-2", "333.4 to 373.5", "4.72583",
      "1660.652", "-1.461", "Eon, Pommier, and Guiochon, 1971",
    ),
  ]
}

///|
pub fn nist_benchmark_bundle() -> ReportBundle {
  report_bundle(
    "NIST SRD 69 vapor-pressure benchmark set",
    [
      for item in nist_vapor_pressure_benchmarks() => item.report
    ],
  )
}
