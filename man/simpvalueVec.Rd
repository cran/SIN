\name{simpvalueVec}
\alias{simpvalueVec}
\title{Simultaneous p-values}
\description{
  Simultaneous p-values are computed for a vector of
  correlations. Function only for internal use.
}
\usage{simpvalueVec(corrs,n,p)}
\arguments{
  \item{corrs}{a vector of correlations in (-1,1).}
  \item{n}{the sample size.}
  \item{p}{the number of variables used for p-value adjustment.}
}
\value{
  A vector of simultaneous p-values.
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
  \code{\link{simpvalueMx}}
}
\examples{
data(fowlbones)
temp <- -solve(fowlbones$corr)
diag(temp) <- abs(diag(temp))
temp <- cov2cor(temp)
p <- dim(temp)[1]
round( simpvalueVec(temp[1,2:p],fowlbones$n,p), 2)
}
\keyword{internal}

