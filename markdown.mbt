///|
fn severity_text(severity : Severity) -> String {
  match severity {
    Info => "info"
    Caution => "caution"
    Hazard => "hazard"
  }
}

///|
fn quantity_text(q : Quantity) -> String {
  if q.unit == "" {
    q.value
  } else {
    "\{q.value} \{q.unit}"
  }
}

///|
fn bullet(line : String) -> String {
  "- \{line}"
}

///|
fn section(title : String, lines : Array[String]) -> Array[String] {
  let out : Array[String] = ["", "## \{title}", ""]
  for line in lines {
    out.push(line)
  }
  out
}

///|
fn input_markdown(i : ChemInput) -> String {
  let suffix = if i.note == "" { "" } else { " - \{i.note}" }
  bullet("**\{i.name}**: \{quantity_text(i.value)}\{suffix}")
}

///|
fn assumption_markdown(a : Assumption) -> String {
  bullet("**\{a.title}**: \{a.detail}")
}

///|
fn formula_markdown(f : Formula) -> String {
  let vars = if f.variables.length() == 0 {
    ""
  } else {
    " (`\{f.variables.join("`, `")}`)"
  }
  bullet("**\{f.name}**: `\{f.expression}`\{vars}")
}

///|
fn result_markdown(r : ChemResult) -> String {
  let suffix = if r.procedure == "" { "" } else { " - \{r.procedure}" }
  bullet("**\{r.name}**: \{quantity_text(r.value)}\{suffix}")
}

///|
fn warning_markdown(w : ReportWarning) -> String {
  bullet("**\{severity_text(w.severity)}**: \{w.message}")
}

///|
fn source_markdown(s : DataSource) -> String {
  let suffix = if s.url == "" { "" } else { " (\{s.url})" }
  bullet("**\{s.label}**: \{s.citation}\{suffix}")
}

///|
fn push_all(lines : Array[String], more : Array[String]) -> Unit {
  for line in more {
    lines.push(line)
  }
}

///|
pub fn ChemReport::to_markdown(self : ChemReport) -> String {
  let lines : Array[String] = ["# \{self.title}", ""]
  if self.summary != "" {
    lines.push(self.summary)
    lines.push("")
  }
  push_all(
    lines,
    section("Inputs", [ for i in self.inputs => input_markdown(i) ]),
  )
  push_all(
    lines,
    section(
      "Assumptions",
      [
        for a in self.assumptions => assumption_markdown(a)
      ],
    ),
  )
  push_all(
    lines,
    section("Formulas", [ for f in self.formulas => formula_markdown(f) ]),
  )
  push_all(
    lines,
    section("Results", [ for r in self.results => result_markdown(r) ]),
  )
  push_all(
    lines,
    section("Warnings", [ for w in self.warnings => warning_markdown(w) ]),
  )
  push_all(
    lines,
    section("Data Sources", [ for s in self.sources => source_markdown(s) ]),
  )
  lines.join("\n")
}
