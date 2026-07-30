///|
pub enum ReportIssueKind {
  MissingTitle
  MissingInput
  MissingResult
  MissingSource
  HazardWarning
} derive(Debug, Eq)

///|
pub struct ReportIssue {
  kind : ReportIssueKind
  message : String
} derive(Debug, Eq)

///|
pub fn issue(kind : ReportIssueKind, message : String) -> ReportIssue {
  { kind, message }
}

///|
pub fn ChemReport::validate(self : ChemReport) -> Array[ReportIssue] {
  let issues : Array[ReportIssue] = []
  if self.title.trim() == "" {
    issues.push(issue(MissingTitle, "report title is empty"))
  }
  if self.inputs.length() == 0 {
    issues.push(issue(MissingInput, "no calculation inputs were recorded"))
  }
  if self.results.length() == 0 {
    issues.push(issue(MissingResult, "no calculation results were recorded"))
  }
  if self.sources.length() == 0 {
    issues.push(issue(MissingSource, "no data source was recorded"))
  }
  for w in self.warnings {
    if w.severity == Hazard {
      issues.push(issue(HazardWarning, w.message))
    }
  }
  issues
}

///|
pub fn ChemReport::has_blocking_issue(self : ChemReport) -> Bool {
  for issue in self.validate() {
    if issue.kind is (MissingTitle | MissingInput | MissingResult) {
      break true
    }
  } nobreak {
    false
  }
}
