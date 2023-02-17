test_that("Invalid input throws expected errors", {
  # check that only dataframes work
  expect_error(df_to_qmd_table(1:10))
  expect_error(df_to_qmd_table(list(1, c(1,2,3))))
  # check that there is an error if the column names don't match the df cols
  expect_error(df_to_qmd_table(donut_data, column_names = "first"))
})


test_that("Output is as expected", {
  # simple table
  tbl_simple <- df_to_qmd_table(donut_data |> head())

  # table with headers
  headers <- donut_data |> names() |> toupper()
  tbl_w_header <- df_to_qmd_table(df = donut_data |> head(),
                                  column_names = headers)

  # table with alignment
  tbl_aligned <- df_to_qmd_table(df = donut_data |> head(),
                                 align = c("l", rep("r", 6)))

  expect_snapshot(tbl_simple)
  expect_snapshot(tbl_w_header)
  expect_snapshot(tbl_aligned)
})

