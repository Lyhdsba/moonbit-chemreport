///|
pub enum ReportIssueKind {
  MissingTitle
  MissingInput
  MissingResult
  MissingSource
  HazardWarning
  EmptyInputName
  EmptyInputValue
  EmptyResultName
  EmptyResultValue
  EmptySourceCitation
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
  for i in self.inputs {
    if i.name.trim() == "" {
      issues.push(issue(EmptyInputName, "an input name is empty"))
    }
    if i.value.value.trim() == "" {
      issues.push(issue(EmptyInputValue, "an input value is empty"))
    }
  }
  for r in self.results {
    if r.name.trim() == "" {
      issues.push(issue(EmptyResultName, "a result name is empty"))
    }
    if r.value.value.trim() == "" {
      issues.push(issue(EmptyResultValue, "a result value is empty"))
    }
  }
  for s in self.sources {
    if s.citation.trim() == "" {
      issues.push(issue(EmptySourceCitation, "a data source citation is empty"))
    }
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
    if issue.kind
      is (MissingTitle
      | MissingInput
      | MissingResult
      | EmptyInputName
      | EmptyInputValue
      | EmptyResultName
      | EmptyResultValue) {
      break true
    }
  } nobreak {
    false
  }
}

///|
pub fn ChemReport::is_publishable(self : ChemReport) -> Bool {
  self.validate().length() == 0
}
