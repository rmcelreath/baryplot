\name{bary.toscreen}
\alias{bary.toscreen}
\alias{bary.tobary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Convert between screen and barycentric coordinates }
\description{
  These two functions convert between screen (Cartesian) and barycentric coordinates.

  \code{bary.toscreen} takes a barycentric coordinate and returns a screen coordinate. \code{bary.tobary} takes a screen coordinate and returns a barycentric coordinate.
}
\usage{
bary.toscreen(x, y)
bary.tobary(u, v)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ x component of screen point }
  \item{y}{ y component of screen point }
  \item{u}{ Frequency of item represented by right vertex }
  \item{v}{ Frequency of item represented by top vertex }
}
\details{
  The screen coordinate system assumed by both functions is a plot with a 1:1 aspect ratio with x and y bounds from 0 to 1. This is the measurement system used in the barycentric plots produced by \code{bary.init}.
}
\value{
  Each function returns a vector of two numbers, representing the screen or barycentric point.
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\examples{
## should return 1/3, 1/3
bary.tobary( bary.toscreen( 1/3, 1/3 )[1], bary.toscreen( 1/3, 1/3 )[2] )
}
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
