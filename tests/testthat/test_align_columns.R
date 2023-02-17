test_that("Invalid input throws expected errors", {
  expect_error(align_columns(2))
  expect_error(align_columns(c("d", "e")))
  expect_error(align_columns("clr"))
})

test_that("Output is expected", {
  expect_equal(align_columns("l"), ":-----")
  expect_equal(align_columns("r"), "-----:")
  expect_equal(align_columns("c"), ":-----:")
})
