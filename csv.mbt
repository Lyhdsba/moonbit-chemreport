///|
fn csv_field(value : String) -> String {
  let escaped = value.replace_all(old="\"", new="\"\"")
  if escaped.contains(",") ||
    escaped.contains("\n") ||
    escaped.contains("\r") ||
    escaped.contains("\"") {
    "\"\{escaped}\""
  } else {
    escaped
  }
}

///|
pub fn report_summary_csv(reports : Array[ChemReport]) -> String {
  let lines : Array[String] = [
    "title,inputs,results,warnings,sources,publishable,first_input_note",
  ]
  for report in reports {
    let m = report.metrics()
    let note = if report.inputs.length() == 0 {
      ""
    } else {
      report.inputs[0].note
    }
    lines.push(
      [
        csv_field(report.title),
        "\{m.input_count}",
        "\{m.result_count}",
        "\{m.warning_count}",
        "\{m.source_count}",
        if report.is_publishable() {
          "true"
        } else {
          "false"
        },
        csv_field(note),
      ].join(","),
    )
  }
  lines.join("\n")
}

///|
pub fn reports_jsonl(reports : Array[ChemReport]) -> String {
  let lines : Array[String] = []
  for report in reports {
    lines.push(report.to_json())
  }
  lines.join("\n")
}
