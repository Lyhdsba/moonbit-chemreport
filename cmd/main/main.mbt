///|
fn main {
  println(@chemreport.sample_mass_balance_report().to_markdown())
  println("\n\n--- NIST benchmark bundle ---\n")
  println(@chemreport.nist_benchmark_bundle().to_markdown())
}
