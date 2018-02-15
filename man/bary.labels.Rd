\name{bary.labels}
\alias{bary.labels}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Adds labels to baryplot vertices }
\description{
  This function labels the vertices on an existing baryplot.
}
\usage{
bary.labels(right, top, left)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{right}{ Label for vertex on the right }
  \item{top}{ Label for vertex at the top }
  \item{left}{ Label for vertex on the left }
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\examples{
bary.init()
bary.labels("Right", "Top", "Left")
}
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
