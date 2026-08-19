///|
pub enum UnitDimension {
  Mass
  Amount
  Volume
  Time
  Temperature
  Energy
  Power
  Pressure
  Dimensionless
} derive(Debug, Eq)

///|
pub struct UnitSpec {
  symbol : String
  dimension : UnitDimension
  to_base : String
  offset : String
} derive(Debug, Eq)

///|
pub fn unit_spec(
  symbol : String,
  dimension : UnitDimension,
  to_base : String,
  offset? : String = "0",
) -> UnitSpec {
  { symbol, dimension, to_base, offset }
}

///|
pub fn unit_dimension(symbol : String) -> UnitDimension? {
  match symbol.trim() {
    "kg" | "g" | "mg" | "lb" => Some(Mass)
    "mol" | "kmol" | "mmol" => Some(Amount)
    "m3" | "L" | "l" | "mL" | "gal" => Some(Volume)
    "s" | "min" | "h" | "day" => Some(Time)
    "K" | "C" | "degC" | "F" | "degF" => Some(Temperature)
    "J" | "kJ" | "MJ" | "Wh" | "kWh" => Some(Energy)
    "W" | "kW" | "MW" | "hp" => Some(Power)
    "Pa" | "kPa" | "MPa" | "bar" | "atm" | "psi" => Some(Pressure)
    "1" | "mol/mol" | "%" => Some(Dimensionless)
    _ => None
  }
}

///|
pub fn known_units(dimension : UnitDimension) -> Array[UnitSpec] {
  match dimension {
    Mass =>
      [
        unit_spec("kg", Mass, "1"),
        unit_spec("g", Mass, "0.001"),
        unit_spec("mg", Mass, "0.000001"),
        unit_spec("lb", Mass, "0.45359237"),
      ]
    Amount =>
      [
        unit_spec("mol", Amount, "1"),
        unit_spec("kmol", Amount, "1000"),
        unit_spec("mmol", Amount, "0.001"),
      ]
    Volume =>
      [
        unit_spec("m3", Volume, "1"),
        unit_spec("L", Volume, "0.001"),
        unit_spec("l", Volume, "0.001"),
        unit_spec("mL", Volume, "0.000001"),
        unit_spec("gal", Volume, "0.003785411784"),
      ]
    Time =>
      [
        unit_spec("s", Time, "1"),
        unit_spec("min", Time, "60"),
        unit_spec("h", Time, "3600"),
        unit_spec("day", Time, "86400"),
      ]
    Temperature =>
      [
        unit_spec("K", Temperature, "1"),
        unit_spec("C", Temperature, "1", offset="273.15"),
        unit_spec("degC", Temperature, "1", offset="273.15"),
        unit_spec("F", Temperature, "0.5555555556", offset="255.3722222222"),
        unit_spec("degF", Temperature, "0.5555555556", offset="255.3722222222"),
      ]
    Energy =>
      [
        unit_spec("J", Energy, "1"),
        unit_spec("kJ", Energy, "1000"),
        unit_spec("MJ", Energy, "1000000"),
        unit_spec("Wh", Energy, "3600"),
        unit_spec("kWh", Energy, "3600000"),
      ]
    Power =>
      [
        unit_spec("W", Power, "1"),
        unit_spec("kW", Power, "1000"),
        unit_spec("MW", Power, "1000000"),
        unit_spec("hp", Power, "745.699871"),
      ]
    Pressure =>
      [
        unit_spec("Pa", Pressure, "1"),
        unit_spec("kPa", Pressure, "1000"),
        unit_spec("MPa", Pressure, "1000000"),
        unit_spec("bar", Pressure, "100000"),
        unit_spec("atm", Pressure, "101325"),
        unit_spec("psi", Pressure, "6894.757293"),
      ]
    Dimensionless =>
      [
        unit_spec("1", Dimensionless, "1"),
        unit_spec("mol/mol", Dimensionless, "1"),
        unit_spec("%", Dimensionless, "0.01"),
      ]
  }
}

///|
fn unit_lookup(symbol : String) -> UnitSpec? {
  match unit_dimension(symbol) {
    Some(dimension) =>
      for item in known_units(dimension) {
        if item.symbol == symbol.trim().to_owned() {
          break Some(item)
        }
      } nobreak {
        None
      }
    None => None
  }
}

///|
pub fn compatible_units(left : String, right : String) -> Bool {
  match (unit_dimension(left), unit_dimension(right)) {
    (Some(a), Some(b)) => a == b
    _ => false
  }
}

///|
pub fn unit_catalog() -> Array[UnitSpec] {
  let all : Array[UnitSpec] = []
  for
    dimension in [
      Mass,
      Amount,
      Volume,
      Time,
      Temperature,
      Energy,
      Power,
      Pressure,
      Dimensionless,
    ] {
    for item in known_units(dimension) {
      all.push(item)
    }
  }
  all
}
