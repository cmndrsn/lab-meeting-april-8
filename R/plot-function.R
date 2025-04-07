#' Make scatter-plot using ggplot
#' 
#' @description
#' Creates a scatterplot with a LOESS curve.
#' "group" argument colour-codes the plot by a grouping variable.
#' 
#'
#' @param x String. Name of column containing x variable.
#' @param y String. Name of column containing y variable.
#' @param group String. Name of column groups in terms of colour.
#'
#' @returns ggplot object.
#' @export
#'
#' @examples
#' plot_scatter(
#'   x = 'disp', 
#'   y = 'cyl', 
#'   group = 'gear', 
#'   data = mtcars
#'   )
plot_scatter <- function(
    x,
    y,
    group,
    data
) {
  ggplot2::ggplot(
    data = data,
    ggplot2::aes(
      .data[[x]],
      .data[[y]],
      colour = .data[[group]],
    )
  ) +
    ggplot2::geom_point()+
    ggplot2::geom_smooth()+
    ggplot2::theme_classic()
}
