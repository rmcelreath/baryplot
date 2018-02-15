\name{bary.sim}
\alias{bary.sim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Computes change in each strategy }
\description{
  This function is used internally by \code{bary.plotsim} to compute the change in the frequency of each strategy, over one generation.
}
\usage{
bary.sim(startx, starty, thegame = bary.game.hdr, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{startx}{ Frequency of right strategy }
  \item{starty}{ Frequency of top strategy }
  \item{thegame}{ Function accepting the frequency of each strategy and returning a vector of three fitness values }
  \item{\dots}{ Parameters to be passed to \code{thegame} }
}
\details{
  The function \code{thegame} must accept at least three parameters: the frequency of the right strategy, the frequency of the top strategy, and the frequency of the left strategy. It may accept other parameters that define values used in computing the fitness values. The function must then return a vector of three numbers: the fitness of the right strategy, fitness of top strategy, fitness of left strategy. It is up to the user to ensure that fitness values are always positive. See \code{bary.game.hdr} for an example.
}
\value{
  Returns a vector of three numbers, representing the changes in the frequencies of the right, top, and left strategies, respectively.
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
