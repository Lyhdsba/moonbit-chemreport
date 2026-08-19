///|
pub enum ScalarError {
  EmptyScalar
  InvalidNumber
  UnknownUnit(String)
  IncompatibleUnits(String, String)
  InvalidConversion
} derive(Debug, Eq)

///|
pub struct ScalarValue {
  value : String
  unit : String
} derive(Debug, Eq)

///|
pub fn scalar(value : String, unit : String) -> ScalarValue {
  { value: value.trim().to_owned(), unit: unit.trim().to_owned() }
}

///|
fn decimal_scaled(text : String) -> Int? {
  let s = text.trim()
  if s == "" {
    return None
  }
  let negative = s.has_prefix("-")
  let body = if negative || s.has_prefix("+") { s[1:] } else { s[:] }
  let parts = body.split(".").collect()
  if parts.length() > 2 {
    return None
  }
  let whole_option = if parts[0] == "" {
    Some(0)
  } else {
    parse_digits(parts[0])
  }
  let whole = match whole_option {
    Some(v) => v
    None => return None
  }
  let fraction_option = if parts.length() == 1 {
    Some(0)
  } else {
    parse_fraction(parts[1])
  }
  let fraction = match fraction_option {
    Some(v) => v
    None => return None
  }
  let result = whole * 1000 + fraction
  Some(if negative { -result } else { result })
}

///|
fn parse_digits(text : StringView) -> Int? {
  if text.length() == 0 {
    return None
  }
  let mut value = 0
  for c in text {
    if c < '0' || c > '9' {
      return None
    } else {
      value = value * 10 + (c.to_int() - '0'.to_int())
    }
  }
  Some(value)
}

///|
fn parse_fraction(text : StringView) -> Int? {
  if text.length() == 0 {
    return Some(0)
  }
  if text.length() > 3 {
    return None
  }
  let digits = match parse_digits(text) {
    Some(v) => v
    None => return None
  }
  let mut scale = 3 - text.length()
  let mut value = digits
  while scale > 0 {
    value *= 10
    scale -= 1
  }
  Some(value)
}

///|
pub fn parse_scalar(text : String) -> Result[ScalarValue, ScalarError] {
  let fields : Array[String] = []
  for field in text.trim().split(" ") {
    if field.trim() != "" {
      fields.push(field.trim().to_owned())
    }
  }
  if fields.length() < 1 {
    return Err(EmptyScalar)
  }
  if decimal_scaled(fields[0]) is None {
    return Err(InvalidNumber)
  }
  let unit = if fields.length() == 1 { "1" } else { fields[1] }
  if unit_lookup(unit) is None {
    return Err(UnknownUnit(unit))
  }
  Ok(scalar(fields[0], unit))
}

///|
fn scaled_string(value : Int) -> String {
  let sign = if value < 0 { "-" } else { "" }
  let absolute = if value < 0 { -value } else { value }
  let whole = absolute / 1000
  let fraction = absolute % 1000
  if fraction == 0 {
    "\{sign}\{whole}.000"
  } else {
    "\{sign}\{whole}.\{fraction}"
  }
}

///|
pub fn convert_scalar(
  value : ScalarValue,
  target : String,
) -> Result[ScalarValue, ScalarError] {
  let source_spec = unit_lookup(value.unit)
  let target_spec = unit_lookup(target)
  if source_spec is None {
    return Err(UnknownUnit(value.unit))
  }
  if target_spec is None {
    return Err(UnknownUnit(target))
  }
  if source_spec.unwrap().dimension != target_spec.unwrap().dimension {
    return Err(IncompatibleUnits(value.unit, target))
  }
  let base = decimal_scaled(value.value)
  if base is None {
    return Err(InvalidNumber)
  }
  let source_factor = decimal_scaled(source_spec.unwrap().to_base)
  let target_factor = decimal_scaled(target_spec.unwrap().to_base)
  let source_offset = decimal_scaled(source_spec.unwrap().offset)
  let target_offset = decimal_scaled(target_spec.unwrap().offset)
  if source_factor is None ||
    target_factor is None ||
    source_offset is None ||
    target_offset is None {
    return Err(InvalidConversion)
  }
  let base_value = base.unwrap() * source_factor.unwrap() / 1000 +
    source_offset.unwrap()
  let converted = (base_value - target_offset.unwrap()) *
    1000 /
    target_factor.unwrap()
  Ok(scalar(scaled_string(converted), target))
}
