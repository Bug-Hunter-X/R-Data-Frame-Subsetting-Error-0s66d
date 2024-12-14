```r
#Corrected code using %in% operator for safer subsetting

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D")

#Check if all columns exist in the dataframe
cols_exist <- cols_to_select %in% names(df)

if(all(cols_exist)){  #subset only if all columns exist
  subset_df <- df[, cols_to_select]
} else {
  missing_cols <- cols_to_select[!cols_exist]
  message(paste("Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
  #Handle missing columns - you might choose to return NULL, subset with existing columns, or throw an error
  subset_df <- df[, cols_to_select[cols_exist]]
}

print(subset_df)
```