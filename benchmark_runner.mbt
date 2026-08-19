///|
pub struct BenchmarkWork {
  id : String
  report : ChemReport
} derive(Debug, Eq)

///|
pub struct BenchmarkSuite {
  name : String
  cases : Array[BenchmarkWork]
} derive(Debug, Eq)

///|
pub struct BenchmarkResult {
  suite : String
  case_count : Int
  iterations : Int
  total_bytes : Int
  publishable_cases : Int
} derive(Debug, Eq)

///|
pub fn benchmark_case(id : String, report : ChemReport) -> BenchmarkWork {
  { id, report }
}

///|
pub fn benchmark_suite(
  name : String,
  cases : Array[BenchmarkWork],
) -> BenchmarkSuite {
  { name, cases }
}

///|
pub fn BenchmarkSuite::run(
  self : BenchmarkSuite,
  iterations : Int,
) -> BenchmarkResult {
  let safe_iterations = if iterations < 0 { 0 } else { iterations }
  let mut bytes = 0
  let mut publishable = 0
  for item in self.cases {
    if item.report.is_publishable() {
      publishable += 1
    }
    for _ in 0..<safe_iterations {
      bytes += item.report.to_json().length() +
        item.report.to_markdown().length()
    }
  }
  {
    suite: self.name,
    case_count: self.cases.length(),
    iterations: safe_iterations,
    total_bytes: bytes,
    publishable_cases: publishable,
  }
}
