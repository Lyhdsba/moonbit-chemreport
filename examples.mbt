///|
pub fn sample_mass_balance_report() -> ChemReport {
  report(
    "CSTR A-101 Mass Balance",
    summary="A stable report record for a continuous stirred tank reactor inlet/outlet balance.",
    inputs=[
      input("feed flow", quantity("100.0", "kmol/h"), note="measured at battery limit"),
      input("reactant A mole fraction", quantity("0.42", "mol/mol"), note="gas chromatograph average"),
      input("conversion", quantity("85.0", "%"), note="single-pass target"),
    ],
    assumptions=[
      assumption("steady state", "accumulation term is zero during the reporting window"),
      assumption("single reaction", "A -> B is treated as the dominant stoichiometric path"),
    ],
    formulas=[
      formula("A in", "F_A,in = F_feed * z_A", ["F_feed", "z_A"]),
      formula("A consumed", "F_A,rxn = F_A,in * X_A", ["F_A,in", "X_A"]),
    ],
    results=[
      result("A feed", quantity("42.0", "kmol/h"), procedure="100.0 * 0.42"),
      result("A consumed", quantity("35.7", "kmol/h"), procedure="42.0 * 0.85"),
      result("A outlet", quantity("6.3", "kmol/h"), procedure="42.0 - 35.7"),
    ],
    warnings=[
      info("rounded to one decimal place for operator-facing output"),
      caution("conversion target should be reconciled with heat-duty limits before scale-up"),
    ],
    sources=[
      source("process historian", "A-101 inlet flow and composition export, 2026-07-30"),
      source("design basis", "MoonBit Hackathon demonstration dataset"),
    ],
  )
}
