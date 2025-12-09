\name{species_case}
\alias{species_case}
\title{Prints in species case!}
\description{species_case() takes a string of two words and prints them in "species case", genus-species scientific name format: john smith == J. smith}
\usage{
  species_case(name)
}
\arguments{
  \item{name}{A character string containing two words, e.g., a genus and species name, 
  which will be converted to proper "species case".}
}
\value{A character string with the input name formatted in species case.}
\examples{
# Will print the species name in the proper format
species_case("elymus virginicus")
species_case("Elymus VIRGINICUS")

# Will print your name in species case!
species_case("john smith")
}
