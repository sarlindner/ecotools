model_var <- function(data,
                      variable,
                      binary_col,
                      var_label = variable,
                      binary_label = "presence/absence",
                      title = "") {
  ggplot(data, aes(x = .data[[variable]], y = .data[[binary_col]])) +
    geom_point() +
    geom_smooth(method = glm,
                formula = y ~ x,
                method.args = list(family = binomial(link = "logit")),
                se = FALSE,
                na.rm = TRUE,
                color = "#0C7BDC",
                linewidth = 0.50) +
    scale_y_continuous(breaks = c(0, 1)) +
    labs(
      x = var_label,
      y = binary_label,
      title = title
    )
}



