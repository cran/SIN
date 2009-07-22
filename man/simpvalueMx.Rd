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
  Drton, M. \& Perlman, M.D.  (2008)  A SINful Approach to Gaussian
  Graphical Model Selection.  \emph{J. Statist. Plann. Inference}
  138(4): 1179-1200.
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

