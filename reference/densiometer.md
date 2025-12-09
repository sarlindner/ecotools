# Calculates overstory density from densiometer readings

densiometer() takes a data frame containing readings from a spherical
crown densiometer, averages them, and uses the densiometer conversion
factor to calculate the overstory/canopy density at the given field
location or site of observation.

## Usage

``` r
densiometer(data, ...)
```

## Arguments

- data:

  Data frame of field data.

- ...:

  Columns in the data frame containing densiometer readings. Can add any
  number of readings to be averaged.

## Value

A data frame with the additional column, "over_dens", containing the
computed overstory density values.

## Examples

``` r
# Example data frame with one row of data
df <- data.frame(dens_A = 95, dens_B = 96, dens_C = 93, dens_D = 91)

# Function with inputs
df <- densiometer(df, dens_A:dens_D)

# Data frame will now contain one column, "over_dens", with computed value.
print(df)
#>   over_dens
#> 1       2.5
```
