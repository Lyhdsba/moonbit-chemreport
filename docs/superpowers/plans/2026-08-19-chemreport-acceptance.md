# ChemReport Acceptance Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Deliver a genuinely useful MoonBit chemical-report library with over 8,000 counted production `.mbt` source lines, strong boundary tests, reproducible benchmarks, mature documentation, and stable CI suitable for hackathon acceptance.

**Architecture:** Keep the existing root package as the public report facade and add cohesive files for units, parsing, query/filtering, audit/diff, tabular interchange, validation policies, and engineering templates. Preserve the existing `ChemReport` model and exporters; new modules compose reports rather than embedding a process simulator. Keep benchmarks deterministic and offline, with a CLI command that prints machine-readable summary rows.

**Tech Stack:** MoonBit stable toolchain, standard library only, GitHub Actions, deterministic in-repository benchmark fixtures.

---

### Task 1: Establish baseline and acceptance accounting

**Files:**
- Create: `docs/acceptance.md`
- Create: `docs/benchmarks.md`
- Modify: `.github/workflows/test.yml`

- [ ] Record baseline commands and a script-free production line-count definition that excludes `_build`, tests, docs, and generated interfaces.
- [ ] Document benchmark methodology, fixture provenance, warm-up policy, and limitations without inventing performance claims.
- [ ] Add CI checks for native check/build, test, format, interface drift, and production source-line accounting.

### Task 2: Add unit and scalar normalization primitives

**Files:**
- Create: `units.mbt`
- Create: `scalars.mbt`
- Create: `units_wbtest.mbt`

- [ ] Write failing tests for whitespace normalization, decimal parsing, unit dimensions, conversions, invalid units, zero/negative values, and precision boundaries.
- [ ] Implement typed `UnitDimension`, `UnitSpec`, `ScalarValue`, conversion tables, safe parsing, and formatting.
- [ ] Keep conversion failures explicit and make no claims about unsupported chemical properties.

### Task 3: Add report querying, sorting, and projection

**Files:**
- Create: `query.mbt`
- Create: `query_wbtest.mbt`

- [ ] Test empty reports, duplicate names, case sensitivity, stable ordering, severity filters, and missing sections.
- [ ] Implement reusable selectors for inputs/results/warnings/sources, stable sorting, and compact report projections used by CLI and exports.

### Task 4: Add audit trail and report comparison

**Files:**
- Create: `audit.mbt`
- Create: `diff.mbt`
- Create: `audit_wbtest.mbt`

- [ ] Test identical reports, title changes, section additions/removals, reordered arrays, changed values, and hazard transitions.
- [ ] Implement deterministic audit events, report fingerprints, structural diff categories, and a human-readable diff summary.

### Task 5: Add tabular interchange and ingestion-safe helpers

**Files:**
- Create: `csv.mbt`
- Create: `jsonl.mbt`
- Create: `tabular_wbtest.mbt`

- [ ] Test quoted commas, quotes, newlines, empty cells, malformed rows, round trips, and Unicode text.
- [ ] Implement RFC-4180-style field escaping, report summary CSV export, JSONL export, and strict row validation without external dependencies.

### Task 6: Add validation policies and engineering templates

**Files:**
- Create: `policy.mbt`
- Create: `templates.mbt`
- Create: `templates_wbtest.mbt`

- [ ] Test policy thresholds for warnings, required source URLs, minimum formulas, unit presence, and deterministic template contents.
- [ ] Implement configurable quality policies and reusable report constructors for heat exchanger duty, pump power, flash split, and stoichiometric yield summaries.

### Task 7: Add deterministic benchmark runner and boundary corpus

**Files:**
- Create: `benchmark_runner.mbt`
- Create: `benchmark_runner_wbtest.mbt`
- Modify: `benchmarks.mbt`
- Modify: `cmd/main/main.mbt`

- [ ] Test benchmark case registration, repeat counts, empty suites, stable aggregation, and checksum-like output.
- [ ] Implement offline benchmark execution over real library operations, report elapsed samples as observed data, and expose a concise CLI summary.
- [ ] Expand edge-case tests for every public constructor/exporter/validator added in Tasks 2–6.

### Task 8: Documentation, CI, toolchain, and release metadata

**Files:**
- Modify: `README.mbt.md`
- Modify: `README.md`
- Modify: `moon.mod`
- Modify: `.github/workflows/test.yml`
- Create: `.github/workflows/benchmark.yml`
- Create: `CHANGELOG.md`

- [ ] Restructure README around positioning, capabilities, quick start, CLI, architecture, benchmarks, tests, CI, and license; remove internal application/acceptance wording.
- [ ] Pin CI to the current stable installer path while checking all supported targets and using community workflow conventions.
- [ ] Add release notes and Mooncakes publishing instructions based on the actual package metadata.

### Task 9: Verification and publication

- [ ] Run `moon check --target all`, `moon fmt --check`, `moon info`, `moon test --target all`, and the benchmark CLI.
- [ ] Recount production `.mbt` lines from tracked files and report the exact count; do not count `_build`, tests, or generated interfaces.
- [ ] Inspect GitHub identity, default branch, remote history, and Actions status with `gh`; inspect Mooncakes login/package metadata with `moon`.
- [ ] Commit intentionally as the authenticated account, push `main`, and publish to Mooncakes only after all checks pass.
