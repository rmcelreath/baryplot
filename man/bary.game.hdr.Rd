\name{bary.game.hdr}
\alias{bary.game.hdr}
\alias{bary.game.tft}
\alias{bary.game.rps}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Functions for fitness computations }
\description{
  Each of these functions is a valid function to pass as \code{thegame} in \code{bary.plotsim} and similar functions. Each accepts frequencies of each strategy and any other parameters and returns a vector of three fitness values.
}
\usage{
bary.game.hdr(p, q, r, v = 2, c = 3, w0 = 5)
bary.game.tft(p, q, r, b = 2, c = 1, w = 0.75, w0 = 15)
bary.game.rps(p, q, r, b = 4, c = -2, w0 = 15)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{ Frequency of right strategy }
  \item{q}{ Frequency of top strategy }
  \item{r}{ Frequency of left strategy }
  \item{\dots}{ Parameters used in computing fitness values }
}
\details{
  It is important to ensure that any function of this kind returns only positive fitness values. The parameter \code{w0} in the included functions is added to each fitness to ensure they are always positive. Changing this value can also speed up or slow down simulation.

  \code{bary.game.hdr} is the default function. It implements the Hawk-Dove-Retaliator game. \code{bary.game.tft} implements an iterateed Tit-for-Tat game, with Always Cooperate and Always Defect as the other two strategies. \code{bary.game.rps} is a Rock-Paper-Scissor game.
}
\value{
  Returns of vector of three fitness values for the right, top, and left strategies, respectively.
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\seealso{ \code{\link{bary.sim}} }
\examples{
par(mfcol=c(1,2))
bary.init()
bary.labels("TFT","ALLC","ALLD")
bary.phase(thegame=bary.game.tft, w=0.9)
text( 0.5, 0 , "w=0.9" , xpd=NA, adj=c(0,5) )
bary.init()
bary.labels("TFT","ALLC","ALLD")
bary.phase(thegame=bary.game.tft, w=0.4)
text( 0.5, 0 , "w=0.4" , xpd=NA, adj=c(0,5) )
}
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
