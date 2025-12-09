\name{obs_sum}
\alias{obs_sum}
\title{Summary of presence/absence observations}
\description{obs_sum() takes a data frame of field data and prints a summary of the frequency of "present" vs. "absent" observations.}
\usage{
obs_sum(data, binary_col)
}
\arguments{
  \item{data}{Binary field data.}
  \item{binary_col}{Binary data - ones and zeroes. Entered as "column_name".}
}
\value{A string printed in the console giving the fraction and percentage of
  "present" and "absent" observations.}
\examples{
# Example data frame containing a column of binary data
df <- data.frame(binary_col = c(1, 0, 1, 1, 0, 0, 1, 0))

# Calculating a printing the percentage of each type of observation
obs_sum(df, binary_col)
}
