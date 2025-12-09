test_that("`densiometer` returns an error when input is not a data frame", {
  df <- data.frame(dens_A = 95, dens_B = 96, dens_C = 93, dens_D = 91)
  expect_no_error(densiometer(df, dens_A:dens_D))
  expect_error(densiometer(dens_A:dens_D))
  expect_error(densiometer(c(dens_A = 95, dens_B = 96, dens_C = 93, dens_D = 91)))
})

test_that("`densiometer` creates a new column for overstory density", {
  df <- data.frame(dens_A = 95, dens_B = 96, dens_C = 93, dens_D = 91)
  result <- densiometer(df, dens_A:dens_D)
  expect_true("over_dens" %in% colnames(result))
  expect_false("over_dens" %in% colnames(df))
})

test_that("`densiometer` calculates overstory density from densiometer readings", {
  df <- data.frame(dens_A = 95, dens_B = 96, dens_C = 93, dens_D = 91)
  result <- densiometer(df, dens_A:dens_D)
  expect_true(result[1, "over_dens"] == 2.5)
})

test_that("`densiometer` omits NA readings from over_dens calculation", {
  df <- data.frame(dens_A = 95, dens_B = 96, dens_C = NA, dens_D = 91)
  result <- densiometer(df, dens_A:dens_D)
  expect_true(all.equal(result[1, "over_dens"], 2.24))
})
