///|
fn template_source(label : String) -> DataSource {
  source("template", "MoonBit chemreport engineering template: \{label}")
}

///|
pub fn heat_exchanger_report() -> ChemReport {
  report(
    "Heat Exchanger Duty Summary",
    summary="Sensible-duty report for a single-phase exchanger.",
    inputs=[
      input("mass flow", quantity("2.0", "kg/s")),
      input("heat capacity", quantity("4.18", "kJ/(kg K)")),
      input("temperature rise", quantity("25", "K")),
    ],
    assumptions=[assumption("single phase", "no latent heat is represented")],
    formulas=[
      formula("duty", "Q = m_dot * Cp * DeltaT", ["m_dot", "Cp", "DeltaT"]),
    ],
    results=[
      result("duty", quantity("209.0", "kW"), procedure="2.0 * 4.18 * 25"),
    ],
    sources=[template_source("heat exchanger")],
  )
}

///|
pub fn pump_power_report() -> ChemReport {
  report(
    "Pump Hydraulic Power Summary",
    summary="Hydraulic power before pump efficiency correction.",
    inputs=[
      input("density", quantity("998", "kg/m3")),
      input("flow", quantity("0.01", "m3/s")),
      input("head", quantity("30", "m")),
    ],
    assumptions=[assumption("incompressible liquid", "density is fixed")],
    formulas=[
      formula("hydraulic power", "P = rho * g * Q * H", ["rho", "g", "Q", "H"]),
    ],
    results=[
      result(
        "hydraulic power",
        quantity("2.934", "kW"),
        procedure="998 * 9.81 * 0.01 * 30",
      ),
    ],
    sources=[template_source("pump power")],
  )
}

///|
pub fn flash_split_report() -> ChemReport {
  report(
    "Flash Split Summary",
    summary="Two-phase split record with component-free recovery figures.",
    inputs=[
      input("feed", quantity("100", "kmol/h")),
      input("vapor fraction", quantity("0.35", "1")),
      input("liquid fraction", quantity("0.65", "1")),
    ],
    assumptions=[assumption("single feed", "no side draw is recorded")],
    formulas=[formula("split", "V = beta F; L = (1-beta) F", ["beta", "F"])],
    results=[
      result("vapor flow", quantity("35", "kmol/h"), procedure="0.35 * 100"),
      result("liquid flow", quantity("65", "kmol/h"), procedure="0.65 * 100"),
    ],
    sources=[template_source("flash split")],
  )
}

///|
pub fn stoichiometric_yield_report() -> ChemReport {
  report(
    "Stoichiometric Yield Summary",
    summary="Single-reaction yield record with explicit limiting-feed basis.",
    inputs=[
      input("limiting reactant", quantity("10", "mol")),
      input("theoretical product", quantity("8", "mol")),
      input("actual product", quantity("7.2", "mol")),
    ],
    assumptions=[
      assumption(
        "single reaction", "selectivity losses are represented by yield only",
      ),
    ],
    formulas=[
      formula("yield", "Y = actual / theoretical", ["actual", "theoretical"]),
    ],
    results=[result("yield", quantity("90", "%"), procedure="7.2 / 8 * 100")],
    warnings=[
      caution(
        "selectivity and impurity profile require a reaction-specific report",
      ),
    ],
    sources=[template_source("stoichiometric yield")],
  )
}
