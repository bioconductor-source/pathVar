\name{sigPway}
\alias{sigPway}
\title{
A function checks if an object is from the one sample or two samples cases and then finds the significant pathways.
}
\description{
A function checks if an object is from the one sample or two samples cases and then finds the significant pathways.
}
\usage{
sigPway(pvalue_results, pvalue)
}
\arguments{
  \item{pvalue_results}{
\code{geneDistributionSet2} object and the output of the \code{pathVarTwoSamples} function or \code{geneDistributionSet} object and the output of the \code{pathVarOneSample}.
}
  \item{pvalue}{
the significance level to test.
}
}
\details{
This function takes the output \code{pathVarTwoSamples} or \code{pathVarOneSample} and returns a \code{significantPathway2} or \code{significantPathway} object specifying 
the significant pathway(s) and which gene(s) belongs to the significant pathway(s).
}
\value{
A \code{significantPathway2} object or \code{significantPathway object} is returned. 
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
results_2samples=pathVarTwoSamplesCont(bock,pways.kegg,groups=as.factor(c(rep(1,10),rep(2,10))),boot=1000,varStat="sd")
sig_kegg=sigPway(results_2samples,0.05)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{methods}
