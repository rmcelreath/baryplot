\name{bary.goodarrow}
\alias{bary.goodarrow}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Draws a polygon arrow }
\description{
  This function draws a filled polygon arrow at a screen coordinate.
}
\usage{
bary.goodarrow(origin, dest, length = 0.025, col = "black", border = "black", angle = pi/6, backdist = 1/2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{origin}{ Origin of vector used to determine angle of arrowhead }
  \item{dest}{ Location of arrowhead, in screen coordinates }
  \item{length}{ Size of arrowhead }
  \item{col}{ Color for filling arrowhead }
  \item{border}{ Color of edge of arrowhead }
  \item{angle}{ Angle of barbs away from center vector, in radians }
  \item{backdist}{ Distance back from tip of arrowhead to draw back of arrowhead, as a proportion of barb length }
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\seealso{ \code{\link{bary.drawarrow}} }
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
