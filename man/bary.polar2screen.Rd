\name{bary.polar2screen}
\alias{bary.polar2screen}
\alias{bary.screen2polar}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Convert between polar and screen coordinates }
\description{
  These functions convert between screen and polar coordinates.

  \code{bary.polar2screen} takes a polar coordinate (origin, angle, and distance) and returns a corresponding screen coordinate. The \code{origin} is treated as the origin of a polar graph, then the returned point is found by finding the screen coordinate at the given angle and distance from this origin.

  \code{bary.screen2polar} takes two screen coordinates and returns the polar coordinate of the second, relative to the first.
}
\usage{
bary.polar2screen(dist, origin, theta)
bary.screen2polar(origin, dest)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dist}{ Distance from \code{origin} }
  \item{origin}{ Reference point, in screen coordinates }
  \item{theta}{ Angle, in radians }
  \item{dest}{ Point to convert to polar coordinate }
}
\value{
  \code{bary.polar2screen} Returns of vector of two numbers, holding the x and y coordinates of the converted point.

  \code{bary.screen2polar} Returns of vector of two numbers, holding the angle and distance of \code{dest} from \code{origin}.
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
