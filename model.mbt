///|
pub enum Severity {
  Info
  Caution
  Hazard
} derive(Debug, Eq)

///|
pub struct Quantity {
  value : String
  unit : String
} derive(Debug, Eq)

///|
pub struct ChemInput {
  name : String
  value : Quantity
  note : String
} derive(Debug, Eq)

///|
pub struct Assumption {
  title : String
  detail : String
} derive(Debug, Eq)

///|
pub struct Formula {
  name : String
  expression : String
  variables : Array[String]
} derive(Debug, Eq)

///|
pub struct ChemResult {
  name : String
  value : Quantity
  procedure : String
} derive(Debug, Eq)

///|
pub struct ReportWarning {
  severity : Severity
  message : String
} derive(Debug, Eq)

///|
pub struct DataSource {
  label : String
  citation : String
  url : String
} derive(Debug, Eq)

///|
pub struct ChemReport {
  title : String
  summary : String
  inputs : Array[ChemInput]
  assumptions : Array[Assumption]
  formulas : Array[Formula]
  results : Array[ChemResult]
  warnings : Array[ReportWarning]
  sources : Array[DataSource]
} derive(Debug, Eq)

///|
pub fn quantity(value : String, unit : String) -> Quantity {
  { value, unit }
}

///|
pub fn input(name : String, value : Quantity, note~ : String = "") -> ChemInput {
  { name, value, note }
}

///|
pub fn assumption(title : String, detail : String) -> Assumption {
  { title, detail }
}

///|
pub fn formula(name : String, expression : String, variables : Array[String]) -> Formula {
  { name, expression, variables }
}

///|
pub fn result(name : String, value : Quantity, procedure~ : String = "") -> ChemResult {
  { name, value, procedure }
}

///|
pub fn warning(severity : Severity, message : String) -> ReportWarning {
  { severity, message }
}

///|
pub fn info(message : String) -> ReportWarning {
  warning(Info, message)
}

///|
pub fn caution(message : String) -> ReportWarning {
  warning(Caution, message)
}

///|
pub fn hazard(message : String) -> ReportWarning {
  warning(Hazard, message)
}

///|
pub fn source(label : String, citation : String, url~ : String = "") -> DataSource {
  { label, citation, url }
}

///|
pub fn report(
  title : String,
  summary~ : String = "",
  inputs~ : Array[ChemInput] = [],
  assumptions~ : Array[Assumption] = [],
  formulas~ : Array[Formula] = [],
  results~ : Array[ChemResult] = [],
  warnings~ : Array[ReportWarning] = [],
  sources~ : Array[DataSource] = [],
) -> ChemReport {
  { title, summary, inputs, assumptions, formulas, results, warnings, sources }
}
