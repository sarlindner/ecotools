# Models binary field data with an environmental variable

model_var() takes presence/absence data and models the relationship
between the binary data and some environmental variable for each
individual observation - such as a species, location, or occurance. The
function will produce a simple scatter point plot with a generalized
linear regression model from all of the observations specified to get a
quick overview of rough significance.

## Usage

``` r
model_var(data, variable, binary_col, var_label = variable, binary_label = "presence/absence", title = "")
```

## Arguments

- data:

  Binary field data.

- variable:

  Environmental variable. Entered as "column_name".

- binary_col:

  Binary data - ones and zeroes. Entered as "column_name".

- var_label:

  Label for variable. Default is name of \`variable\`.

- binary_label:

  Label for binary column. Default is "presence/absence".

- title:

  Title. Default is empty.

## Value

A plot modeling the relationship between an envrionmental variable and
the ecological presence or absence.

## Examples

``` r
# Example binary field data
df <- data.frame(
  temp = c(40, 42, 44, 46, 48, 50, 52, 54, 56, 58),
  binary_col = c(0, 0, 0, 1, 0, 1, 1, 1, 1, 1)
)

# Creates plot
plot <- model_var(df, "temp", "binary_col", var_label = "Temperature F")
```
