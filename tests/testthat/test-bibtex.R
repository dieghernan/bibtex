test_that("arrange.single.author does not add extra trailing space (#7)", {
  given <- bibtex:::arrange_single_author("Jean-Claude {Van Damme}")$given
  expect_false(grepl("[[:space:]]$", given))
})

test_that("read.bib Ignores entry but does not stop w invalid ... (#12)", {
  f <- file.path(system.file("bib", "badFormat.bib", package = "bibtex"))
  bib <- read.bib(f)
  expect_true(length(bib) == 1L)
})

test_that("read.bib can use ? in key (#9)", {
  tmp <- tempfile(fileext = ".bib")
  entry <- paste0(
    "@Misc{key?,\n author = \"Smith, Bob\",\n ",
    "title = \"The Title\",\n year = 2012, \n}"
  )
  writeLines(entry, tmp)
  out <- read.bib(tmp)
  expect_equal(names(out), "key?")
})

test_that("make.bib.entry can generate year from date (#15)", {
  tmp <- tempfile(fileext = ".bib")
  entry <- "@Article{newspaper,
    author = {Author Smith},
    title  = {Article title},
    date   = {2016-12-21},
    journal = {Newspaper name},
  }"
  writeLines(entry, tmp)
  out <- read.bib(tmp)
  expect_equal(out$year, "2016")
})
