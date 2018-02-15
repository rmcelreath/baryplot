\name{bary.placearrow}
\alias{bary.placearrow}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Interactive arrow plotting }
\description{
  This function gets a user click via \code{locator} and then draws an arrow at that point, indicating the direction of the system.
}
\usage{
bary.placearrow(thegame = bary.game.hdr, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{thegame}{ Function accepting frequencies of strategies and returning fitness values }
  \item{\dots}{ Parameters to be passed to \code{thegame} }
}
\author{ Richard McElreath (mcelreath@udavis.edu) }
\seealso{ \code{\link{bary.goodarrow}} }
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
