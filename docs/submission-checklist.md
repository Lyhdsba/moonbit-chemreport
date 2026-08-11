# MoonBit Hackathon Submission Checklist

- Repository name: `moonbit-chemreport`.
- Default branch: `main`.
- License: Apache-2.0, stored in `LICENSE`.
- README: `README.mbt.md`, symlinked as `README.md`.
- Public API interface files: `pkg.generated.mbti` and `cmd/main/pkg.generated.mbti`.
- MoonBit source scale: library files cover model, validation, metrics, bundle
  aggregation, Markdown, HTML, JSON, worked examples, NIST benchmarks, tests,
  and CLI entry point.
- Source statement: original project code, with only `moon new` scaffold and
  Apache-2.0 license text as non-original boilerplate.
- CI: `.github/workflows/test.yml` runs format, check, info, and tests on
  Linux, macOS, and Windows.
- Local validation: run `moon fmt --check`, `moon check --deny-warn`,
  `moon info`, and `moon test --deny-warn` before submission.
- Development trace: more than ten focused commits on `main`.
- Proposal material: `docs/proposal.md` is a one-page Markdown version suitable
  for conversion to PDF if the form requires PDF upload.
- Benchmark provenance: docs/benchmarks.md records the NIST SRD 69 sources,
  coefficient ranges, and non-extrapolation limitation.
- Contributor policy: keep commits under the repository owner account only; do
  not add generated co-authors or placeholder maintainers.
