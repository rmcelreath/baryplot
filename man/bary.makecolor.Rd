\name{bary.makecolor}
\alias{bary.makecolor}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Mixes a gradient color }
\description{
  This function takes a number from 0 to 1 returns an RGB color along a gradient from blue (0) to green (0.5) to red (1).
}
\usage{
bary.makecolor(scolor)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{scolor}{ A number from 0 to 1 determining position along the gradient }
}
\details{
  Used internally by \code{bary.phase} and other functions to plot colors that illustrate the velocity of the system.
}
\value{
  Returns an RGB color
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
