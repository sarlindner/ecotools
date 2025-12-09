test_that("`obs_sum` returns an error when input is not a data frame", {
  df <- data.frame(binary_col = c(1, 0, 1, 1, 0, 0, 1, 0))
  expect_no_error(obs_sum(df, binary_col))
  expect_error(obs_sum(c(1, 0, 1, 1, 0, 0, 1, 0)))
})

test_that("`obs_sum` summarizes binary column correctly", {
  df <- data.frame(binary_col = c(1, 0, 1, 1, 0, 0, 1, 0))
  expect_output(obs_sum(df, binary_col), "present: 4/8; 50%\nabsent: 4/8; 50%")
})

test_that("obs_sum handles missing values correctly", {
  df <- data.frame(binary_col = c(1, 0, 1, NA, 0, 0, 1, NA))
  expect_output(obs_sum(df, binary_col), "present: 3/6; 50%\nabsent: 3/6; 50%")
})


