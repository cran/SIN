\name{sinBG}
\alias{sinBG}
\title{SIN for bidirected graphs}
\description{
  This function computes the matrix of simultaneous p-values for SIN
  model selection for bidirected (or covariance) graphs.
}
\usage{sinBG(S,n,holm=TRUE)}
\arguments{
  \item{S}{a covariance or correlation matrix.}
  \item{n}{the sample size,}
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
  Drton, M. \& Perlman, M.D.  (2004)  A SINful Approach to Gaussian
  Graphical Model Selection.  Department of
  Statistics, University of Washington, Technical Report 457.\cr
  \url{http://www.stat.washington.edu/www/research/reports/2004/tr457.pdf}
}
\seealso{
  \code{\link{plotBGpvalues}}
}
\examples{
data(stressful)
sinBG(stressful$corr,stressful$n)
sinBG(stressful$corr,stressful$n,holm=FALSE)
}
\keyword{multivariate}


