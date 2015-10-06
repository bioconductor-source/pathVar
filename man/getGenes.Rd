\name{getGenes}
\alias{getGenes}
\title{
Gets significant genes within a certain window of variability.
}
\description{
Gets significant genes within a certain window of variability.
}
\usage{
getGenes(pvalue_results,pathway,window)
}
\arguments{
  \item{pvalue_results}{
output of \code{pathVarTwoSamplesCont} step.
}
  \item{pathway}{
  A pathway name.  
}
  \item{window}{
  A \code{vector} with a min and max range to specify the window of genes to grab with a certain level of variance.  
}
}
\details{
It takes the result of \code{pathVarTwoSamplesCont}, a given pathway and "window". 
It will give you the genes having their variability value in the window for group 1 and another set of genes for group 2 corresponding to the given pathway.
It also returns the set of all the genes from your dataset that belong to this pathway.
}
\value{
An object of class \code{geneSet} with 3 properties. The first 2 are the genes in the window from each group. The third are all the genes.
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
# we run the 2 samples analysis on the first 10 pathways from kegg
pways.kegg.10pways <- lapply(pways.kegg, function(x) x[1:10])
results_2samples=pathVarTwoSamplesCont(bock,pways.kegg.10pways,groups=as.factor(c(rep(1,10),rep(2,10))))
genes_window=getGenes(results_2samples,pways.kegg$PATHNAME[10],c(0.25,075))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{methods}
