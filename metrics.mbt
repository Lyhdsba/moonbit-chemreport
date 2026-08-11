///|
pub struct ReportMetrics {
  input_count : Int
  assumption_count : Int
  formula_count : Int
  result_count : Int
  warning_count : Int
  source_count : Int
  issue_count : Int
  hazard_count : Int
} derive(Debug, Eq)

///|
pub fn ChemReport::metrics(self : ChemReport) -> ReportMetrics {
  let hazard_count = self.warnings.fold(init=0, (count, w) => {
    if w.severity == Hazard {
      count + 1
    } else {
      count
    }
  })
  {
    input_count: self.inputs.length(),
    assumption_count: self.assumptions.length(),
    formula_count: self.formulas.length(),
    result_count: self.results.length(),
    warning_count: self.warnings.length(),
    source_count: self.sources.length(),
    issue_count: self.validate().length(),
    hazard_count,
  }
}
