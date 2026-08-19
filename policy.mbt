///|
pub struct QualityPolicy {
  min_inputs : Int
  min_formulas : Int
  min_results : Int
  require_source_url : Bool
  reject_hazards : Bool
} derive(Debug, Eq)

///|
pub struct PolicyIssue {
  code : String
  message : String
} derive(Debug, Eq)

///|
pub fn quality_policy(
  min_inputs? : Int = 1,
  min_formulas? : Int = 1,
  min_results? : Int = 1,
  require_source_url? : Bool = false,
  reject_hazards? : Bool = false,
) -> QualityPolicy {
  { min_inputs, min_formulas, min_results, require_source_url, reject_hazards }
}

///|
pub fn QualityPolicy::evaluate(
  self : QualityPolicy,
  report : ChemReport,
) -> Array[PolicyIssue] {
  let issues : Array[PolicyIssue] = []
  if report.inputs.length() < self.min_inputs {
    issues.push({ code: "inputs", message: "minimum input count not met" })
  }
  if report.formulas.length() < self.min_formulas {
    issues.push({ code: "formulas", message: "minimum formula count not met" })
  }
  if report.results.length() < self.min_results {
    issues.push({ code: "results", message: "minimum result count not met" })
  }
  if self.require_source_url {
    for s in report.sources {
      if s.url.trim() == "" {
        issues.push({ code: "source-url", message: "source URL is required" })
      }
    }
  }
  if self.reject_hazards {
    for w in report.warnings {
      if w.severity == Hazard {
        issues.push({ code: "hazard", message: w.message })
      }
    }
  }
  for issue in report.validate() {
    issues.push({ code: "report", message: issue.message })
  }
  issues
}
