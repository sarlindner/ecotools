test_that("`model_var` returns a plot", {
  df <- data.frame(
    temp = c(40, 60, 42, 45, 52),
    binary_col = c(0, 1, 0, 0, 1)
  )
  plot <- model_var(df, "temp", "binary_col")
  expect_true(is.ggplot(plot))
})





