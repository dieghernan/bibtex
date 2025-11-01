# https://ctan.javinator9889.com/biblio/bibtex/base/btxdoc.pdf

test_that("Test article-full", {
  bib <- system.file("bib/xampl_message.bib", package = "bibtex")
  skip_on_cran()
  expect_snapshot(s <- read.bib(bib))

  expect_length(s, 3)

  entry <- s["article-full"]

  expect_snapshot_output(toBibtex(entry))
})

test_that("Test book-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  expect_length(out, 13)

  entry <- out["book-full"]

  expect_snapshot_output(toBibtex(entry))
})

test_that("Test booklet-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  entry <- out["booklet-full"]

  expect_snapshot_output(toBibtex(entry))
})

test_that("Test conference-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  expect_warning(out["conference-full"])

  entry <- suppressWarnings(out["conference-full"])

  expect_length(entry, 0)
})

test_that("Test inbook-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  entry <- out["inbook-full"]

  expect_snapshot_output(toBibtex(entry))
})

test_that("Test incollection-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  entry <- out["incollection-full"]

  expect_snapshot_output(toBibtex(entry))
})

test_that("Test inproceedings-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  entry <- out["inproceedings-full"]

  expect_snapshot_output(toBibtex(entry))
})

test_that("Test manual-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  entry <- out["manual-full"]

  expect_snapshot_output(toBibtex(entry))
})

test_that("Test mastersthesis-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  entry <- out["mastersthesis-full"]

  expect_snapshot_output(toBibtex(entry))
})


test_that("Test misc-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  entry <- out["misc-full"]

  expect_snapshot_output(toBibtex(entry))
})

test_that("Test phdthesis-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  entry <- out["phdthesis-full"]

  expect_snapshot_output(toBibtex(entry))
})

test_that("Test proceedings-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  entry <- out["proceedings-full"]

  expect_snapshot_output(toBibtex(entry))
})

test_that("Test techreport-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  entry <- out["techreport-full"]

  expect_snapshot_output(toBibtex(entry))
})


test_that("Test unpublished-full", {
  bib <- system.file("bib/xampl_standard.bib", package = "bibtex")

  out <- read.bib(bib)

  entry <- out["unpublished-full"]

  expect_snapshot_output(toBibtex(entry))
})
