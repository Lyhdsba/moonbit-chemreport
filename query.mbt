///|
pub struct SectionCount {
  name : String
  count : Int
} derive(Debug, Eq)

///|
pub fn ChemReport::find_input(self : ChemReport, name : String) -> ChemInput? {
  for item in self.inputs {
    if item.name == name {
      break Some(item)
    }
  } nobreak {
    None
  }
}

///|
pub fn ChemReport::find_result(self : ChemReport, name : String) -> ChemResult? {
  for item in self.results {
    if item.name == name {
      break Some(item)
    }
  } nobreak {
    None
  }
}

///|
pub fn ChemReport::warnings_with_severity(
  self : ChemReport,
  severity : Severity,
) -> Array[ReportWarning] {
  let selected : Array[ReportWarning] = []
  for item in self.warnings {
    if item.severity == severity {
      selected.push(item)
    }
  }
  selected
}

///|
pub fn ChemReport::section_counts(self : ChemReport) -> Array[SectionCount] {
  [
    { name: "inputs", count: self.inputs.length() },
    { name: "assumptions", count: self.assumptions.length() },
    { name: "formulas", count: self.formulas.length() },
    { name: "results", count: self.results.length() },
    { name: "warnings", count: self.warnings.length() },
    { name: "sources", count: self.sources.length() },
    { name: "title", count: if self.title == "" { 0 } else { 1 } },
    { name: "summary", count: if self.summary == "" { 0 } else { 1 } },
  ]
}
