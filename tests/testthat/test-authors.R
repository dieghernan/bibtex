test_that("Smith, Jr., John", {
  authors <- "Smith, Jr., John"
  parsed <- bibtex:::arrange_authors(authors)
  expect_equal(length(parsed$family), 2L)
})

test_that("Smith, Jr., John and Mary {Tyler Moore}", {
  authors <- "Smith, Jr., John and Mary {Tyler Moore}"
  parsed <- bibtex:::arrange_authors(authors)
  expect_match(parsed[[2]]$family, "Tyler Moore")
  expect_snapshot_output(dput(parsed))
})

test_that("Smith, Jr., John and {MATLAB, Inc.}", {
  authors <- "Smith, Jr., John and {MATLAB, Inc.}"
  parsed <- bibtex:::arrange_authors(authors)
  expect_match(parsed[[2]]$family, "MATLAB, Inc.")
  expect_equal(length(unlist(parsed$family[1])), 2L)
  expect_snapshot_output(dput(parsed))
})

test_that("Smith, John Paul and {MATLAB, Inc.}", {
  authors <- "Smith, John Paul and {MATLAB, Inc.}"
  parsed <- bibtex:::arrange_authors(authors)
  expect_equal(length(unlist(parsed$given[1])), 2L)
  expect_snapshot_output(dput(parsed))
})

test_that("{de Gama}, Vasco", {
  authors <- "{de Gama}, Vasco"
  parsed <- bibtex:::arrange_single_author(authors)
  expect_equal(length(parsed$family), 2L)
  expect_snapshot_output(dput(parsed))
})

test_that("Mark von Bommel", {
  authors <- "Mark von Bommel"
  parsed <- bibtex:::arrange_single_author(authors)
  expect_equal(length(parsed$family), 2L)
  expect_snapshot_output(dput(parsed))
})

test_that("de la Soul, Posdnous", {
  authors <- "de la Soul, Posdnous"
  parsed <- bibtex:::arrange_single_author(authors)
  expect_equal(length(parsed$family), 2L)
  expect_snapshot_output(dput(parsed))
})

test_that("des White, Jr., Walter", {
  authors <- "des White, Jr., Walter"
  parsed <- bibtex:::arrange_single_author(authors)
  expect_equal(length(parsed$family), 3L)
  expect_snapshot_output(dput(parsed))
})
