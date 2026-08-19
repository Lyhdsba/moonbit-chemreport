# moonbit-chemreport

MoonBit chemical-engineering calculations often start in focused packages:
reactor sizing, distillation, mass balance, energy balance, property lookup, and
equipment checks. `moonbit-chemreport` provides the report layer that those
packages can share: a stable model for inputs, assumptions, formulas, results,
warnings, and data sources, plus Markdown, HTML, and JSON exporters.

The project is intentionally small at the boundary and expandable inside. It is
not a process simulator. It is the part a simulator, spreadsheet importer, or
operator-facing CLI can call after the numbers are already computed.

## Core capabilities

- A reusable `ChemReport` data model.
- Constructors for quantities, calculation inputs, assumptions, formulas,
  results, warnings, and data sources.
- Markdown export for lab notes, GitHub issues, and handoff documents.
- HTML export for dashboards and static report previews.
- JSON export for integration tests, web frontends, and downstream tools.
- Validation helpers that catch missing and empty report fields and highlight
  hazard-level warnings.
- ReportMetrics for completeness counts and ReportBundle for batch validation,
  aggregate metrics, and combined Markdown/JSON output.
- Worked examples for mass balance, energy balance, binary distillation, and
  reactor conversion.
- Three NIST SRD 69 Antoine-equation benchmark records for water, ethanol, and
  benzene, each carrying CAS number, temperature range, coefficient values, and
  source URL.
- Unit-aware scalar parsing and conversion for common engineering dimensions.
- A searchable catalog of 980 engineering metrics and review contracts.
- Deterministic report comparison, quality policies, CSV summaries, and JSONL.

## CLI

```bash
moon run cmd/main
```

The CLI prints a Markdown example followed by the cited NIST benchmark bundle.
The library benchmark runner measures export workload and output size locally;
it does not make hardware-independent performance claims.

## Quick Start

```bash
moon check --deny-warn
moon test --deny-warn
moon run cmd/main
```

The CLI prints the built-in CSTR mass-balance report as Markdown.

It also prints the NIST benchmark bundle summary so the repository has a
repeatable, source-aware data path that can be exercised without network access.

## API Sketch

```mbt nocheck
///|
let r = report(
  "CSTR A-101 Mass Balance",
  summary="A stable report record for a reactor inlet/outlet balance.",
  inputs=[
    input(
      "feed flow",
      quantity("100.0", "kmol/h"),
      note="measured at battery limit",
    ),
  ],
  assumptions=[assumption("steady state", "accumulation term is zero")],
  formulas=[formula("A in", "F_A,in = F_feed * z_A", ["F_feed", "z_A"])],
  results=[
    result("A feed", quantity("42.0", "kmol/h"), procedure="100.0 * 0.42"),
  ],
  warnings=[caution("conversion target should be reconciled before scale-up")],
  sources=[source("design basis", "internal design basis document")],
)

///|
let markdown = r.to_markdown()

///|
let html = r.to_html_document()

///|
let json = r.to_json()
```

## Architecture

- `model.mbt`: report records and constructors.
- `validate.mbt`: consistency checks and blocking issue detection.
- `markdown.mbt`: Markdown renderer.
- `html.mbt`: HTML fragment/document renderer.
- `json_export.mbt`: stable JSON string renderer.
- `metrics.mbt`: completeness metrics for one report.
- `bundle.mbt`: batch report validation, aggregation, and export.
- `examples.mbt`: mass-balance, energy-balance, distillation, and reactor
  examples.
- `benchmarks.mbt`: NIST SRD 69 Antoine benchmark records.
- `units.mbt` and `scalars.mbt`: dimensions, unit catalog, parsing, and conversion.
- `query.mbt`, `diff.mbt`, `policy.mbt`: discovery, comparison, and quality gates.
- `csv.mbt`, `benchmark_runner.mbt`: tabular interchange and deterministic workloads.
- `engineering_catalog.mbt`, `engineering_contracts_v2.mbt`: metric templates and review contracts.
- `cmd/main`: simple runnable entry point.

## Design scope

The package targets reusable engineering infrastructure. It avoids reimplementing chemical calculations
already owned by future domain packages; instead it supplies the common reporting
surface those packages need to present assumptions, formulas, warnings, and
source traceability in one place.

Benchmark data is deliberately kept as report fixtures rather than a new
property database, so the project complements future chemical calculation
packages while keeping the report schema independent.

## Benchmarks, tests, and CI

The repository is prepared for the current MoonBit toolchain flow:

```bash
moon fmt --check
moon check --deny-warn
moon info
moon test --deny-warn
```

CI installs the current stable MoonBit toolchain and checks formatting,
all-target type checking, native compilation, interface drift, tests, and the
production source accounting on Linux, macOS, and Windows. Benchmark provenance
and limitations are documented in [`docs/benchmarks.md`](docs/benchmarks.md).

## Source And Maintenance Notes

All source code in this repository is original for `moonbit-chemreport`, except
for the initial project scaffold generated by `moon new` and the Apache-2.0
license text. The worked-example numbers are demonstration data, not design
advice. The three Antoine coefficient records are source-aware benchmark
fixtures transcribed from NIST Chemistry WebBook SRD 69; see
`docs/benchmarks.md` for provenance, ranges, and limitations. The intended
maintenance path is to add typed adapters for MoonBit chemical-engineering
libraries as those packages appear, while keeping the core report schema stable.

## License

Apache-2.0.
