# Prints in species case!

species_case() takes a string of two words and prints them in "species
case", genus-species scientific name format: john smith == J. smith

## Usage

``` r
species_case(name)
```

## Arguments

- name:

  A character string containing two words, e.g., a genus and species
  name, which will be converted to proper "species case".

## Value

A character string with the input name formatted in species case.

## Examples

``` r
# Will print the species name in the proper format
species_case("elymus virginicus")
#> E. virginicus
species_case("Elymus VIRGINICUS")
#> E. virginicus

# Will print your name in species case!
species_case("john smith")
#> J. smith
```
