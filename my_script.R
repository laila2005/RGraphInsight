#!/usr/bin/env Rscript

library(ggplot2)
# Step 1: Input data
cat("Enter a set of numbers (separated by spaces): ")
numbers <- scan(text = readline(), quiet = TRUE)

# Step 2: Calculate range and width
range <- max(numbers) - min(numbers)
cat("Please enter the value of k: \n")
k <- as.integer(readline())
width <- ceiling(range / k)  # Adjusted to use ceil() function

# Step 3: Create frequency table
breaks <- seq(min(numbers), max(numbers) + width, by = width)
freq_table <- cut(numbers, breaks = breaks, right = FALSE, include.lowest = TRUE)
freq_counts <- table(freq_table)
relative_freq <- prop.table(freq_counts)
midpoints <- (breaks[-1] + breaks[-length(breaks)]) / 2 

# Step 4: Print table 
cat("Class Limit\tMidpoint\tFrequency\tRelative Frequency\n")
for (i in 1:length(breaks)) {
  cat(paste0("[", breaks[i], ",", breaks[i+1], ")\t\t", midpoints[i], "\t\t", freq_counts[i], "\t\t", round(relative_freq[i], 4), "\n"))
}

# Step 5: Ask user what data visualization they want
cat("Choose a visualization type:\n")
cat("1. Histogram\n")
cat("2. Frequency Polygon\n")
choice <- as.integer(readline("Enter your choice (1 or 2): "))

# Step 6: Generate Visualization (Create histogram or frequency polygon)
if (!is.na(choice) && choice %in% c(1, 2)) {
  if (choice == 1) {
    ggplot(data.frame(x = numbers), aes(x)) +
      geom_histogram(binwidth = width, boundary = 0.9, fill = "pink", color = "black") +
      scale_x_continuous(breaks = breaks, labels = breaks) +
      labs(x = "Class Limit", y = "Frequency", title = "Histogram")
  } else if (choice == 2) {
    # Create the frequency polygon
    ggplot(data.frame(x = numbers), aes(x)) +
      geom_freqpoly(bins = k, binwidth = width,  boundary = 0.9, color = "blue") +
      labs(title = "Frequency Polygon", x = "Midpoint", y = "Frequency")
  }
} else {
  print("Invalid choice. Please select 1 or 2.\n")
}
