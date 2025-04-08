# load in data
df <- mtcars

# run plot function
my_plot <- plot_scatter(
   x = 'disp', 
   y = 'cyl', 
   group = 'gear', 
   data = df
   )


# return plot
print(my_plot)
