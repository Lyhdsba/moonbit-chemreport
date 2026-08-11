# Benchmark Data

moonbit-chemreport includes a small, source-aware benchmark set for testing
report construction, validation, aggregation, and stable export. It is
intentionally not a thermophysical-property database and does not fit or
extrapolate any correlation.

## NIST SRD 69 Antoine Records

The following coefficient records come from the NIST Chemistry WebBook, SRD 69.
NIST defines the correlation as:

```text
log10(P / bar) = A - B / (T + C)
```

T is in kelvin and each record is valid only over the stated range.

| Case | CAS | Range (K) | A | B | C | Reference |
| --- | --- | --- | ---: | ---: | ---: | --- |
| Water | 7732-18-5 | 344 to 373 | 5.08354 | 1663.125 | -45.622 | Bridgeman and Aldrich, 1964 |
| Ethanol | 64-17-5 | 364.8 to 513.91 | 4.92531 | 1432.526 | -61.819 | Ambrose, Sprake, and Townsend, 1975 |
| Benzene | 71-43-2 | 333.4 to 373.5 | 4.72583 | 1660.652 | -1.461 | Eon, Pommier, and Guiochon, 1971 |

Source pages:

- [Water, NIST Chemistry WebBook](https://webbook.nist.gov/cgi/cbook.cgi?ID=C7732185&Type=ANTOINE)
- [Ethanol, NIST Chemistry WebBook](https://webbook.nist.gov/cgi/cbook.cgi?ID=C64175&Type=ANTOINE)
- [Benzene, NIST Chemistry WebBook](https://webbook.nist.gov/cgi/cbook.cgi?ID=C71432&Type=ANTOINE)

The MoonBit API is nist_vapor_pressure_benchmarks() and
nist_benchmark_bundle(). Every case includes the coefficient values as report
inputs and results, the correlation range as an assumption, a
"do not extrapolate" caution, and the NIST source URL.

The records are included for reproducible software tests and integration
examples. They do not replace a validated property package, process simulator,
or engineering design review.
