///|
pub enum ReportChange {
  TitleChanged
  SummaryChanged
  InputsChanged
  AssumptionsChanged
  FormulasChanged
  ResultsChanged
  WarningsChanged
  SourcesChanged
} derive(Debug, Eq)

///|
pub fn compare_reports(
  left : ChemReport,
  right : ChemReport,
) -> Array[ReportChange] {
  let changes : Array[ReportChange] = []
  if left.title != right.title {
    changes.push(TitleChanged)
  }
  if left.summary != right.summary {
    changes.push(SummaryChanged)
  }
  if left.inputs != right.inputs {
    changes.push(InputsChanged)
  }
  if left.assumptions != right.assumptions {
    changes.push(AssumptionsChanged)
  }
  if left.formulas != right.formulas {
    changes.push(FormulasChanged)
  }
  if left.results != right.results {
    changes.push(ResultsChanged)
  }
  if left.warnings != right.warnings {
    changes.push(WarningsChanged)
  }
  if left.sources != right.sources {
    changes.push(SourcesChanged)
  }
  changes
}

///|
pub fn change_text(change : ReportChange) -> String {
  match change {
    TitleChanged => "title"
    SummaryChanged => "summary"
    InputsChanged => "inputs"
    AssumptionsChanged => "assumptions"
    FormulasChanged => "formulas"
    ResultsChanged => "results"
    WarningsChanged => "warnings"
    SourcesChanged => "sources"
  }
}
