# load in data
df <- mtcars

# run plot function
my_plot <- plot_scatter(
   x = 'disp', 
   y = 'cyl', 
   group = 'gear', 
   data = mtcars
   )


# return plot
print(my_plot)
