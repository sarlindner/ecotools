obs_sum <- function(data, binary_col) {
  if (!is.data.frame(data)) {
    stop("Input must be a data frame.")
  }
  summary <- data |>
    filter(!is.na({{binary_col}})) |>
    group_by({{binary_col}}) |>
    summarize(total = n()) |>
    arrange(desc({{binary_col}}))
  pres <- as.integer(summary[1, 2])
  abs <- as.integer(summary[2, 2])
  obs <- sum(summary$total)
  cat("present:",
      paste0(pres, "/", obs, ";"),
      paste0((round(pres/obs, digits = 4))*100,"%", "\n")
  )
  cat("absent:",
      paste0(abs, "/", obs, ";"),
      paste0((round(abs/obs, digits = 4))*100, "%")
  )
}
