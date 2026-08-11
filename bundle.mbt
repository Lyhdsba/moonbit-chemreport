///|
pub struct ReportBundle {
  title : String
  reports : Array[ChemReport]
} derive(Debug, Eq)

///|
pub struct BundleIssue {
  report_index : Int
  issue : ReportIssue
} derive(Debug, Eq)

///|
pub struct BundleMetrics {
  report_count : Int
  publishable_count : Int
  blocking_count : Int
  input_count : Int
  result_count : Int
  source_count : Int
  warning_count : Int
  hazard_count : Int
} derive(Debug, Eq)

///|
pub fn report_bundle(
  title : String,
  reports : Array[ChemReport],
) -> ReportBundle {
  { title, reports }
}

///|
pub fn ReportBundle::validate(self : ReportBundle) -> Array[BundleIssue] {
  let issues : Array[BundleIssue] = []
  for index, report in self.reports {
    for issue in report.validate() {
      issues.push({ report_index: index, issue })
    }
  }
  issues
}

///|
pub fn ReportBundle::has_blocking_issue(self : ReportBundle) -> Bool {
  for report in self.reports {
    if report.has_blocking_issue() {
      break true
    }
  } nobreak {
    false
  }
}

///|
pub fn ReportBundle::metrics(self : ReportBundle) -> BundleMetrics {
  let report_metrics = [ for report in self.reports => report.metrics() ]
  let publishable_count = report_metrics.fold(init=0, (count, metrics) => {
    if metrics.issue_count == 0 {
      count + 1
    } else {
      count
    }
  })
  let blocking_count = self.reports.fold(init=0, (count, report) => {
    if report.has_blocking_issue() {
      count + 1
    } else {
      count
    }
  })
  {
    report_count: self.reports.length(),
    publishable_count,
    blocking_count,
    input_count: report_metrics.fold(init=0, (count, metrics) => {
      count + metrics.input_count
    }),
    result_count: report_metrics.fold(init=0, (count, metrics) => {
      count + metrics.result_count
    }),
    source_count: report_metrics.fold(init=0, (count, metrics) => {
      count + metrics.source_count
    }),
    warning_count: report_metrics.fold(init=0, (count, metrics) => {
      count + metrics.warning_count
    }),
    hazard_count: report_metrics.fold(init=0, (count, metrics) => {
      count + metrics.hazard_count
    }),
  }
}

///|
pub fn ReportBundle::to_markdown(self : ReportBundle) -> String {
  let metrics = self.metrics()
  let lines : Array[String] = [
    "# \{self.title}",
    "",
    "## Summary",
    "",
    "- Reports: \{metrics.report_count}",
    "- Publishable: \{metrics.publishable_count}",
    "- Reports with blocking issues: \{metrics.blocking_count}",
    "- Results: \{metrics.result_count}",
    "- Sources: \{metrics.source_count}",
    "",
  ]
  for index, report in self.reports {
    lines.push("## Report \{index + 1}: \{report.title}")
    lines.push("")
    lines.push(
      if report.is_publishable() {
        "Status: publishable"
      } else {
        "Status: review required"
      },
    )
    lines.push("")
    lines.push(report.to_markdown())
    lines.push("")
  }
  lines.join("\n")
}

///|
pub fn ReportBundle::to_json(self : ReportBundle) -> String {
  let metrics = self.metrics()
  let metrics_json = "{\{json_field("report_count", "\{metrics.report_count}")}, \{json_field("publishable_count", "\{metrics.publishable_count}")}, \{json_field("blocking_count", "\{metrics.blocking_count}")}, \{json_field("result_count", "\{metrics.result_count}")}, \{json_field("source_count", "\{metrics.source_count}")}, \{json_field("warning_count", "\{metrics.warning_count}")}, \{json_field("hazard_count", "\{metrics.hazard_count}")}}"
  let reports_json = [ for report in self.reports => report.to_json() ]
  "{\{json_field("title", json_string(self.title))}, \{json_field("metrics", metrics_json)}, \{json_field("reports", json_array(reports_json))}}"
}
