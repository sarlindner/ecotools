species_case <- function(name) {
  names <- str_split_1(name, " ")
  if (length(names) == 2 &&
      all(sapply(names, is.character))) {
    genus <- str_to_upper(substr(names[1], 1, 1))
    species <- str_to_lower(names[2])
    cat(paste0(genus, "."), species)
  } else {
    warning("The input is not in genus-species name format.")
  }
}
