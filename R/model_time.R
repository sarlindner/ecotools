model_time <- function(data,
                       date,
                       variable,
                       binary_col,
                       x_lab = "date",
                       y_lab = variable,
                       title = "",
                       legend = "") {
  ggplot(data, aes(x = .data[[date]], y = .data[[variable]], group = 1)) +
    geom_line(linewidth = 0.50, color = "grey") +
    geom_point(aes(color = as.factor(.data[[binary_col]]))) +
    scale_color_manual(values = c("0" = "#FFC20A", "1" = "#0C7BDC")) +
    labs(
      x = x_lab,
      y = y_lab,
      title = title,
      color = legend
    )
}
