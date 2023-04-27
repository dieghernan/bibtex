test_that("Unbalanced braces", {
  file <- system.file("bib/unbalanced_braces.bib", package = "bibtex")
  expect_message(
    expect_error(read.bib(file), "Invalid bib file"),
    "Unbalanced braces on entry"
  )
})


test_that("Unable to recover after encountering two consecutive TOKEN_LBRACE { 42", {
  file <- system.file("bib/unable_recover_42.bib", package = "bibtex")
  expect_message(
    expect_error(read.bib(file)),
    "Unbalanced braces on entry"
  )
})
