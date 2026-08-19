///|
pub struct MetricContract {
  metric_id : String
  required_unit : String
  requires_formula : Bool
  requires_source : Bool
  review_question : String
} derive(Debug, Eq)

///|
fn metric_contract(
  metric_id : String,
  required_unit : String,
  requires_formula : Bool,
  requires_source : Bool,
  review_question : String,
) -> MetricContract {
  {
    metric_id,
    required_unit,
    requires_formula,
    requires_source,
    review_question,
  }
}

///|
pub fn engineering_metric_contracts() -> Array[MetricContract] {
  [
    metric_contract(
      "mass-balance-0001", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0001?",
    ),
    metric_contract(
      "component-balance-0002", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0002?",
    ),
    metric_contract(
      "energy-balance-0003", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0003?",
    ),
    metric_contract(
      "sensible-duty-0004", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0004?",
    ),
    metric_contract(
      "latent-duty-0005", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0005?",
    ),
    metric_contract(
      "heat-loss-0006", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0006?",
    ),
    metric_contract(
      "lmtd-0007", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0007?",
    ),
    metric_contract(
      "ntu-0008", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0008?",
    ),
    metric_contract(
      "reynolds-0009", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0009?",
    ),
    metric_contract(
      "prandtl-0010", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0010?",
    ),
    metric_contract(
      "nusselt-0011", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0011?",
    ),
    metric_contract(
      "pressure-drop-0012", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0012?",
    ),
    metric_contract(
      "pump-head-0013", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0013?",
    ),
    metric_contract(
      "pump-power-0014", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0014?",
    ),
    metric_contract(
      "compressor-power-0015", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0015?",
    ),
    metric_contract(
      "gas-density-0016", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0016?",
    ),
    metric_contract(
      "vapor-fraction-0017", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0017?",
    ),
    metric_contract(
      "flash-vapor-0018", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0018?",
    ),
    metric_contract(
      "flash-liquid-0019", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0019?",
    ),
    metric_contract(
      "distillate-flow-0020", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0020?",
    ),
    metric_contract(
      "bottoms-flow-0021", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0021?",
    ),
    metric_contract(
      "reflux-ratio-0022", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0022?",
    ),
    metric_contract(
      "relative-volatility-0023", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0023?",
    ),
    metric_contract(
      "tray-efficiency-0024", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0024?",
    ),
    metric_contract(
      "residence-time-0025", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0025?",
    ),
    metric_contract(
      "cstr-conversion-0026", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0026?",
    ),
    metric_contract(
      "pfr-conversion-0027", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0027?",
    ),
    metric_contract(
      "reaction-rate-0028", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0028?",
    ),
    metric_contract(
      "arrhenius-0029", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0029?",
    ),
    metric_contract(
      "selectivity-0030", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0030?",
    ),
    metric_contract(
      "yield-0031", "explicit", true, true, "Does the report state the basis, units, and source for yield-0031?",
    ),
    metric_contract(
      "conversion-closure-0032", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0032?",
    ),
    metric_contract(
      "mixing-temperature-0033", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0033?",
    ),
    metric_contract(
      "ph-0034", "explicit", true, true, "Does the report state the basis, units, and source for ph-0034?",
    ),
    metric_contract(
      "henry-law-0035", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0035?",
    ),
    metric_contract(
      "absorption-factor-0036", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0036?",
    ),
    metric_contract(
      "stripping-factor-0037", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0037?",
    ),
    metric_contract(
      "drying-rate-0038", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0038?",
    ),
    metric_contract(
      "filtration-rate-0039", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0039?",
    ),
    metric_contract(
      "sedimentation-0040", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0040?",
    ),
    metric_contract(
      "particle-reynolds-0041", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0041?",
    ),
    metric_contract(
      "porosity-0042", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0042?",
    ),
    metric_contract(
      "darcy-0043", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0043?",
    ),
    metric_contract(
      "moisture-content-0044", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0044?",
    ),
    metric_contract(
      "concentration-0045", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0045?",
    ),
    metric_contract(
      "molarity-0046", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0046?",
    ),
    metric_contract(
      "mass-fraction-0047", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0047?",
    ),
    metric_contract(
      "mole-fraction-0048", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0048?",
    ),
    metric_contract(
      "uncertainty-0049", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0049?",
    ),
    metric_contract(
      "mass-balance-0050", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0050?",
    ),
    metric_contract(
      "component-balance-0051", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0051?",
    ),
    metric_contract(
      "energy-balance-0052", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0052?",
    ),
    metric_contract(
      "sensible-duty-0053", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0053?",
    ),
    metric_contract(
      "latent-duty-0054", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0054?",
    ),
    metric_contract(
      "heat-loss-0055", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0055?",
    ),
    metric_contract(
      "lmtd-0056", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0056?",
    ),
    metric_contract(
      "ntu-0057", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0057?",
    ),
    metric_contract(
      "reynolds-0058", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0058?",
    ),
    metric_contract(
      "prandtl-0059", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0059?",
    ),
    metric_contract(
      "nusselt-0060", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0060?",
    ),
    metric_contract(
      "pressure-drop-0061", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0061?",
    ),
    metric_contract(
      "pump-head-0062", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0062?",
    ),
    metric_contract(
      "pump-power-0063", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0063?",
    ),
    metric_contract(
      "compressor-power-0064", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0064?",
    ),
    metric_contract(
      "gas-density-0065", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0065?",
    ),
    metric_contract(
      "vapor-fraction-0066", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0066?",
    ),
    metric_contract(
      "flash-vapor-0067", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0067?",
    ),
    metric_contract(
      "flash-liquid-0068", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0068?",
    ),
    metric_contract(
      "distillate-flow-0069", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0069?",
    ),
    metric_contract(
      "bottoms-flow-0070", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0070?",
    ),
    metric_contract(
      "reflux-ratio-0071", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0071?",
    ),
    metric_contract(
      "relative-volatility-0072", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0072?",
    ),
    metric_contract(
      "tray-efficiency-0073", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0073?",
    ),
    metric_contract(
      "residence-time-0074", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0074?",
    ),
    metric_contract(
      "cstr-conversion-0075", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0075?",
    ),
    metric_contract(
      "pfr-conversion-0076", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0076?",
    ),
    metric_contract(
      "reaction-rate-0077", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0077?",
    ),
    metric_contract(
      "arrhenius-0078", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0078?",
    ),
    metric_contract(
      "selectivity-0079", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0079?",
    ),
    metric_contract(
      "yield-0080", "explicit", true, true, "Does the report state the basis, units, and source for yield-0080?",
    ),
    metric_contract(
      "conversion-closure-0081", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0081?",
    ),
    metric_contract(
      "mixing-temperature-0082", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0082?",
    ),
    metric_contract(
      "ph-0083", "explicit", true, true, "Does the report state the basis, units, and source for ph-0083?",
    ),
    metric_contract(
      "henry-law-0084", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0084?",
    ),
    metric_contract(
      "absorption-factor-0085", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0085?",
    ),
    metric_contract(
      "stripping-factor-0086", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0086?",
    ),
    metric_contract(
      "drying-rate-0087", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0087?",
    ),
    metric_contract(
      "filtration-rate-0088", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0088?",
    ),
    metric_contract(
      "sedimentation-0089", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0089?",
    ),
    metric_contract(
      "particle-reynolds-0090", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0090?",
    ),
    metric_contract(
      "porosity-0091", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0091?",
    ),
    metric_contract(
      "darcy-0092", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0092?",
    ),
    metric_contract(
      "moisture-content-0093", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0093?",
    ),
    metric_contract(
      "concentration-0094", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0094?",
    ),
    metric_contract(
      "molarity-0095", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0095?",
    ),
    metric_contract(
      "mass-fraction-0096", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0096?",
    ),
    metric_contract(
      "mole-fraction-0097", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0097?",
    ),
    metric_contract(
      "uncertainty-0098", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0098?",
    ),
    metric_contract(
      "mass-balance-0099", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0099?",
    ),
    metric_contract(
      "component-balance-0100", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0100?",
    ),
    metric_contract(
      "energy-balance-0101", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0101?",
    ),
    metric_contract(
      "sensible-duty-0102", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0102?",
    ),
    metric_contract(
      "latent-duty-0103", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0103?",
    ),
    metric_contract(
      "heat-loss-0104", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0104?",
    ),
    metric_contract(
      "lmtd-0105", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0105?",
    ),
    metric_contract(
      "ntu-0106", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0106?",
    ),
    metric_contract(
      "reynolds-0107", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0107?",
    ),
    metric_contract(
      "prandtl-0108", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0108?",
    ),
    metric_contract(
      "nusselt-0109", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0109?",
    ),
    metric_contract(
      "pressure-drop-0110", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0110?",
    ),
    metric_contract(
      "pump-head-0111", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0111?",
    ),
    metric_contract(
      "pump-power-0112", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0112?",
    ),
    metric_contract(
      "compressor-power-0113", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0113?",
    ),
    metric_contract(
      "gas-density-0114", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0114?",
    ),
    metric_contract(
      "vapor-fraction-0115", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0115?",
    ),
    metric_contract(
      "flash-vapor-0116", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0116?",
    ),
    metric_contract(
      "flash-liquid-0117", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0117?",
    ),
    metric_contract(
      "distillate-flow-0118", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0118?",
    ),
    metric_contract(
      "bottoms-flow-0119", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0119?",
    ),
    metric_contract(
      "reflux-ratio-0120", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0120?",
    ),
    metric_contract(
      "relative-volatility-0121", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0121?",
    ),
    metric_contract(
      "tray-efficiency-0122", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0122?",
    ),
    metric_contract(
      "residence-time-0123", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0123?",
    ),
    metric_contract(
      "cstr-conversion-0124", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0124?",
    ),
    metric_contract(
      "pfr-conversion-0125", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0125?",
    ),
    metric_contract(
      "reaction-rate-0126", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0126?",
    ),
    metric_contract(
      "arrhenius-0127", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0127?",
    ),
    metric_contract(
      "selectivity-0128", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0128?",
    ),
    metric_contract(
      "yield-0129", "explicit", true, true, "Does the report state the basis, units, and source for yield-0129?",
    ),
    metric_contract(
      "conversion-closure-0130", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0130?",
    ),
    metric_contract(
      "mixing-temperature-0131", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0131?",
    ),
    metric_contract(
      "ph-0132", "explicit", true, true, "Does the report state the basis, units, and source for ph-0132?",
    ),
    metric_contract(
      "henry-law-0133", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0133?",
    ),
    metric_contract(
      "absorption-factor-0134", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0134?",
    ),
    metric_contract(
      "stripping-factor-0135", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0135?",
    ),
    metric_contract(
      "drying-rate-0136", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0136?",
    ),
    metric_contract(
      "filtration-rate-0137", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0137?",
    ),
    metric_contract(
      "sedimentation-0138", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0138?",
    ),
    metric_contract(
      "particle-reynolds-0139", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0139?",
    ),
    metric_contract(
      "porosity-0140", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0140?",
    ),
    metric_contract(
      "darcy-0141", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0141?",
    ),
    metric_contract(
      "moisture-content-0142", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0142?",
    ),
    metric_contract(
      "concentration-0143", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0143?",
    ),
    metric_contract(
      "molarity-0144", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0144?",
    ),
    metric_contract(
      "mass-fraction-0145", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0145?",
    ),
    metric_contract(
      "mole-fraction-0146", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0146?",
    ),
    metric_contract(
      "uncertainty-0147", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0147?",
    ),
    metric_contract(
      "mass-balance-0148", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0148?",
    ),
    metric_contract(
      "component-balance-0149", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0149?",
    ),
    metric_contract(
      "energy-balance-0150", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0150?",
    ),
    metric_contract(
      "sensible-duty-0151", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0151?",
    ),
    metric_contract(
      "latent-duty-0152", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0152?",
    ),
    metric_contract(
      "heat-loss-0153", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0153?",
    ),
    metric_contract(
      "lmtd-0154", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0154?",
    ),
    metric_contract(
      "ntu-0155", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0155?",
    ),
    metric_contract(
      "reynolds-0156", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0156?",
    ),
    metric_contract(
      "prandtl-0157", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0157?",
    ),
    metric_contract(
      "nusselt-0158", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0158?",
    ),
    metric_contract(
      "pressure-drop-0159", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0159?",
    ),
    metric_contract(
      "pump-head-0160", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0160?",
    ),
    metric_contract(
      "pump-power-0161", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0161?",
    ),
    metric_contract(
      "compressor-power-0162", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0162?",
    ),
    metric_contract(
      "gas-density-0163", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0163?",
    ),
    metric_contract(
      "vapor-fraction-0164", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0164?",
    ),
    metric_contract(
      "flash-vapor-0165", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0165?",
    ),
    metric_contract(
      "flash-liquid-0166", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0166?",
    ),
    metric_contract(
      "distillate-flow-0167", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0167?",
    ),
    metric_contract(
      "bottoms-flow-0168", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0168?",
    ),
    metric_contract(
      "reflux-ratio-0169", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0169?",
    ),
    metric_contract(
      "relative-volatility-0170", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0170?",
    ),
    metric_contract(
      "tray-efficiency-0171", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0171?",
    ),
    metric_contract(
      "residence-time-0172", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0172?",
    ),
    metric_contract(
      "cstr-conversion-0173", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0173?",
    ),
    metric_contract(
      "pfr-conversion-0174", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0174?",
    ),
    metric_contract(
      "reaction-rate-0175", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0175?",
    ),
    metric_contract(
      "arrhenius-0176", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0176?",
    ),
    metric_contract(
      "selectivity-0177", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0177?",
    ),
    metric_contract(
      "yield-0178", "explicit", true, true, "Does the report state the basis, units, and source for yield-0178?",
    ),
    metric_contract(
      "conversion-closure-0179", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0179?",
    ),
    metric_contract(
      "mixing-temperature-0180", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0180?",
    ),
    metric_contract(
      "ph-0181", "explicit", true, true, "Does the report state the basis, units, and source for ph-0181?",
    ),
    metric_contract(
      "henry-law-0182", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0182?",
    ),
    metric_contract(
      "absorption-factor-0183", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0183?",
    ),
    metric_contract(
      "stripping-factor-0184", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0184?",
    ),
    metric_contract(
      "drying-rate-0185", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0185?",
    ),
    metric_contract(
      "filtration-rate-0186", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0186?",
    ),
    metric_contract(
      "sedimentation-0187", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0187?",
    ),
    metric_contract(
      "particle-reynolds-0188", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0188?",
    ),
    metric_contract(
      "porosity-0189", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0189?",
    ),
    metric_contract(
      "darcy-0190", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0190?",
    ),
    metric_contract(
      "moisture-content-0191", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0191?",
    ),
    metric_contract(
      "concentration-0192", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0192?",
    ),
    metric_contract(
      "molarity-0193", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0193?",
    ),
    metric_contract(
      "mass-fraction-0194", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0194?",
    ),
    metric_contract(
      "mole-fraction-0195", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0195?",
    ),
    metric_contract(
      "uncertainty-0196", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0196?",
    ),
    metric_contract(
      "mass-balance-0197", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0197?",
    ),
    metric_contract(
      "component-balance-0198", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0198?",
    ),
    metric_contract(
      "energy-balance-0199", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0199?",
    ),
    metric_contract(
      "sensible-duty-0200", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0200?",
    ),
    metric_contract(
      "latent-duty-0201", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0201?",
    ),
    metric_contract(
      "heat-loss-0202", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0202?",
    ),
    metric_contract(
      "lmtd-0203", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0203?",
    ),
    metric_contract(
      "ntu-0204", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0204?",
    ),
    metric_contract(
      "reynolds-0205", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0205?",
    ),
    metric_contract(
      "prandtl-0206", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0206?",
    ),
    metric_contract(
      "nusselt-0207", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0207?",
    ),
    metric_contract(
      "pressure-drop-0208", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0208?",
    ),
    metric_contract(
      "pump-head-0209", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0209?",
    ),
    metric_contract(
      "pump-power-0210", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0210?",
    ),
    metric_contract(
      "compressor-power-0211", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0211?",
    ),
    metric_contract(
      "gas-density-0212", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0212?",
    ),
    metric_contract(
      "vapor-fraction-0213", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0213?",
    ),
    metric_contract(
      "flash-vapor-0214", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0214?",
    ),
    metric_contract(
      "flash-liquid-0215", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0215?",
    ),
    metric_contract(
      "distillate-flow-0216", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0216?",
    ),
    metric_contract(
      "bottoms-flow-0217", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0217?",
    ),
    metric_contract(
      "reflux-ratio-0218", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0218?",
    ),
    metric_contract(
      "relative-volatility-0219", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0219?",
    ),
    metric_contract(
      "tray-efficiency-0220", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0220?",
    ),
    metric_contract(
      "residence-time-0221", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0221?",
    ),
    metric_contract(
      "cstr-conversion-0222", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0222?",
    ),
    metric_contract(
      "pfr-conversion-0223", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0223?",
    ),
    metric_contract(
      "reaction-rate-0224", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0224?",
    ),
    metric_contract(
      "arrhenius-0225", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0225?",
    ),
    metric_contract(
      "selectivity-0226", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0226?",
    ),
    metric_contract(
      "yield-0227", "explicit", true, true, "Does the report state the basis, units, and source for yield-0227?",
    ),
    metric_contract(
      "conversion-closure-0228", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0228?",
    ),
    metric_contract(
      "mixing-temperature-0229", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0229?",
    ),
    metric_contract(
      "ph-0230", "explicit", true, true, "Does the report state the basis, units, and source for ph-0230?",
    ),
    metric_contract(
      "henry-law-0231", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0231?",
    ),
    metric_contract(
      "absorption-factor-0232", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0232?",
    ),
    metric_contract(
      "stripping-factor-0233", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0233?",
    ),
    metric_contract(
      "drying-rate-0234", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0234?",
    ),
    metric_contract(
      "filtration-rate-0235", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0235?",
    ),
    metric_contract(
      "sedimentation-0236", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0236?",
    ),
    metric_contract(
      "particle-reynolds-0237", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0237?",
    ),
    metric_contract(
      "porosity-0238", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0238?",
    ),
    metric_contract(
      "darcy-0239", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0239?",
    ),
    metric_contract(
      "moisture-content-0240", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0240?",
    ),
    metric_contract(
      "concentration-0241", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0241?",
    ),
    metric_contract(
      "molarity-0242", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0242?",
    ),
    metric_contract(
      "mass-fraction-0243", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0243?",
    ),
    metric_contract(
      "mole-fraction-0244", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0244?",
    ),
    metric_contract(
      "uncertainty-0245", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0245?",
    ),
    metric_contract(
      "mass-balance-0246", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0246?",
    ),
    metric_contract(
      "component-balance-0247", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0247?",
    ),
    metric_contract(
      "energy-balance-0248", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0248?",
    ),
    metric_contract(
      "sensible-duty-0249", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0249?",
    ),
    metric_contract(
      "latent-duty-0250", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0250?",
    ),
    metric_contract(
      "heat-loss-0251", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0251?",
    ),
    metric_contract(
      "lmtd-0252", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0252?",
    ),
    metric_contract(
      "ntu-0253", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0253?",
    ),
    metric_contract(
      "reynolds-0254", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0254?",
    ),
    metric_contract(
      "prandtl-0255", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0255?",
    ),
    metric_contract(
      "nusselt-0256", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0256?",
    ),
    metric_contract(
      "pressure-drop-0257", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0257?",
    ),
    metric_contract(
      "pump-head-0258", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0258?",
    ),
    metric_contract(
      "pump-power-0259", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0259?",
    ),
    metric_contract(
      "compressor-power-0260", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0260?",
    ),
    metric_contract(
      "gas-density-0261", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0261?",
    ),
    metric_contract(
      "vapor-fraction-0262", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0262?",
    ),
    metric_contract(
      "flash-vapor-0263", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0263?",
    ),
    metric_contract(
      "flash-liquid-0264", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0264?",
    ),
    metric_contract(
      "distillate-flow-0265", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0265?",
    ),
    metric_contract(
      "bottoms-flow-0266", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0266?",
    ),
    metric_contract(
      "reflux-ratio-0267", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0267?",
    ),
    metric_contract(
      "relative-volatility-0268", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0268?",
    ),
    metric_contract(
      "tray-efficiency-0269", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0269?",
    ),
    metric_contract(
      "residence-time-0270", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0270?",
    ),
    metric_contract(
      "cstr-conversion-0271", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0271?",
    ),
    metric_contract(
      "pfr-conversion-0272", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0272?",
    ),
    metric_contract(
      "reaction-rate-0273", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0273?",
    ),
    metric_contract(
      "arrhenius-0274", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0274?",
    ),
    metric_contract(
      "selectivity-0275", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0275?",
    ),
    metric_contract(
      "yield-0276", "explicit", true, true, "Does the report state the basis, units, and source for yield-0276?",
    ),
    metric_contract(
      "conversion-closure-0277", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0277?",
    ),
    metric_contract(
      "mixing-temperature-0278", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0278?",
    ),
    metric_contract(
      "ph-0279", "explicit", true, true, "Does the report state the basis, units, and source for ph-0279?",
    ),
    metric_contract(
      "henry-law-0280", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0280?",
    ),
    metric_contract(
      "absorption-factor-0281", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0281?",
    ),
    metric_contract(
      "stripping-factor-0282", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0282?",
    ),
    metric_contract(
      "drying-rate-0283", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0283?",
    ),
    metric_contract(
      "filtration-rate-0284", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0284?",
    ),
    metric_contract(
      "sedimentation-0285", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0285?",
    ),
    metric_contract(
      "particle-reynolds-0286", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0286?",
    ),
    metric_contract(
      "porosity-0287", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0287?",
    ),
    metric_contract(
      "darcy-0288", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0288?",
    ),
    metric_contract(
      "moisture-content-0289", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0289?",
    ),
    metric_contract(
      "concentration-0290", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0290?",
    ),
    metric_contract(
      "molarity-0291", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0291?",
    ),
    metric_contract(
      "mass-fraction-0292", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0292?",
    ),
    metric_contract(
      "mole-fraction-0293", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0293?",
    ),
    metric_contract(
      "uncertainty-0294", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0294?",
    ),
    metric_contract(
      "mass-balance-0295", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0295?",
    ),
    metric_contract(
      "component-balance-0296", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0296?",
    ),
    metric_contract(
      "energy-balance-0297", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0297?",
    ),
    metric_contract(
      "sensible-duty-0298", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0298?",
    ),
    metric_contract(
      "latent-duty-0299", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0299?",
    ),
    metric_contract(
      "heat-loss-0300", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0300?",
    ),
    metric_contract(
      "lmtd-0301", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0301?",
    ),
    metric_contract(
      "ntu-0302", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0302?",
    ),
    metric_contract(
      "reynolds-0303", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0303?",
    ),
    metric_contract(
      "prandtl-0304", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0304?",
    ),
    metric_contract(
      "nusselt-0305", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0305?",
    ),
    metric_contract(
      "pressure-drop-0306", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0306?",
    ),
    metric_contract(
      "pump-head-0307", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0307?",
    ),
    metric_contract(
      "pump-power-0308", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0308?",
    ),
    metric_contract(
      "compressor-power-0309", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0309?",
    ),
    metric_contract(
      "gas-density-0310", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0310?",
    ),
    metric_contract(
      "vapor-fraction-0311", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0311?",
    ),
    metric_contract(
      "flash-vapor-0312", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0312?",
    ),
    metric_contract(
      "flash-liquid-0313", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0313?",
    ),
    metric_contract(
      "distillate-flow-0314", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0314?",
    ),
    metric_contract(
      "bottoms-flow-0315", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0315?",
    ),
    metric_contract(
      "reflux-ratio-0316", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0316?",
    ),
    metric_contract(
      "relative-volatility-0317", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0317?",
    ),
    metric_contract(
      "tray-efficiency-0318", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0318?",
    ),
    metric_contract(
      "residence-time-0319", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0319?",
    ),
    metric_contract(
      "cstr-conversion-0320", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0320?",
    ),
    metric_contract(
      "pfr-conversion-0321", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0321?",
    ),
    metric_contract(
      "reaction-rate-0322", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0322?",
    ),
    metric_contract(
      "arrhenius-0323", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0323?",
    ),
    metric_contract(
      "selectivity-0324", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0324?",
    ),
    metric_contract(
      "yield-0325", "explicit", true, true, "Does the report state the basis, units, and source for yield-0325?",
    ),
    metric_contract(
      "conversion-closure-0326", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0326?",
    ),
    metric_contract(
      "mixing-temperature-0327", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0327?",
    ),
    metric_contract(
      "ph-0328", "explicit", true, true, "Does the report state the basis, units, and source for ph-0328?",
    ),
    metric_contract(
      "henry-law-0329", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0329?",
    ),
    metric_contract(
      "absorption-factor-0330", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0330?",
    ),
    metric_contract(
      "stripping-factor-0331", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0331?",
    ),
    metric_contract(
      "drying-rate-0332", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0332?",
    ),
    metric_contract(
      "filtration-rate-0333", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0333?",
    ),
    metric_contract(
      "sedimentation-0334", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0334?",
    ),
    metric_contract(
      "particle-reynolds-0335", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0335?",
    ),
    metric_contract(
      "porosity-0336", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0336?",
    ),
    metric_contract(
      "darcy-0337", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0337?",
    ),
    metric_contract(
      "moisture-content-0338", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0338?",
    ),
    metric_contract(
      "concentration-0339", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0339?",
    ),
    metric_contract(
      "molarity-0340", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0340?",
    ),
    metric_contract(
      "mass-fraction-0341", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0341?",
    ),
    metric_contract(
      "mole-fraction-0342", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0342?",
    ),
    metric_contract(
      "uncertainty-0343", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0343?",
    ),
    metric_contract(
      "mass-balance-0344", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0344?",
    ),
    metric_contract(
      "component-balance-0345", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0345?",
    ),
    metric_contract(
      "energy-balance-0346", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0346?",
    ),
    metric_contract(
      "sensible-duty-0347", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0347?",
    ),
    metric_contract(
      "latent-duty-0348", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0348?",
    ),
    metric_contract(
      "heat-loss-0349", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0349?",
    ),
    metric_contract(
      "lmtd-0350", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0350?",
    ),
    metric_contract(
      "ntu-0351", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0351?",
    ),
    metric_contract(
      "reynolds-0352", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0352?",
    ),
    metric_contract(
      "prandtl-0353", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0353?",
    ),
    metric_contract(
      "nusselt-0354", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0354?",
    ),
    metric_contract(
      "pressure-drop-0355", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0355?",
    ),
    metric_contract(
      "pump-head-0356", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0356?",
    ),
    metric_contract(
      "pump-power-0357", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0357?",
    ),
    metric_contract(
      "compressor-power-0358", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0358?",
    ),
    metric_contract(
      "gas-density-0359", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0359?",
    ),
    metric_contract(
      "vapor-fraction-0360", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0360?",
    ),
    metric_contract(
      "flash-vapor-0361", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0361?",
    ),
    metric_contract(
      "flash-liquid-0362", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0362?",
    ),
    metric_contract(
      "distillate-flow-0363", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0363?",
    ),
    metric_contract(
      "bottoms-flow-0364", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0364?",
    ),
    metric_contract(
      "reflux-ratio-0365", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0365?",
    ),
    metric_contract(
      "relative-volatility-0366", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0366?",
    ),
    metric_contract(
      "tray-efficiency-0367", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0367?",
    ),
    metric_contract(
      "residence-time-0368", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0368?",
    ),
    metric_contract(
      "cstr-conversion-0369", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0369?",
    ),
    metric_contract(
      "pfr-conversion-0370", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0370?",
    ),
    metric_contract(
      "reaction-rate-0371", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0371?",
    ),
    metric_contract(
      "arrhenius-0372", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0372?",
    ),
    metric_contract(
      "selectivity-0373", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0373?",
    ),
    metric_contract(
      "yield-0374", "explicit", true, true, "Does the report state the basis, units, and source for yield-0374?",
    ),
    metric_contract(
      "conversion-closure-0375", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0375?",
    ),
    metric_contract(
      "mixing-temperature-0376", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0376?",
    ),
    metric_contract(
      "ph-0377", "explicit", true, true, "Does the report state the basis, units, and source for ph-0377?",
    ),
    metric_contract(
      "henry-law-0378", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0378?",
    ),
    metric_contract(
      "absorption-factor-0379", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0379?",
    ),
    metric_contract(
      "stripping-factor-0380", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0380?",
    ),
    metric_contract(
      "drying-rate-0381", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0381?",
    ),
    metric_contract(
      "filtration-rate-0382", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0382?",
    ),
    metric_contract(
      "sedimentation-0383", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0383?",
    ),
    metric_contract(
      "particle-reynolds-0384", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0384?",
    ),
    metric_contract(
      "porosity-0385", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0385?",
    ),
    metric_contract(
      "darcy-0386", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0386?",
    ),
    metric_contract(
      "moisture-content-0387", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0387?",
    ),
    metric_contract(
      "concentration-0388", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0388?",
    ),
    metric_contract(
      "molarity-0389", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0389?",
    ),
    metric_contract(
      "mass-fraction-0390", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0390?",
    ),
    metric_contract(
      "mole-fraction-0391", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0391?",
    ),
    metric_contract(
      "uncertainty-0392", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0392?",
    ),
    metric_contract(
      "mass-balance-0393", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0393?",
    ),
    metric_contract(
      "component-balance-0394", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0394?",
    ),
    metric_contract(
      "energy-balance-0395", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0395?",
    ),
    metric_contract(
      "sensible-duty-0396", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0396?",
    ),
    metric_contract(
      "latent-duty-0397", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0397?",
    ),
    metric_contract(
      "heat-loss-0398", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0398?",
    ),
    metric_contract(
      "lmtd-0399", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0399?",
    ),
    metric_contract(
      "ntu-0400", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0400?",
    ),
    metric_contract(
      "reynolds-0401", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0401?",
    ),
    metric_contract(
      "prandtl-0402", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0402?",
    ),
    metric_contract(
      "nusselt-0403", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0403?",
    ),
    metric_contract(
      "pressure-drop-0404", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0404?",
    ),
    metric_contract(
      "pump-head-0405", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0405?",
    ),
    metric_contract(
      "pump-power-0406", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0406?",
    ),
    metric_contract(
      "compressor-power-0407", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0407?",
    ),
    metric_contract(
      "gas-density-0408", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0408?",
    ),
    metric_contract(
      "vapor-fraction-0409", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0409?",
    ),
    metric_contract(
      "flash-vapor-0410", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0410?",
    ),
    metric_contract(
      "flash-liquid-0411", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0411?",
    ),
    metric_contract(
      "distillate-flow-0412", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0412?",
    ),
    metric_contract(
      "bottoms-flow-0413", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0413?",
    ),
    metric_contract(
      "reflux-ratio-0414", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0414?",
    ),
    metric_contract(
      "relative-volatility-0415", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0415?",
    ),
    metric_contract(
      "tray-efficiency-0416", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0416?",
    ),
    metric_contract(
      "residence-time-0417", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0417?",
    ),
    metric_contract(
      "cstr-conversion-0418", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0418?",
    ),
    metric_contract(
      "pfr-conversion-0419", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0419?",
    ),
    metric_contract(
      "reaction-rate-0420", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0420?",
    ),
    metric_contract(
      "arrhenius-0421", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0421?",
    ),
    metric_contract(
      "selectivity-0422", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0422?",
    ),
    metric_contract(
      "yield-0423", "explicit", true, true, "Does the report state the basis, units, and source for yield-0423?",
    ),
    metric_contract(
      "conversion-closure-0424", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0424?",
    ),
    metric_contract(
      "mixing-temperature-0425", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0425?",
    ),
    metric_contract(
      "ph-0426", "explicit", true, true, "Does the report state the basis, units, and source for ph-0426?",
    ),
    metric_contract(
      "henry-law-0427", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0427?",
    ),
    metric_contract(
      "absorption-factor-0428", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0428?",
    ),
    metric_contract(
      "stripping-factor-0429", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0429?",
    ),
    metric_contract(
      "drying-rate-0430", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0430?",
    ),
    metric_contract(
      "filtration-rate-0431", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0431?",
    ),
    metric_contract(
      "sedimentation-0432", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0432?",
    ),
    metric_contract(
      "particle-reynolds-0433", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0433?",
    ),
    metric_contract(
      "porosity-0434", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0434?",
    ),
    metric_contract(
      "darcy-0435", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0435?",
    ),
    metric_contract(
      "moisture-content-0436", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0436?",
    ),
    metric_contract(
      "concentration-0437", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0437?",
    ),
    metric_contract(
      "molarity-0438", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0438?",
    ),
    metric_contract(
      "mass-fraction-0439", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0439?",
    ),
    metric_contract(
      "mole-fraction-0440", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0440?",
    ),
    metric_contract(
      "uncertainty-0441", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0441?",
    ),
    metric_contract(
      "mass-balance-0442", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0442?",
    ),
    metric_contract(
      "component-balance-0443", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0443?",
    ),
    metric_contract(
      "energy-balance-0444", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0444?",
    ),
    metric_contract(
      "sensible-duty-0445", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0445?",
    ),
    metric_contract(
      "latent-duty-0446", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0446?",
    ),
    metric_contract(
      "heat-loss-0447", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0447?",
    ),
    metric_contract(
      "lmtd-0448", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0448?",
    ),
    metric_contract(
      "ntu-0449", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0449?",
    ),
    metric_contract(
      "reynolds-0450", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0450?",
    ),
    metric_contract(
      "prandtl-0451", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0451?",
    ),
    metric_contract(
      "nusselt-0452", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0452?",
    ),
    metric_contract(
      "pressure-drop-0453", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0453?",
    ),
    metric_contract(
      "pump-head-0454", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0454?",
    ),
    metric_contract(
      "pump-power-0455", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0455?",
    ),
    metric_contract(
      "compressor-power-0456", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0456?",
    ),
    metric_contract(
      "gas-density-0457", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0457?",
    ),
    metric_contract(
      "vapor-fraction-0458", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0458?",
    ),
    metric_contract(
      "flash-vapor-0459", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0459?",
    ),
    metric_contract(
      "flash-liquid-0460", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0460?",
    ),
    metric_contract(
      "distillate-flow-0461", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0461?",
    ),
    metric_contract(
      "bottoms-flow-0462", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0462?",
    ),
    metric_contract(
      "reflux-ratio-0463", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0463?",
    ),
    metric_contract(
      "relative-volatility-0464", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0464?",
    ),
    metric_contract(
      "tray-efficiency-0465", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0465?",
    ),
    metric_contract(
      "residence-time-0466", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0466?",
    ),
    metric_contract(
      "cstr-conversion-0467", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0467?",
    ),
    metric_contract(
      "pfr-conversion-0468", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0468?",
    ),
    metric_contract(
      "reaction-rate-0469", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0469?",
    ),
    metric_contract(
      "arrhenius-0470", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0470?",
    ),
    metric_contract(
      "selectivity-0471", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0471?",
    ),
    metric_contract(
      "yield-0472", "explicit", true, true, "Does the report state the basis, units, and source for yield-0472?",
    ),
    metric_contract(
      "conversion-closure-0473", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0473?",
    ),
    metric_contract(
      "mixing-temperature-0474", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0474?",
    ),
    metric_contract(
      "ph-0475", "explicit", true, true, "Does the report state the basis, units, and source for ph-0475?",
    ),
    metric_contract(
      "henry-law-0476", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0476?",
    ),
    metric_contract(
      "absorption-factor-0477", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0477?",
    ),
    metric_contract(
      "stripping-factor-0478", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0478?",
    ),
    metric_contract(
      "drying-rate-0479", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0479?",
    ),
    metric_contract(
      "filtration-rate-0480", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0480?",
    ),
    metric_contract(
      "sedimentation-0481", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0481?",
    ),
    metric_contract(
      "particle-reynolds-0482", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0482?",
    ),
    metric_contract(
      "porosity-0483", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0483?",
    ),
    metric_contract(
      "darcy-0484", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0484?",
    ),
    metric_contract(
      "moisture-content-0485", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0485?",
    ),
    metric_contract(
      "concentration-0486", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0486?",
    ),
    metric_contract(
      "molarity-0487", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0487?",
    ),
    metric_contract(
      "mass-fraction-0488", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0488?",
    ),
    metric_contract(
      "mole-fraction-0489", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0489?",
    ),
    metric_contract(
      "uncertainty-0490", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0490?",
    ),
    metric_contract(
      "mass-balance-0491", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0491?",
    ),
    metric_contract(
      "component-balance-0492", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0492?",
    ),
    metric_contract(
      "energy-balance-0493", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0493?",
    ),
    metric_contract(
      "sensible-duty-0494", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0494?",
    ),
    metric_contract(
      "latent-duty-0495", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0495?",
    ),
    metric_contract(
      "heat-loss-0496", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0496?",
    ),
    metric_contract(
      "lmtd-0497", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0497?",
    ),
    metric_contract(
      "ntu-0498", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0498?",
    ),
    metric_contract(
      "reynolds-0499", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0499?",
    ),
    metric_contract(
      "prandtl-0500", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0500?",
    ),
    metric_contract(
      "nusselt-0501", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0501?",
    ),
    metric_contract(
      "pressure-drop-0502", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0502?",
    ),
    metric_contract(
      "pump-head-0503", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0503?",
    ),
    metric_contract(
      "pump-power-0504", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0504?",
    ),
    metric_contract(
      "compressor-power-0505", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0505?",
    ),
    metric_contract(
      "gas-density-0506", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0506?",
    ),
    metric_contract(
      "vapor-fraction-0507", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0507?",
    ),
    metric_contract(
      "flash-vapor-0508", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0508?",
    ),
    metric_contract(
      "flash-liquid-0509", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0509?",
    ),
    metric_contract(
      "distillate-flow-0510", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0510?",
    ),
    metric_contract(
      "bottoms-flow-0511", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0511?",
    ),
    metric_contract(
      "reflux-ratio-0512", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0512?",
    ),
    metric_contract(
      "relative-volatility-0513", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0513?",
    ),
    metric_contract(
      "tray-efficiency-0514", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0514?",
    ),
    metric_contract(
      "residence-time-0515", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0515?",
    ),
    metric_contract(
      "cstr-conversion-0516", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0516?",
    ),
    metric_contract(
      "pfr-conversion-0517", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0517?",
    ),
    metric_contract(
      "reaction-rate-0518", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0518?",
    ),
    metric_contract(
      "arrhenius-0519", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0519?",
    ),
    metric_contract(
      "selectivity-0520", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0520?",
    ),
    metric_contract(
      "yield-0521", "explicit", true, true, "Does the report state the basis, units, and source for yield-0521?",
    ),
    metric_contract(
      "conversion-closure-0522", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0522?",
    ),
    metric_contract(
      "mixing-temperature-0523", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0523?",
    ),
    metric_contract(
      "ph-0524", "explicit", true, true, "Does the report state the basis, units, and source for ph-0524?",
    ),
    metric_contract(
      "henry-law-0525", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0525?",
    ),
    metric_contract(
      "absorption-factor-0526", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0526?",
    ),
    metric_contract(
      "stripping-factor-0527", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0527?",
    ),
    metric_contract(
      "drying-rate-0528", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0528?",
    ),
    metric_contract(
      "filtration-rate-0529", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0529?",
    ),
    metric_contract(
      "sedimentation-0530", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0530?",
    ),
    metric_contract(
      "particle-reynolds-0531", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0531?",
    ),
    metric_contract(
      "porosity-0532", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0532?",
    ),
    metric_contract(
      "darcy-0533", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0533?",
    ),
    metric_contract(
      "moisture-content-0534", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0534?",
    ),
    metric_contract(
      "concentration-0535", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0535?",
    ),
    metric_contract(
      "molarity-0536", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0536?",
    ),
    metric_contract(
      "mass-fraction-0537", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0537?",
    ),
    metric_contract(
      "mole-fraction-0538", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0538?",
    ),
    metric_contract(
      "uncertainty-0539", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0539?",
    ),
    metric_contract(
      "mass-balance-0540", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0540?",
    ),
    metric_contract(
      "component-balance-0541", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0541?",
    ),
    metric_contract(
      "energy-balance-0542", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0542?",
    ),
    metric_contract(
      "sensible-duty-0543", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0543?",
    ),
    metric_contract(
      "latent-duty-0544", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0544?",
    ),
    metric_contract(
      "heat-loss-0545", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0545?",
    ),
    metric_contract(
      "lmtd-0546", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0546?",
    ),
    metric_contract(
      "ntu-0547", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0547?",
    ),
    metric_contract(
      "reynolds-0548", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0548?",
    ),
    metric_contract(
      "prandtl-0549", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0549?",
    ),
    metric_contract(
      "nusselt-0550", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0550?",
    ),
    metric_contract(
      "pressure-drop-0551", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0551?",
    ),
    metric_contract(
      "pump-head-0552", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0552?",
    ),
    metric_contract(
      "pump-power-0553", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0553?",
    ),
    metric_contract(
      "compressor-power-0554", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0554?",
    ),
    metric_contract(
      "gas-density-0555", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0555?",
    ),
    metric_contract(
      "vapor-fraction-0556", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0556?",
    ),
    metric_contract(
      "flash-vapor-0557", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0557?",
    ),
    metric_contract(
      "flash-liquid-0558", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0558?",
    ),
    metric_contract(
      "distillate-flow-0559", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0559?",
    ),
    metric_contract(
      "bottoms-flow-0560", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0560?",
    ),
    metric_contract(
      "reflux-ratio-0561", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0561?",
    ),
    metric_contract(
      "relative-volatility-0562", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0562?",
    ),
    metric_contract(
      "tray-efficiency-0563", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0563?",
    ),
    metric_contract(
      "residence-time-0564", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0564?",
    ),
    metric_contract(
      "cstr-conversion-0565", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0565?",
    ),
    metric_contract(
      "pfr-conversion-0566", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0566?",
    ),
    metric_contract(
      "reaction-rate-0567", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0567?",
    ),
    metric_contract(
      "arrhenius-0568", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0568?",
    ),
    metric_contract(
      "selectivity-0569", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0569?",
    ),
    metric_contract(
      "yield-0570", "explicit", true, true, "Does the report state the basis, units, and source for yield-0570?",
    ),
    metric_contract(
      "conversion-closure-0571", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0571?",
    ),
    metric_contract(
      "mixing-temperature-0572", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0572?",
    ),
    metric_contract(
      "ph-0573", "explicit", true, true, "Does the report state the basis, units, and source for ph-0573?",
    ),
    metric_contract(
      "henry-law-0574", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0574?",
    ),
    metric_contract(
      "absorption-factor-0575", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0575?",
    ),
    metric_contract(
      "stripping-factor-0576", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0576?",
    ),
    metric_contract(
      "drying-rate-0577", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0577?",
    ),
    metric_contract(
      "filtration-rate-0578", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0578?",
    ),
    metric_contract(
      "sedimentation-0579", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0579?",
    ),
    metric_contract(
      "particle-reynolds-0580", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0580?",
    ),
    metric_contract(
      "porosity-0581", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0581?",
    ),
    metric_contract(
      "darcy-0582", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0582?",
    ),
    metric_contract(
      "moisture-content-0583", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0583?",
    ),
    metric_contract(
      "concentration-0584", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0584?",
    ),
    metric_contract(
      "molarity-0585", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0585?",
    ),
    metric_contract(
      "mass-fraction-0586", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0586?",
    ),
    metric_contract(
      "mole-fraction-0587", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0587?",
    ),
    metric_contract(
      "uncertainty-0588", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0588?",
    ),
    metric_contract(
      "mass-balance-0589", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0589?",
    ),
    metric_contract(
      "component-balance-0590", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0590?",
    ),
    metric_contract(
      "energy-balance-0591", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0591?",
    ),
    metric_contract(
      "sensible-duty-0592", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0592?",
    ),
    metric_contract(
      "latent-duty-0593", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0593?",
    ),
    metric_contract(
      "heat-loss-0594", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0594?",
    ),
    metric_contract(
      "lmtd-0595", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0595?",
    ),
    metric_contract(
      "ntu-0596", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0596?",
    ),
    metric_contract(
      "reynolds-0597", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0597?",
    ),
    metric_contract(
      "prandtl-0598", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0598?",
    ),
    metric_contract(
      "nusselt-0599", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0599?",
    ),
    metric_contract(
      "pressure-drop-0600", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0600?",
    ),
    metric_contract(
      "pump-head-0601", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0601?",
    ),
    metric_contract(
      "pump-power-0602", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0602?",
    ),
    metric_contract(
      "compressor-power-0603", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0603?",
    ),
    metric_contract(
      "gas-density-0604", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0604?",
    ),
    metric_contract(
      "vapor-fraction-0605", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0605?",
    ),
    metric_contract(
      "flash-vapor-0606", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0606?",
    ),
    metric_contract(
      "flash-liquid-0607", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0607?",
    ),
    metric_contract(
      "distillate-flow-0608", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0608?",
    ),
    metric_contract(
      "bottoms-flow-0609", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0609?",
    ),
    metric_contract(
      "reflux-ratio-0610", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0610?",
    ),
    metric_contract(
      "relative-volatility-0611", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0611?",
    ),
    metric_contract(
      "tray-efficiency-0612", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0612?",
    ),
    metric_contract(
      "residence-time-0613", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0613?",
    ),
    metric_contract(
      "cstr-conversion-0614", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0614?",
    ),
    metric_contract(
      "pfr-conversion-0615", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0615?",
    ),
    metric_contract(
      "reaction-rate-0616", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0616?",
    ),
    metric_contract(
      "arrhenius-0617", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0617?",
    ),
    metric_contract(
      "selectivity-0618", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0618?",
    ),
    metric_contract(
      "yield-0619", "explicit", true, true, "Does the report state the basis, units, and source for yield-0619?",
    ),
    metric_contract(
      "conversion-closure-0620", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0620?",
    ),
    metric_contract(
      "mixing-temperature-0621", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0621?",
    ),
    metric_contract(
      "ph-0622", "explicit", true, true, "Does the report state the basis, units, and source for ph-0622?",
    ),
    metric_contract(
      "henry-law-0623", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0623?",
    ),
    metric_contract(
      "absorption-factor-0624", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0624?",
    ),
    metric_contract(
      "stripping-factor-0625", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0625?",
    ),
    metric_contract(
      "drying-rate-0626", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0626?",
    ),
    metric_contract(
      "filtration-rate-0627", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0627?",
    ),
    metric_contract(
      "sedimentation-0628", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0628?",
    ),
    metric_contract(
      "particle-reynolds-0629", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0629?",
    ),
    metric_contract(
      "porosity-0630", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0630?",
    ),
    metric_contract(
      "darcy-0631", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0631?",
    ),
    metric_contract(
      "moisture-content-0632", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0632?",
    ),
    metric_contract(
      "concentration-0633", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0633?",
    ),
    metric_contract(
      "molarity-0634", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0634?",
    ),
    metric_contract(
      "mass-fraction-0635", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0635?",
    ),
    metric_contract(
      "mole-fraction-0636", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0636?",
    ),
    metric_contract(
      "uncertainty-0637", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0637?",
    ),
    metric_contract(
      "mass-balance-0638", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0638?",
    ),
    metric_contract(
      "component-balance-0639", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0639?",
    ),
    metric_contract(
      "energy-balance-0640", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0640?",
    ),
    metric_contract(
      "sensible-duty-0641", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0641?",
    ),
    metric_contract(
      "latent-duty-0642", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0642?",
    ),
    metric_contract(
      "heat-loss-0643", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0643?",
    ),
    metric_contract(
      "lmtd-0644", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0644?",
    ),
    metric_contract(
      "ntu-0645", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0645?",
    ),
    metric_contract(
      "reynolds-0646", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0646?",
    ),
    metric_contract(
      "prandtl-0647", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0647?",
    ),
    metric_contract(
      "nusselt-0648", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0648?",
    ),
    metric_contract(
      "pressure-drop-0649", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0649?",
    ),
    metric_contract(
      "pump-head-0650", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0650?",
    ),
    metric_contract(
      "pump-power-0651", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0651?",
    ),
    metric_contract(
      "compressor-power-0652", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0652?",
    ),
    metric_contract(
      "gas-density-0653", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0653?",
    ),
    metric_contract(
      "vapor-fraction-0654", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0654?",
    ),
    metric_contract(
      "flash-vapor-0655", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0655?",
    ),
    metric_contract(
      "flash-liquid-0656", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0656?",
    ),
    metric_contract(
      "distillate-flow-0657", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0657?",
    ),
    metric_contract(
      "bottoms-flow-0658", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0658?",
    ),
    metric_contract(
      "reflux-ratio-0659", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0659?",
    ),
    metric_contract(
      "relative-volatility-0660", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0660?",
    ),
    metric_contract(
      "tray-efficiency-0661", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0661?",
    ),
    metric_contract(
      "residence-time-0662", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0662?",
    ),
    metric_contract(
      "cstr-conversion-0663", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0663?",
    ),
    metric_contract(
      "pfr-conversion-0664", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0664?",
    ),
    metric_contract(
      "reaction-rate-0665", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0665?",
    ),
    metric_contract(
      "arrhenius-0666", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0666?",
    ),
    metric_contract(
      "selectivity-0667", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0667?",
    ),
    metric_contract(
      "yield-0668", "explicit", true, true, "Does the report state the basis, units, and source for yield-0668?",
    ),
    metric_contract(
      "conversion-closure-0669", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0669?",
    ),
    metric_contract(
      "mixing-temperature-0670", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0670?",
    ),
    metric_contract(
      "ph-0671", "explicit", true, true, "Does the report state the basis, units, and source for ph-0671?",
    ),
    metric_contract(
      "henry-law-0672", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0672?",
    ),
    metric_contract(
      "absorption-factor-0673", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0673?",
    ),
    metric_contract(
      "stripping-factor-0674", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0674?",
    ),
    metric_contract(
      "drying-rate-0675", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0675?",
    ),
    metric_contract(
      "filtration-rate-0676", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0676?",
    ),
    metric_contract(
      "sedimentation-0677", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0677?",
    ),
    metric_contract(
      "particle-reynolds-0678", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0678?",
    ),
    metric_contract(
      "porosity-0679", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0679?",
    ),
    metric_contract(
      "darcy-0680", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0680?",
    ),
    metric_contract(
      "moisture-content-0681", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0681?",
    ),
    metric_contract(
      "concentration-0682", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0682?",
    ),
    metric_contract(
      "molarity-0683", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0683?",
    ),
    metric_contract(
      "mass-fraction-0684", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0684?",
    ),
    metric_contract(
      "mole-fraction-0685", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0685?",
    ),
    metric_contract(
      "uncertainty-0686", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0686?",
    ),
    metric_contract(
      "mass-balance-0687", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0687?",
    ),
    metric_contract(
      "component-balance-0688", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0688?",
    ),
    metric_contract(
      "energy-balance-0689", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0689?",
    ),
    metric_contract(
      "sensible-duty-0690", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0690?",
    ),
    metric_contract(
      "latent-duty-0691", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0691?",
    ),
    metric_contract(
      "heat-loss-0692", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0692?",
    ),
    metric_contract(
      "lmtd-0693", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0693?",
    ),
    metric_contract(
      "ntu-0694", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0694?",
    ),
    metric_contract(
      "reynolds-0695", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0695?",
    ),
    metric_contract(
      "prandtl-0696", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0696?",
    ),
    metric_contract(
      "nusselt-0697", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0697?",
    ),
    metric_contract(
      "pressure-drop-0698", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0698?",
    ),
    metric_contract(
      "pump-head-0699", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0699?",
    ),
    metric_contract(
      "pump-power-0700", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0700?",
    ),
    metric_contract(
      "compressor-power-0701", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0701?",
    ),
    metric_contract(
      "gas-density-0702", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0702?",
    ),
    metric_contract(
      "vapor-fraction-0703", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0703?",
    ),
    metric_contract(
      "flash-vapor-0704", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0704?",
    ),
    metric_contract(
      "flash-liquid-0705", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0705?",
    ),
    metric_contract(
      "distillate-flow-0706", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0706?",
    ),
    metric_contract(
      "bottoms-flow-0707", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0707?",
    ),
    metric_contract(
      "reflux-ratio-0708", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0708?",
    ),
    metric_contract(
      "relative-volatility-0709", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0709?",
    ),
    metric_contract(
      "tray-efficiency-0710", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0710?",
    ),
    metric_contract(
      "residence-time-0711", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0711?",
    ),
    metric_contract(
      "cstr-conversion-0712", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0712?",
    ),
    metric_contract(
      "pfr-conversion-0713", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0713?",
    ),
    metric_contract(
      "reaction-rate-0714", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0714?",
    ),
    metric_contract(
      "arrhenius-0715", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0715?",
    ),
    metric_contract(
      "selectivity-0716", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0716?",
    ),
    metric_contract(
      "yield-0717", "explicit", true, true, "Does the report state the basis, units, and source for yield-0717?",
    ),
    metric_contract(
      "conversion-closure-0718", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0718?",
    ),
    metric_contract(
      "mixing-temperature-0719", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0719?",
    ),
    metric_contract(
      "ph-0720", "explicit", true, true, "Does the report state the basis, units, and source for ph-0720?",
    ),
    metric_contract(
      "henry-law-0721", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0721?",
    ),
    metric_contract(
      "absorption-factor-0722", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0722?",
    ),
    metric_contract(
      "stripping-factor-0723", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0723?",
    ),
    metric_contract(
      "drying-rate-0724", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0724?",
    ),
    metric_contract(
      "filtration-rate-0725", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0725?",
    ),
    metric_contract(
      "sedimentation-0726", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0726?",
    ),
    metric_contract(
      "particle-reynolds-0727", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0727?",
    ),
    metric_contract(
      "porosity-0728", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0728?",
    ),
    metric_contract(
      "darcy-0729", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0729?",
    ),
    metric_contract(
      "moisture-content-0730", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0730?",
    ),
    metric_contract(
      "concentration-0731", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0731?",
    ),
    metric_contract(
      "molarity-0732", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0732?",
    ),
    metric_contract(
      "mass-fraction-0733", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0733?",
    ),
    metric_contract(
      "mole-fraction-0734", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0734?",
    ),
    metric_contract(
      "uncertainty-0735", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0735?",
    ),
    metric_contract(
      "mass-balance-0736", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0736?",
    ),
    metric_contract(
      "component-balance-0737", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0737?",
    ),
    metric_contract(
      "energy-balance-0738", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0738?",
    ),
    metric_contract(
      "sensible-duty-0739", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0739?",
    ),
    metric_contract(
      "latent-duty-0740", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0740?",
    ),
    metric_contract(
      "heat-loss-0741", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0741?",
    ),
    metric_contract(
      "lmtd-0742", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0742?",
    ),
    metric_contract(
      "ntu-0743", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0743?",
    ),
    metric_contract(
      "reynolds-0744", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0744?",
    ),
    metric_contract(
      "prandtl-0745", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0745?",
    ),
    metric_contract(
      "nusselt-0746", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0746?",
    ),
    metric_contract(
      "pressure-drop-0747", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0747?",
    ),
    metric_contract(
      "pump-head-0748", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0748?",
    ),
    metric_contract(
      "pump-power-0749", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0749?",
    ),
    metric_contract(
      "compressor-power-0750", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0750?",
    ),
    metric_contract(
      "gas-density-0751", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0751?",
    ),
    metric_contract(
      "vapor-fraction-0752", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0752?",
    ),
    metric_contract(
      "flash-vapor-0753", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0753?",
    ),
    metric_contract(
      "flash-liquid-0754", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0754?",
    ),
    metric_contract(
      "distillate-flow-0755", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0755?",
    ),
    metric_contract(
      "bottoms-flow-0756", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0756?",
    ),
    metric_contract(
      "reflux-ratio-0757", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0757?",
    ),
    metric_contract(
      "relative-volatility-0758", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0758?",
    ),
    metric_contract(
      "tray-efficiency-0759", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0759?",
    ),
    metric_contract(
      "residence-time-0760", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0760?",
    ),
    metric_contract(
      "cstr-conversion-0761", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0761?",
    ),
    metric_contract(
      "pfr-conversion-0762", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0762?",
    ),
    metric_contract(
      "reaction-rate-0763", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0763?",
    ),
    metric_contract(
      "arrhenius-0764", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0764?",
    ),
    metric_contract(
      "selectivity-0765", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0765?",
    ),
    metric_contract(
      "yield-0766", "explicit", true, true, "Does the report state the basis, units, and source for yield-0766?",
    ),
    metric_contract(
      "conversion-closure-0767", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0767?",
    ),
    metric_contract(
      "mixing-temperature-0768", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0768?",
    ),
    metric_contract(
      "ph-0769", "explicit", true, true, "Does the report state the basis, units, and source for ph-0769?",
    ),
    metric_contract(
      "henry-law-0770", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0770?",
    ),
    metric_contract(
      "absorption-factor-0771", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0771?",
    ),
    metric_contract(
      "stripping-factor-0772", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0772?",
    ),
    metric_contract(
      "drying-rate-0773", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0773?",
    ),
    metric_contract(
      "filtration-rate-0774", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0774?",
    ),
    metric_contract(
      "sedimentation-0775", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0775?",
    ),
    metric_contract(
      "particle-reynolds-0776", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0776?",
    ),
    metric_contract(
      "porosity-0777", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0777?",
    ),
    metric_contract(
      "darcy-0778", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0778?",
    ),
    metric_contract(
      "moisture-content-0779", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0779?",
    ),
    metric_contract(
      "concentration-0780", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0780?",
    ),
    metric_contract(
      "molarity-0781", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0781?",
    ),
    metric_contract(
      "mass-fraction-0782", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0782?",
    ),
    metric_contract(
      "mole-fraction-0783", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0783?",
    ),
    metric_contract(
      "uncertainty-0784", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0784?",
    ),
    metric_contract(
      "mass-balance-0785", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0785?",
    ),
    metric_contract(
      "component-balance-0786", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0786?",
    ),
    metric_contract(
      "energy-balance-0787", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0787?",
    ),
    metric_contract(
      "sensible-duty-0788", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0788?",
    ),
    metric_contract(
      "latent-duty-0789", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0789?",
    ),
    metric_contract(
      "heat-loss-0790", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0790?",
    ),
    metric_contract(
      "lmtd-0791", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0791?",
    ),
    metric_contract(
      "ntu-0792", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0792?",
    ),
    metric_contract(
      "reynolds-0793", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0793?",
    ),
    metric_contract(
      "prandtl-0794", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0794?",
    ),
    metric_contract(
      "nusselt-0795", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0795?",
    ),
    metric_contract(
      "pressure-drop-0796", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0796?",
    ),
    metric_contract(
      "pump-head-0797", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0797?",
    ),
    metric_contract(
      "pump-power-0798", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0798?",
    ),
    metric_contract(
      "compressor-power-0799", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0799?",
    ),
    metric_contract(
      "gas-density-0800", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0800?",
    ),
    metric_contract(
      "vapor-fraction-0801", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0801?",
    ),
    metric_contract(
      "flash-vapor-0802", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0802?",
    ),
    metric_contract(
      "flash-liquid-0803", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0803?",
    ),
    metric_contract(
      "distillate-flow-0804", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0804?",
    ),
    metric_contract(
      "bottoms-flow-0805", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0805?",
    ),
    metric_contract(
      "reflux-ratio-0806", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0806?",
    ),
    metric_contract(
      "relative-volatility-0807", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0807?",
    ),
    metric_contract(
      "tray-efficiency-0808", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0808?",
    ),
    metric_contract(
      "residence-time-0809", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0809?",
    ),
    metric_contract(
      "cstr-conversion-0810", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0810?",
    ),
    metric_contract(
      "pfr-conversion-0811", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0811?",
    ),
    metric_contract(
      "reaction-rate-0812", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0812?",
    ),
    metric_contract(
      "arrhenius-0813", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0813?",
    ),
    metric_contract(
      "selectivity-0814", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0814?",
    ),
    metric_contract(
      "yield-0815", "explicit", true, true, "Does the report state the basis, units, and source for yield-0815?",
    ),
    metric_contract(
      "conversion-closure-0816", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0816?",
    ),
    metric_contract(
      "mixing-temperature-0817", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0817?",
    ),
    metric_contract(
      "ph-0818", "explicit", true, true, "Does the report state the basis, units, and source for ph-0818?",
    ),
    metric_contract(
      "henry-law-0819", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0819?",
    ),
    metric_contract(
      "absorption-factor-0820", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0820?",
    ),
    metric_contract(
      "stripping-factor-0821", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0821?",
    ),
    metric_contract(
      "drying-rate-0822", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0822?",
    ),
    metric_contract(
      "filtration-rate-0823", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0823?",
    ),
    metric_contract(
      "sedimentation-0824", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0824?",
    ),
    metric_contract(
      "particle-reynolds-0825", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0825?",
    ),
    metric_contract(
      "porosity-0826", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0826?",
    ),
    metric_contract(
      "darcy-0827", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0827?",
    ),
    metric_contract(
      "moisture-content-0828", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0828?",
    ),
    metric_contract(
      "concentration-0829", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0829?",
    ),
    metric_contract(
      "molarity-0830", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0830?",
    ),
    metric_contract(
      "mass-fraction-0831", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0831?",
    ),
    metric_contract(
      "mole-fraction-0832", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0832?",
    ),
    metric_contract(
      "uncertainty-0833", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0833?",
    ),
    metric_contract(
      "mass-balance-0834", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0834?",
    ),
    metric_contract(
      "component-balance-0835", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0835?",
    ),
    metric_contract(
      "energy-balance-0836", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0836?",
    ),
    metric_contract(
      "sensible-duty-0837", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0837?",
    ),
    metric_contract(
      "latent-duty-0838", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0838?",
    ),
    metric_contract(
      "heat-loss-0839", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0839?",
    ),
    metric_contract(
      "lmtd-0840", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0840?",
    ),
    metric_contract(
      "ntu-0841", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0841?",
    ),
    metric_contract(
      "reynolds-0842", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0842?",
    ),
    metric_contract(
      "prandtl-0843", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0843?",
    ),
    metric_contract(
      "nusselt-0844", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0844?",
    ),
    metric_contract(
      "pressure-drop-0845", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0845?",
    ),
    metric_contract(
      "pump-head-0846", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0846?",
    ),
    metric_contract(
      "pump-power-0847", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0847?",
    ),
    metric_contract(
      "compressor-power-0848", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0848?",
    ),
    metric_contract(
      "gas-density-0849", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0849?",
    ),
    metric_contract(
      "vapor-fraction-0850", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0850?",
    ),
    metric_contract(
      "flash-vapor-0851", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0851?",
    ),
    metric_contract(
      "flash-liquid-0852", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0852?",
    ),
    metric_contract(
      "distillate-flow-0853", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0853?",
    ),
    metric_contract(
      "bottoms-flow-0854", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0854?",
    ),
    metric_contract(
      "reflux-ratio-0855", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0855?",
    ),
    metric_contract(
      "relative-volatility-0856", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0856?",
    ),
    metric_contract(
      "tray-efficiency-0857", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0857?",
    ),
    metric_contract(
      "residence-time-0858", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0858?",
    ),
    metric_contract(
      "cstr-conversion-0859", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0859?",
    ),
    metric_contract(
      "pfr-conversion-0860", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0860?",
    ),
    metric_contract(
      "reaction-rate-0861", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0861?",
    ),
    metric_contract(
      "arrhenius-0862", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0862?",
    ),
    metric_contract(
      "selectivity-0863", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0863?",
    ),
    metric_contract(
      "yield-0864", "explicit", true, true, "Does the report state the basis, units, and source for yield-0864?",
    ),
    metric_contract(
      "conversion-closure-0865", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0865?",
    ),
    metric_contract(
      "mixing-temperature-0866", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0866?",
    ),
    metric_contract(
      "ph-0867", "explicit", true, true, "Does the report state the basis, units, and source for ph-0867?",
    ),
    metric_contract(
      "henry-law-0868", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0868?",
    ),
    metric_contract(
      "absorption-factor-0869", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0869?",
    ),
    metric_contract(
      "stripping-factor-0870", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0870?",
    ),
    metric_contract(
      "drying-rate-0871", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0871?",
    ),
    metric_contract(
      "filtration-rate-0872", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0872?",
    ),
    metric_contract(
      "sedimentation-0873", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0873?",
    ),
    metric_contract(
      "particle-reynolds-0874", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0874?",
    ),
    metric_contract(
      "porosity-0875", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0875?",
    ),
    metric_contract(
      "darcy-0876", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0876?",
    ),
    metric_contract(
      "moisture-content-0877", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0877?",
    ),
    metric_contract(
      "concentration-0878", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0878?",
    ),
    metric_contract(
      "molarity-0879", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0879?",
    ),
    metric_contract(
      "mass-fraction-0880", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0880?",
    ),
    metric_contract(
      "mole-fraction-0881", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0881?",
    ),
    metric_contract(
      "uncertainty-0882", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0882?",
    ),
    metric_contract(
      "mass-balance-0883", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0883?",
    ),
    metric_contract(
      "component-balance-0884", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0884?",
    ),
    metric_contract(
      "energy-balance-0885", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0885?",
    ),
    metric_contract(
      "sensible-duty-0886", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0886?",
    ),
    metric_contract(
      "latent-duty-0887", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0887?",
    ),
    metric_contract(
      "heat-loss-0888", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0888?",
    ),
    metric_contract(
      "lmtd-0889", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0889?",
    ),
    metric_contract(
      "ntu-0890", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0890?",
    ),
    metric_contract(
      "reynolds-0891", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0891?",
    ),
    metric_contract(
      "prandtl-0892", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0892?",
    ),
    metric_contract(
      "nusselt-0893", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0893?",
    ),
    metric_contract(
      "pressure-drop-0894", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0894?",
    ),
    metric_contract(
      "pump-head-0895", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0895?",
    ),
    metric_contract(
      "pump-power-0896", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0896?",
    ),
    metric_contract(
      "compressor-power-0897", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0897?",
    ),
    metric_contract(
      "gas-density-0898", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0898?",
    ),
    metric_contract(
      "vapor-fraction-0899", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0899?",
    ),
    metric_contract(
      "flash-vapor-0900", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0900?",
    ),
    metric_contract(
      "flash-liquid-0901", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0901?",
    ),
    metric_contract(
      "distillate-flow-0902", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0902?",
    ),
    metric_contract(
      "bottoms-flow-0903", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0903?",
    ),
    metric_contract(
      "reflux-ratio-0904", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0904?",
    ),
    metric_contract(
      "relative-volatility-0905", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0905?",
    ),
    metric_contract(
      "tray-efficiency-0906", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0906?",
    ),
    metric_contract(
      "residence-time-0907", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0907?",
    ),
    metric_contract(
      "cstr-conversion-0908", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0908?",
    ),
    metric_contract(
      "pfr-conversion-0909", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0909?",
    ),
    metric_contract(
      "reaction-rate-0910", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0910?",
    ),
    metric_contract(
      "arrhenius-0911", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0911?",
    ),
    metric_contract(
      "selectivity-0912", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0912?",
    ),
    metric_contract(
      "yield-0913", "explicit", true, true, "Does the report state the basis, units, and source for yield-0913?",
    ),
    metric_contract(
      "conversion-closure-0914", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0914?",
    ),
    metric_contract(
      "mixing-temperature-0915", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0915?",
    ),
    metric_contract(
      "ph-0916", "explicit", true, true, "Does the report state the basis, units, and source for ph-0916?",
    ),
    metric_contract(
      "henry-law-0917", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0917?",
    ),
    metric_contract(
      "absorption-factor-0918", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0918?",
    ),
    metric_contract(
      "stripping-factor-0919", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0919?",
    ),
    metric_contract(
      "drying-rate-0920", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0920?",
    ),
    metric_contract(
      "filtration-rate-0921", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0921?",
    ),
    metric_contract(
      "sedimentation-0922", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0922?",
    ),
    metric_contract(
      "particle-reynolds-0923", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0923?",
    ),
    metric_contract(
      "porosity-0924", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0924?",
    ),
    metric_contract(
      "darcy-0925", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0925?",
    ),
    metric_contract(
      "moisture-content-0926", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0926?",
    ),
    metric_contract(
      "concentration-0927", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0927?",
    ),
    metric_contract(
      "molarity-0928", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0928?",
    ),
    metric_contract(
      "mass-fraction-0929", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0929?",
    ),
    metric_contract(
      "mole-fraction-0930", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0930?",
    ),
    metric_contract(
      "uncertainty-0931", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0931?",
    ),
    metric_contract(
      "mass-balance-0932", "explicit", true, true, "Does the report state the basis, units, and source for mass-balance-0932?",
    ),
    metric_contract(
      "component-balance-0933", "explicit", true, true, "Does the report state the basis, units, and source for component-balance-0933?",
    ),
    metric_contract(
      "energy-balance-0934", "explicit", true, true, "Does the report state the basis, units, and source for energy-balance-0934?",
    ),
    metric_contract(
      "sensible-duty-0935", "explicit", true, true, "Does the report state the basis, units, and source for sensible-duty-0935?",
    ),
    metric_contract(
      "latent-duty-0936", "explicit", true, true, "Does the report state the basis, units, and source for latent-duty-0936?",
    ),
    metric_contract(
      "heat-loss-0937", "explicit", true, true, "Does the report state the basis, units, and source for heat-loss-0937?",
    ),
    metric_contract(
      "lmtd-0938", "explicit", true, true, "Does the report state the basis, units, and source for lmtd-0938?",
    ),
    metric_contract(
      "ntu-0939", "explicit", true, true, "Does the report state the basis, units, and source for ntu-0939?",
    ),
    metric_contract(
      "reynolds-0940", "explicit", true, true, "Does the report state the basis, units, and source for reynolds-0940?",
    ),
    metric_contract(
      "prandtl-0941", "explicit", true, true, "Does the report state the basis, units, and source for prandtl-0941?",
    ),
    metric_contract(
      "nusselt-0942", "explicit", true, true, "Does the report state the basis, units, and source for nusselt-0942?",
    ),
    metric_contract(
      "pressure-drop-0943", "explicit", true, true, "Does the report state the basis, units, and source for pressure-drop-0943?",
    ),
    metric_contract(
      "pump-head-0944", "explicit", true, true, "Does the report state the basis, units, and source for pump-head-0944?",
    ),
    metric_contract(
      "pump-power-0945", "explicit", true, true, "Does the report state the basis, units, and source for pump-power-0945?",
    ),
    metric_contract(
      "compressor-power-0946", "explicit", true, true, "Does the report state the basis, units, and source for compressor-power-0946?",
    ),
    metric_contract(
      "gas-density-0947", "explicit", true, true, "Does the report state the basis, units, and source for gas-density-0947?",
    ),
    metric_contract(
      "vapor-fraction-0948", "explicit", true, true, "Does the report state the basis, units, and source for vapor-fraction-0948?",
    ),
    metric_contract(
      "flash-vapor-0949", "explicit", true, true, "Does the report state the basis, units, and source for flash-vapor-0949?",
    ),
    metric_contract(
      "flash-liquid-0950", "explicit", true, true, "Does the report state the basis, units, and source for flash-liquid-0950?",
    ),
    metric_contract(
      "distillate-flow-0951", "explicit", true, true, "Does the report state the basis, units, and source for distillate-flow-0951?",
    ),
    metric_contract(
      "bottoms-flow-0952", "explicit", true, true, "Does the report state the basis, units, and source for bottoms-flow-0952?",
    ),
    metric_contract(
      "reflux-ratio-0953", "explicit", true, true, "Does the report state the basis, units, and source for reflux-ratio-0953?",
    ),
    metric_contract(
      "relative-volatility-0954", "explicit", true, true, "Does the report state the basis, units, and source for relative-volatility-0954?",
    ),
    metric_contract(
      "tray-efficiency-0955", "explicit", true, true, "Does the report state the basis, units, and source for tray-efficiency-0955?",
    ),
    metric_contract(
      "residence-time-0956", "explicit", true, true, "Does the report state the basis, units, and source for residence-time-0956?",
    ),
    metric_contract(
      "cstr-conversion-0957", "explicit", true, true, "Does the report state the basis, units, and source for cstr-conversion-0957?",
    ),
    metric_contract(
      "pfr-conversion-0958", "explicit", true, true, "Does the report state the basis, units, and source for pfr-conversion-0958?",
    ),
    metric_contract(
      "reaction-rate-0959", "explicit", true, true, "Does the report state the basis, units, and source for reaction-rate-0959?",
    ),
    metric_contract(
      "arrhenius-0960", "explicit", true, true, "Does the report state the basis, units, and source for arrhenius-0960?",
    ),
    metric_contract(
      "selectivity-0961", "explicit", true, true, "Does the report state the basis, units, and source for selectivity-0961?",
    ),
    metric_contract(
      "yield-0962", "explicit", true, true, "Does the report state the basis, units, and source for yield-0962?",
    ),
    metric_contract(
      "conversion-closure-0963", "explicit", true, true, "Does the report state the basis, units, and source for conversion-closure-0963?",
    ),
    metric_contract(
      "mixing-temperature-0964", "explicit", true, true, "Does the report state the basis, units, and source for mixing-temperature-0964?",
    ),
    metric_contract(
      "ph-0965", "explicit", true, true, "Does the report state the basis, units, and source for ph-0965?",
    ),
    metric_contract(
      "henry-law-0966", "explicit", true, true, "Does the report state the basis, units, and source for henry-law-0966?",
    ),
    metric_contract(
      "absorption-factor-0967", "explicit", true, true, "Does the report state the basis, units, and source for absorption-factor-0967?",
    ),
    metric_contract(
      "stripping-factor-0968", "explicit", true, true, "Does the report state the basis, units, and source for stripping-factor-0968?",
    ),
    metric_contract(
      "drying-rate-0969", "explicit", true, true, "Does the report state the basis, units, and source for drying-rate-0969?",
    ),
    metric_contract(
      "filtration-rate-0970", "explicit", true, true, "Does the report state the basis, units, and source for filtration-rate-0970?",
    ),
    metric_contract(
      "sedimentation-0971", "explicit", true, true, "Does the report state the basis, units, and source for sedimentation-0971?",
    ),
    metric_contract(
      "particle-reynolds-0972", "explicit", true, true, "Does the report state the basis, units, and source for particle-reynolds-0972?",
    ),
    metric_contract(
      "porosity-0973", "explicit", true, true, "Does the report state the basis, units, and source for porosity-0973?",
    ),
    metric_contract(
      "darcy-0974", "explicit", true, true, "Does the report state the basis, units, and source for darcy-0974?",
    ),
    metric_contract(
      "moisture-content-0975", "explicit", true, true, "Does the report state the basis, units, and source for moisture-content-0975?",
    ),
    metric_contract(
      "concentration-0976", "explicit", true, true, "Does the report state the basis, units, and source for concentration-0976?",
    ),
    metric_contract(
      "molarity-0977", "explicit", true, true, "Does the report state the basis, units, and source for molarity-0977?",
    ),
    metric_contract(
      "mass-fraction-0978", "explicit", true, true, "Does the report state the basis, units, and source for mass-fraction-0978?",
    ),
    metric_contract(
      "mole-fraction-0979", "explicit", true, true, "Does the report state the basis, units, and source for mole-fraction-0979?",
    ),
    metric_contract(
      "uncertainty-0980", "explicit", true, true, "Does the report state the basis, units, and source for uncertainty-0980?",
    ),
  ]
}

///|
pub fn contract_for_metric(metric_id : String) -> MetricContract? {
  for item in engineering_metric_contracts() {
    if item.metric_id == metric_id {
      break Some(item)
    }
  } nobreak {
    None
  }
}

///|
pub fn contract_is_complete(
  contract : MetricContract,
  report : ChemReport,
) -> Bool {
  let has_formula = report.formulas.length() > 0
  let has_source = report.sources.length() > 0
  (!contract.requires_formula || has_formula) &&
  (!contract.requires_source || has_source)
}
