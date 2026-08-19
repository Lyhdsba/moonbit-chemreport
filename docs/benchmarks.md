# Benchmark protocol

The benchmark suite measures real library work: Markdown and JSON export over
the checked-in report fixtures. It performs a fixed number of iterations and
reports total output bytes, case count, and publishable-case count.

Run it with:

```bash
moon run cmd/main
```

The NIST SRD 69 records are source-aware fixtures for integration coverage, not
a claim that this package is a thermophysical-property database. The runner is
deterministic in workload and output size; elapsed wall-clock time is dependent
on the host and is intentionally not presented as a universal speed claim.
