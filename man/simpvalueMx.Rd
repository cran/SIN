\name{simpvalueMx}
\alias{simpvalueMx}
\title{Simultaneous p-values}
\description{
  Simultaneous p-values are computed for a correlation matrix. Function
  only for internal use.
}
\usage{simpvalueMx(corr,n,p)}
\arguments{
  \item{corr}{a correlation matrix.}
  \item{n}{the sample size.}
  \item{p}{the number of variables used for p-value adjustment.}
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
  \code{\link{simpvalueVec}}
}
\examples{
data(fowlbones)
temp <- -solve(fowlbones$corr)
diag(temp) <- abs(diag(temp))
temp <- cov2cor(temp)
p <- dim(temp)[1]
round( simpvalueMx(temp,fowlbones$n,p), 2)
}
\keyword{internal}

