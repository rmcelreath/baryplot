\name{bary.line}
\alias{bary.line}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Draws a line using barycentric coordinates }
\description{
  This function draws a line connecting two barycentric coordinates.
}
\usage{
bary.line(point1, point2, arrow = FALSE, l = 1, col = "black")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{point1}{ Vector of two numbers defining origin of line }
  \item{point2}{ Vector of two numbers defining destination of line }
  \item{arrow}{ If \code{TRUE}, an arrow is drawn at the destination, using \code{bary.goodarrow} }
  \item{l}{ Type of line, as per \code{lty} in \code{par} }
  \item{col}{ Color of line }
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\seealso{ \code{\link{bary.point}} }
\examples{
bary.init()
bary.line( c( 0,0 ), c( 1/3,1/3 ), arrow=TRUE )
bary.line( c( 0,1 ), c( 1/4,1/3 ), arrow=TRUE, l=2 )
}
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
