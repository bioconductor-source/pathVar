\name{saveAsPDF}
\alias{saveAsPDF}
\title{
Save the plots of the significant pathway or a chosen list of pathways as a pdf.
}
\description{
Save the plots of the significant pathway or a chosen list of pathways as a pdf.
}
\usage{
saveAsPDF(pvalue_results,sig,listPath="significant")
}
\arguments{
  \item{pvalue_results}{
output of \code{pathVarTwoSamples} or \code{pathVarOneSample} step.
}
  \item{sig}{
  output of \code{sigPway} or NULL.
}
  \item{listPath}{
  the string "significant" if you want to save the plots of the significant pathways or a list of names of pathways of interest.
}
}
\details{
Save the plots of the significant pathway or a chosen list of pathways as a pdf.
}
\value{
A pdf of the results from \code{sigPway}.
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
# we run the 2 samples analysis on the first 10 pathways from kegg
pways.kegg.10pways <- lapply(pways.kegg, function(x) x[1:10])
results_2samples=pathVarTwoSamplesCont(bock, pways.kegg.10pways,groups=as.factor(c(rep(1,10),rep(2,10))))
sigPways <- sigPway(results_2samples,0.05)
saveAsPDF(results_2samples,sigPways,listPath="significant")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{methods}
