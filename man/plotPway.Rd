\name{plotPway}
\alias{plotPway}
\title{
Checks if an object is from the one sample or two samples cases and then plots reference distribution and the chosen pathway.
}
\description{
Checks if an object is from the one sample or two samples cases and then plots reference distribution and the chosen pathway.
}
\usage{
plotPway(pvalue_results,pathway,sig)
}
\arguments{
  \item{pvalue_results}{
output of \code{pathVarTwoSamples} or \code{pathVarOneSample} step.
}
  \item{pathway}{
the chosen pathway you want to plot.
}
  \item{sig}{
  output of \code{sigPway} or NULL.
}
}
\details{
Plots the results of the one or two samples case for a chosen pathway.
}
\value{
A plot of the results from \code{sigPway}.
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
# we run the 2 samples analysis on the first 10 pathways from kegg
pways.kegg.10pways <- lapply(pways.kegg, function(x) x[1:10])
results_2samples=pathVarTwoSamplesCont(bock,pways.kegg.10pways,groups=as.factor(c(rep(1,10),rep(2,10))))
sigPways <- sigPway(results_2samples,0.05)
plotPway(results_2samples,"Glycolysis / Gluconeogenesis",sigPways)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{methods}
