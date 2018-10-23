\name{anno_barplot}
\alias{anno_barplot}
\title{
Barplot Annotation
}
\description{
Barplot Annotation
}
\usage{
anno_barplot(x, baseline = 0, which = c("column", "row"), border = TRUE, bar_width = 0.6,
    gp = gpar(fill = "#CCCCCC"), ylim = NULL, extend = 0.05, axis = TRUE,
    axis_param = default_axis_param(which),
    width = NULL, height = NULL)
}
\arguments{

  \item{x}{The value vector. The value can be a vector or a matrix. The length of the vector or the number of rows of the matrix is taken as the number of the observations of the annotation. If \code{x} is a vector, the barplots will be represented as stacked barplots.}
  \item{baseline}{baseline of bars. The value should be "min" or "max", or a numeric value. It is enforced to be zero for stacked barplots.}
  \item{which}{Whether it is a column annotation or a row annotation?}
  \item{border}{Wether draw borders of the annotation region?}
  \item{bar_width}{Relative width of the bars. The value should be smaller than one.}
  \item{gp}{Graphic parameters for points. The length of each graphic parameter can be 1, length of \code{x} if \code{x} is a vector, or number of columns of \code{x} is \code{x} is a matrix.}
  \item{ylim}{Data ranges. By default it is \code{range(x)} if \code{x} is a vector, or \code{range(rowSums(x))} if \code{x} is a matrix.}
  \item{extend}{The extension to both side of \code{ylim}. The value is a percent value corresponding to \code{ylim[2] - ylim[1]}.}
  \item{axis}{Whether to add axis?}
  \item{axis_param}{parameters for controlling axis. See \code{\link{default_axis_param}} for all possible settings and default parameters.}
  \item{width}{Width of the annotation. The value should be an absolute unit. Width is not allowed to be set for column annotation.}
  \item{height}{Height of the annotation. The value should be an absolute unit. Height is not allowed to be set for row annotation.}

}
\value{
An annotation function which can be used in \code{\link{HeatmapAnnotation}}.
}
\seealso{
\url{https://jokergoo.github.io/ComplexHeatmap-reference/book/heatmap-annotations.html#barplot_annotation}
}
\examples{
anno = anno_barplot(1:10)
draw(anno, test = "a vector")

m = matrix(runif(4*10), nc = 4)
m = t(apply(m, 1, function(x) x/sum(x)))
anno = anno_barplot(m, gp = gpar(fill = 2:5), bar_width = 1, height = unit(6, "cm"))
draw(anno, test = "proportion matrix")
}
