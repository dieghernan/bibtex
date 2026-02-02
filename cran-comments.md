## Test environments

* local macOS (aarch64-apple-darwin24.2.0), R 4.5.2
* GitHub Actions: ubuntu-latest (R devel, release, oldrel-1)
* GitHub Actions: macos-latest (R release)
* GitHub Actions: windows-latest (R release)

## R CMD check results

0 errors | 0 warnings | 1 note

* checking CRAN incoming feasibility ... NOTE
  Maintainer: 'James Joseph Balamuta <balamut2@illinois.edu>'

## Reverse dependencies

We checked 14 reverse dependencies (12 from CRAN + 2 from Bioconductor), comparing R CMD check results across CRAN and dev versions of this package.

* We saw 0 new problems
* We failed to check 0 packages

## Changes in this version

* Fixed `read.bib()` silently returning empty `bibentry()` when entries have trailing whitespace after closing brace (#59).
* Added snapshot test variants for R-devel to handle `bibentry` formatting changes.
* Migrated `inst/NEWS.Rd` to `NEWS.md`.
