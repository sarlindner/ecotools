densiometer <- function(data, ...) {
  if (!is.data.frame(data)) {
    stop("Input must be a data frame.")
  }
  cols <- select(data, ...)
  data |>
    mutate(over_dens = (100 - (rowMeans(cols, na.rm = TRUE))*1.04)) |>
    select(-all_of(names(cols)))
}


