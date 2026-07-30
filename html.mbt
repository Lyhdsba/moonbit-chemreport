///|
fn html_escape(s : String) -> String {
  s.replace_all(old="&", new="&amp;")
  .replace_all(old="<", new="&lt;")
  .replace_all(old=">", new="&gt;")
  .replace_all(old="\"", new="&quot;")
}

///|
fn tag(name : String, body : String) -> String {
  "<\{name}>\{body}</\{name}>"
}

///|
fn li(body : String) -> String {
  tag("li", body)
}

///|
fn html_section(title : String, items : Array[String]) -> String {
  tag("section", tag("h2", html_escape(title)) + tag("ul", items.join("")))
}

///|
fn input_html(i : ChemInput) -> String {
  let suffix = if i.note == "" { "" } else { " - \{html_escape(i.note)}" }
  li("<strong>\{html_escape(i.name)}</strong>: \{html_escape(quantity_text(i.value))}\{suffix}")
}

///|
fn assumption_html(a : Assumption) -> String {
  li("<strong>\{html_escape(a.title)}</strong>: \{html_escape(a.detail)}")
}

///|
fn formula_html(f : Formula) -> String {
  let vars = if f.variables.length() == 0 {
    ""
  } else {
    " <small>\{html_escape(f.variables.join(", "))}</small>"
  }
  li("<strong>\{html_escape(f.name)}</strong>: <code>\{html_escape(f.expression)}</code>\{vars}")
}

///|
fn result_html(r : ChemResult) -> String {
  let suffix = if r.procedure == "" { "" } else { " - \{html_escape(r.procedure)}" }
  li("<strong>\{html_escape(r.name)}</strong>: \{html_escape(quantity_text(r.value))}\{suffix}")
}

///|
fn warning_html(w : ReportWarning) -> String {
  let sev = severity_text(w.severity)
  li("<strong data-severity=\"\{sev}\">\{sev}</strong>: \{html_escape(w.message)}")
}

///|
fn source_html(s : DataSource) -> String {
  let citation = html_escape(s.citation)
  let body = if s.url == "" {
    citation
  } else {
    "\{citation} <a href=\"\{html_escape(s.url)}\">\{html_escape(s.url)}</a>"
  }
  li("<strong>\{html_escape(s.label)}</strong>: \{body}")
}

///|
pub fn ChemReport::to_html_fragment(self : ChemReport) -> String {
  let parts : Array[String] = [
    tag("h1", html_escape(self.title)),
    if self.summary == "" { "" } else { tag("p", html_escape(self.summary)) },
    html_section("Inputs", [ for i in self.inputs => input_html(i) ]),
    html_section("Assumptions", [ for a in self.assumptions => assumption_html(a) ]),
    html_section("Formulas", [ for f in self.formulas => formula_html(f) ]),
    html_section("Results", [ for r in self.results => result_html(r) ]),
    html_section("Warnings", [ for w in self.warnings => warning_html(w) ]),
    html_section("Data Sources", [ for s in self.sources => source_html(s) ]),
  ]
  parts.join("")
}

///|
pub fn ChemReport::to_html_document(self : ChemReport) -> String {
  "<!doctype html><html><head><meta charset=\"utf-8\"><title>\{html_escape(self.title)}</title></head><body>\{self.to_html_fragment()}</body></html>"
}
