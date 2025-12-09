# Models binary field data over time

model_time() takes presence/absence data from the field, such as camera
trap data, and models the relationship between the binary
presence/absence data and some kind of environmental variable over time.
The function will produce a simple line graph plot that provides an
overview of the relationship.

## Usage

``` r
model_time(data, date, variable, binary_col, x_lab = "date", y_lab = variable, title = "", legend = "")
```

## Arguments

- data:

  Binary field data.

- date:

  Date/timescale. Entered as "column_name".

- variable:

  Environmental variable. Entered as "column_name".

- binary_col:

  Binary data - ones and zeroes. Entered as "column_name".

- x_lab:

  x-axis label. Default is \`date\`.

- y_lab:

  x-axis label. Default is name of \`variable\`.

- title:

  Title. Default is empty.

- legend:

  Legend label. Default is empty.

## Value

A plot modeling the relationship between the time and an environmental
variable with the binary data coded by color.

## Examples

``` r
# Example camera trap data
df <- data.frame(
    date =c("4/17", "4/18", "4/19", "4/20", "4/21"),
    temp = c(40, 60, 42, 45, 52),
    binary_col = c(0, 1, 0, 0, 1)
)

# Creates plot
plot <- model_time(df, "date", "temp", "binary_col")
```
