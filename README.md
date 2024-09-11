# RGraphInsight
RGraphInsight is a powerful R-based tool designed to provide interactive data summarization and visualization. This tool allows users to input a set of numbers, calculate statistical metrics, and generate insightful visualizations such as histograms and frequency polygons.

## Features

- Interactive Input: Enter a set of numbers and specify bin width for 
  analysis.
- Statistical Analysis: Calculate range, bin width, and create frequency -tables with midpoints.
- Customizable Visualization: Choose between a histogram or a frequency polygon to visualize your data.
  
## Getting Started

### Prerequisites
Ensure you have R installed on your system. You can download R from CRAN. Additionally, you'll need the ggplot2 package for visualization.

You can install ``ggplot2`` using:
```ruby
install.packages("ggplot2")
```
### Usage
1. **Run the Script:** Open a terminal and navigate to the directory containing RGraphInsight.R. Execute the script using:
```ruby
Rscript RGraphInsight.R
```
2. **Input Data:** You will be prompted to enter a set of numbers separated by spaces. After entering the numbers, you will be asked to provide a value for k, which defines the number of bins.

3. **View Results:** The script will calculate and display the range, bin width, and frequency table in the terminal. You will then choose between generating a histogram or a frequency polygon.

4. **Visualize Data:** The chosen visualization will be generated and displayed using ggplot2.

### Example
```ruby
Enter a set of numbers (separated by spaces): 
1 2 2 3 4 5 6 7 8 9
Please enter the value of k: 
5
```
You will then see a frequency table and a prompt to select your preferred visualization type. For example, choosing ``1`` will generate a histogram:


Or choosing ``2`` will generate a frequency polygon:


Code Overview
Input Data: The script prompts users to input a list of numbers and a value for ``k``.
Calculate Metrics: Computes range, width, and creates a frequency table.
Generate Visualizations: Uses ``ggplot2`` to create and display histograms or frequency polygons based on user choice.

## Contribution
Contributions are welcome! Feel free to open issues or submit pull requests to improve functionality, fix bugs, or enhance documentation.

## Contact
For any questions or feedback, please reach out to laila.mohamed.fikry@gmail.com
