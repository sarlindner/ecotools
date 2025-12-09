test_that("`model_time` returns a plot", {
  df <- data.frame(
    date =c("4/17", "4/18", "4/19", "4/20", "4/21"),
    temp = c(40, 60, 42, 45, 52),
    binary_col = c(0, 1, 0, 0, 1)
  )
  plot <- model_time(df, "date", "temp", "binary_col")
  expect_true(is.ggplot(plot))
})
