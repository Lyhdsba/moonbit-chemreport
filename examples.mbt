///|
pub fn sample_mass_balance_report() -> ChemReport {
  report(
    "CSTR A-101 Mass Balance",
    summary="A stable report record for a continuous stirred tank reactor inlet/outlet balance.",
    inputs=[
      input(
        "feed flow",
        quantity("100.0", "kmol/h"),
        note="measured at battery limit",
      ),
      input(
        "reactant A mole fraction",
        quantity("0.42", "mol/mol"),
        note="gas chromatograph average",
      ),
      input("conversion", quantity("85.0", "%"), note="single-pass target"),
    ],
    assumptions=[
      assumption(
        "steady state", "accumulation term is zero during the reporting window",
      ),
      assumption(
        "single reaction", "A -> B is treated as the dominant stoichiometric path",
      ),
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
      caution(
        "conversion target should be reconciled with heat-duty limits before scale-up",
      ),
    ],
    sources=[
      source(
        "process historian", "A-101 inlet flow and composition export, 2026-07-30",
      ),
      source("design basis", "MoonBit Hackathon demonstration dataset"),
    ],
  )
}

///|
pub fn sample_energy_balance_report() -> ChemReport {
  report(
    "Water Heater E-201 Energy Balance",
    summary="A worked energy-balance summary for heating a liquid water stream.",
    inputs=[
      input("water mass flow", quantity("1.00", "kg/s"), note="steady feed"),
      input("inlet temperature", quantity("298.15", "K"), note="25 C reference"),
      input("outlet temperature", quantity("353.15", "K"), note="80 C target"),
      input(
        "heat capacity",
        quantity("4.18", "kJ/(kg K)"),
        note="constant-property approximation",
      ),
    ],
    assumptions=[
      assumption(
        "negligible heat loss", "the worked example reports duty at the heater boundary",
      ),
      assumption(
        "constant heat capacity", "liquid heat capacity is held constant across the temperature range",
      ),
    ],
    formulas=[
      formula("temperature rise", "Delta T = T_out - T_in", ["T_out", "T_in"]),
      formula("heater duty", "Q = m_dot * Cp * Delta T", [
        "m_dot", "Cp", "Delta T",
      ]),
    ],
    results=[
      result(
        "temperature rise",
        quantity("55.00", "K"),
        procedure="353.15 - 298.15",
      ),
      result(
        "sensible duty",
        quantity("229.90", "kW"),
        procedure="1.00 * 4.18 * 55.00",
      ),
      result(
        "duty basis",
        quantity("229.90", "kJ/s"),
        procedure="same numerical value as kW",
      ),
    ],
    warnings=[
      info(
        "the numerical values are a reproducible worked example, not equipment sizing advice",
      ),
      caution(
        "include heat loss, phase change, and pressure effects before using this in design",
      ),
    ],
    sources=[
      source(
        "worked example basis", "MoonBit chemreport energy-balance benchmark, fixed values",
      ),
      source(
        "property context",
        "NIST Chemistry WebBook SRD 69, Water",
        url="https://webbook.nist.gov/cgi/cbook.cgi?ID=C7732185",
      ),
    ],
  )
}

///|
pub fn sample_distillation_report() -> ChemReport {
  report(
    "Binary Distillation Material Balance",
    summary="A reproducible binary distillation split summary for a total material balance.",
    inputs=[
      input(
        "feed flow",
        quantity("100.0", "kmol/h"),
        note="constant molar overflow example",
      ),
      input("feed light-key fraction", quantity("0.40", "mol/mol")),
      input("distillate light-key fraction", quantity("0.90", "mol/mol")),
      input("bottoms light-key fraction", quantity("0.05", "mol/mol")),
    ],
    assumptions=[
      assumption(
        "two product streams", "only distillate and bottoms are included in the balance",
      ),
      assumption(
        "steady state", "the column holdup does not accumulate during the reporting interval",
      ),
    ],
    formulas=[
      formula("overall balance", "F = D + B", ["F", "D", "B"]),
      formula("light-key balance", "F z_F = D x_D + B x_B", [
        "F", "z_F", "D", "x_D", "B", "x_B",
      ]),
    ],
    results=[
      result(
        "distillate flow",
        quantity("41.1765", "kmol/h"),
        procedure="100.0 * (0.40 - 0.05) / (0.90 - 0.05)",
      ),
      result(
        "bottoms flow",
        quantity("58.8235", "kmol/h"),
        procedure="100.0 - 41.1765",
      ),
      result(
        "light-key closure",
        quantity("40.0000", "kmol/h"),
        procedure="41.1765 * 0.90 + 58.8235 * 0.05",
      ),
    ],
    warnings=[
      caution(
        "relative volatility, tray efficiency, reflux, and energy duties are outside this material-balance summary",
      ),
    ],
    sources=[
      source(
        "worked example basis", "MoonBit chemreport distillation benchmark, fixed values",
      ),
    ],
  )
}

///|
pub fn sample_reactor_conversion_report() -> ChemReport {
  report(
    "PFR A-301 Conversion Summary",
    summary="A compact reactor-conversion report that can be attached to a downstream calculation.",
    inputs=[
      input(
        "reactant A feed",
        quantity("50.0", "kmol/h"),
        note="single-pass inlet",
      ),
      input(
        "conversion",
        quantity("72.0", "%"),
        note="reported operating point",
      ),
      input("stoichiometric ratio", quantity("1.00", "mol/mol"), note="A -> B"),
    ],
    assumptions=[
      assumption(
        "single reaction", "A -> B is the only reaction represented in this summary",
      ),
      assumption(
        "steady state", "the reactor inventory is constant over the reporting window",
      ),
    ],
    formulas=[
      formula("A consumed", "F_A,rxn = F_A,in * X_A", ["F_A,in", "X_A"]),
      formula("A outlet", "F_A,out = F_A,in - F_A,rxn", ["F_A,in", "F_A,rxn"]),
    ],
    results=[
      result("A consumed", quantity("36.0", "kmol/h"), procedure="50.0 * 0.72"),
      result("A outlet", quantity("14.0", "kmol/h"), procedure="50.0 - 36.0"),
      result(
        "B production",
        quantity("36.0", "kmol/h"),
        procedure="1.00 * 36.0",
      ),
    ],
    warnings=[
      caution(
        "kinetics, heat release, residence time, and selectivity need a reactor-specific adapter",
      ),
    ],
    sources=[
      source(
        "worked example basis", "MoonBit chemreport reactor benchmark, fixed values",
      ),
    ],
  )
}
