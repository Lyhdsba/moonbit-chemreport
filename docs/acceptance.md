# Acceptance evidence

The acceptance checks use the following reproducible scope:

- production source: tracked `.mbt` files outside `_build`, excluding files
  ending in `_test.mbt` or `_wbtest.mbt`;
- validation: `moon fmt --check`, `moon check --target all --deny-warn`,
  `moon build --target native`, `moon info`, and `moon test --target all`;
- data: all benchmark fixtures are stored in the repository and do not require
  network access;
- compatibility: CI exercises Linux, macOS, and Windows runners.

The application source count is printed by CI rather than hard-coded in this
document.
