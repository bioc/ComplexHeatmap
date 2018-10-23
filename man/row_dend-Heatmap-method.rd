\name{row_dend-Heatmap-method}
\alias{row_dend,Heatmap-method}
\title{
Get Row Dendrograms from a Heatmap
}
\description{
Get Row Dendrograms from a Heatmap
}
\usage{
\S4method{row_dend}{Heatmap}(object)
}
\arguments{

  \item{object}{A \code{\link{Heatmap-class}} object.}

}
\value{
The format of the returned object depends on whether rows/columns of the heatmaps are split.
}
\author{
Zuguang Gu <z.gu@dkfz.de>
}
\examples{
mat = matrix(rnorm(100), 10)
ht = Heatmap(mat)
ht = draw(ht)
row_dend(ht)
ht = Heatmap(mat, row_km = 2)
ht = draw(ht)
row_dend(ht)
}
