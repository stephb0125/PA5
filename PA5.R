# cop2073 PA5
# Stephanie Johnson
# 10/4/2026
# PA 5 CAT instead of matrix

# descriptive example of the cat() function
# The cat() function concatenates values and prints them to the console.
cat("A", "B", "C", sep = " ")

# Create a data frame
arg_matching <- data.frame(
  "Type" = c("Partial", "Positional", "Exact"),
  "Example" = c(
    paste0(
      'cat("A", fil = "output.txt")'
    ),
    paste0(
      'cat("A", "B", "C")'
    ),
    paste0(
      'cat("A", file = "output.txt", sep = " ")'
    )
  )
)

# write to a CSV file
write.csv(
  x = arg_matching,
  file = "cat-argmatching.csv",
  row.names = FALSE
)

# delete from the global environment
rm(arg_matching)

# read the CSV file to create a data frame
arg_matching <- read.csv(
  file = "cat-argmatching.csv"
)

# displaying the data frame
View(arg_matching)

