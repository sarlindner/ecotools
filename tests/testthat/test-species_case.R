test_that("`species_case` prints a name in genus-species scientific format", {
  expect_output(species_case("elymus virginicus"), "E. virginicus")
  expect_output(species_case("Elymus Virginicus"), "E. virginicus")
  expect_output(species_case("ELYMUS VIRGINICUS"), "E. virginicus")
})

test_that("`species_case` warns when name is not given in correct format", {
  expect_warning(species_case("e lymus virginicus"))
  expect_warning(species_case("elymus"))
  expect_warning(species_case("wild rye grass"))
  expect_no_warning(species_case("e. virginicus"))
  expect_no_warning(species_case("common bee"))
})
