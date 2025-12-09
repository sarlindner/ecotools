# Summary of presence/absence observations

obs_sum() takes a data frame of field data and prints a summary of the
frequency of "present" vs. "absent" observations.

## Usage

``` r
obs_sum(data, binary_col)
```

## Arguments

- data:

  Binary field data.

- binary_col:

  Binary data - ones and zeroes. Entered as "column_name".

## Value

A string printed in the console giving the fraction and percentage of
"present" and "absent" observations.

## Examples

``` r
# Example data frame containing a column of binary data
df <- data.frame(binary_col = c(1, 0, 1, 1, 0, 0, 1, 0))

# Calculating a printing the percentage of each type of observation
obs_sum(df, binary_col)
#> present: 4/8; 50%
#> absent: 4/8; 50%
```
