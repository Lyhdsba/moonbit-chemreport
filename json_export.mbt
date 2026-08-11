///|
fn json_escape(s : String) -> String {
  s
  .replace_all(old="\\", new="\\\\")
  .replace_all(old="\"", new="\\\"")
  .replace_all(old="\n", new="\\n")
  .replace_all(old="\r", new="\\r")
  .replace_all(old="\t", new="\\t")
  .replace_all(old="\b", new="\\b")
  .replace_all(old="\f", new="\\f")
}

///|
fn json_string(s : String) -> String {
  "\"\{json_escape(s)}\""
}

///|
fn json_field(name : String, value : String) -> String {
  "\{json_string(name)}: \{value}"
}

///|
fn json_array(items : Array[String]) -> String {
  "[\{items.join(", ")}]"
}

///|
fn quantity_json(q : Quantity) -> String {
  "{\{json_field("value", json_string(q.value))}, \{json_field("unit", json_string(q.unit))}}"
}

///|
fn input_json(i : ChemInput) -> String {
  "{\{json_field("name", json_string(i.name))}, \{json_field("value", quantity_json(i.value))}, \{json_field("note", json_string(i.note))}}"
}

///|
fn assumption_json(a : Assumption) -> String {
  "{\{json_field("title", json_string(a.title))}, \{json_field("detail", json_string(a.detail))}}"
}

///|
fn formula_json(f : Formula) -> String {
  let vars = json_array([ for v in f.variables => json_string(v) ])
  "{\{json_field("name", json_string(f.name))}, \{json_field("expression", json_string(f.expression))}, \{json_field("variables", vars)}}"
}

///|
fn result_json(r : ChemResult) -> String {
  "{\{json_field("name", json_string(r.name))}, \{json_field("value", quantity_json(r.value))}, \{json_field("procedure", json_string(r.procedure))}}"
}

///|
fn warning_json(w : ReportWarning) -> String {
  "{\{json_field("severity", json_string(severity_text(w.severity)))}, \{json_field("message", json_string(w.message))}}"
}

///|
fn source_json(s : DataSource) -> String {
  "{\{json_field("label", json_string(s.label))}, \{json_field("citation", json_string(s.citation))}, \{json_field("url", json_string(s.url))}}"
}

///|
pub fn ChemReport::to_json(self : ChemReport) -> String {
  let fields : Array[String] = [
    json_field("title", json_string(self.title)),
    json_field("summary", json_string(self.summary)),
    json_field("inputs", json_array([ for i in self.inputs => input_json(i) ])),
    json_field(
      "assumptions",
      json_array([ for a in self.assumptions => assumption_json(a) ]),
    ),
    json_field(
      "formulas",
      json_array([ for f in self.formulas => formula_json(f) ]),
    ),
    json_field(
      "results",
      json_array([ for r in self.results => result_json(r) ]),
    ),
    json_field(
      "warnings",
      json_array([ for w in self.warnings => warning_json(w) ]),
    ),
    json_field(
      "sources",
      json_array([ for s in self.sources => source_json(s) ]),
    ),
  ]
  "{\{fields.join(", ")}}"
}
