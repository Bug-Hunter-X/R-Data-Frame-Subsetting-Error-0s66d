```r
# This code attempts to subset a data frame using a character vector
# containing column names, but it fails due to incorrect subsetting.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D")
subset_df <- df[, cols_to_select]
```