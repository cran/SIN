\name{sinUG}
\alias{sinUG}
\title{SIN for undirected graphs}
\description{
  This function computes the matrix of simultaneous p-values for SIN
  model selection for undirected (or concentration) graphs.
}
\usage{sinUG(S,n,holm=TRUE)}
\arguments{
  \item{S}{a covariance or correlation matrix.}
  \item{n}{the sample size.}
  \item{holm}{Boolean variable indicating whether Holm's p-value
    adjustment should be used (holm=TRUE) or not (holm=FALSE).}
}
\value{
  A matrix of simultaneous p-values with \code{NA} on the diagonal.
}
\references{
  Drton, M. \& Perlman, M.D.  (2004)  Model Selection for Gaussian
  Concentration Graphs. \emph{Biometrika}  91(3): 591-602.
  \cr\cr
  Drton, M. \& Perlman, M.D.  (2008)  A SINful Approach to Gaussian
  Graphical Model Selection.  \emph{J. Statist. Plann. Inference}
  138(4): 1179-1200.
}
\seealso{
  \code{\link{plotUGpvalues}}
}
\examples{
data(fowlbones)
sinUG(fowlbones$corr,fowlbones$n)
sinUG(fowlbones$corr,fowlbones$n, holm=FALSE)
}
\keyword{multivariate}
