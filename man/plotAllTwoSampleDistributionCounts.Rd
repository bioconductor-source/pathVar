\name{plotAllTwoSampleDistributionCounts}
\alias{plotAllTwoSampleDistributionCounts}
\title{
Compares the distribution of genes in clusters for every gene in your data set for two groups of samples that you define and plot the counts.
}
\description{
Compares the distribution of genes for every gene in your data set for two groups of samples that you define and plot the counts of each gene.
}
\usage{
plotAllTwoSampleDistributionCounts(dat,pvalue_results,perc=c(1/3,2/3),pvalue,plotName)
}
\arguments{
  \item{dat}{
\code{matrix} with the genes on the rows and the samples on the columns.
}
  \item{pvalue_results}{
output of \code{pathVarTwoSamples} step.
}
  \item{perc}{
numeric \code{vector} of probabilities with values between 0 and 1. Used to put genes into clusters
}
  \item{pvalue}{
the significance level to test.
}
  \item{plotName}{
a string specifying the file name of the output plot. Default value is NULL which prints, but does not save the graph in a pdf.
}
}
\details{
This function looks at the gene counts in each category of 2 groups previously defined in the \code{pathVarTwoSamples} step and compare the 2 samples to each other with all the genes from the data set. Then it plots the counts for each group.
}
\value{
A plot of results returned.
}

\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
# we run the 2 samples analysis on the first 10 pathways from kegg
pways.kegg.10pways <- lapply(pways.kegg, function(x) x[1:10])
results_2samples=pathVarTwoSamplesDisc(bock,pways.kegg.10pways,groups=as.factor(c(rep(1,10),rep(2,10))),perc=c(1/3,2/3),test="exact",varStat="sd")
plotAllTwoSampleDistributionCounts(bock, results_2samples, perc=c(1/3,2/3), pvalue=0.05, "bock.group1.group2.pdf")
}
\keyword{methods}