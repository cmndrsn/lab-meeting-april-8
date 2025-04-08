# source plotting function
source("R/plot-function.R")

# load in data
load("data/new_data.Rda")

# assign data to variable
my_df <- mtcars

# run plot function
my_plot <- plot_scatter(
   x = 'disp', 
   y = 'cyl', 
   group = 'gear', 
   data = my_df
   )


# return plot
print(my_plot)
