\name{pathVarTwoSamplesDisc}
\alias{pathVarTwoSamplesDisc}
\title{
Compares the number of genes in clusters in each pathway for two groups of samples that you define.
}
\description{
Compares the distribution of genes in each pathway for two groups of samples that you define.
}
\usage{
pathVarTwoSamplesDisc(dat.mat,pways,groups,perc=c(1/3,2/3), test=c("chisq", "exact"),varStat=c("sd", "mean", "mad","cv"))
}
\arguments{
  \item{dat.mat}{
\code{matrix} with the genes on the rows and the samples on the columns.
}
  \item{pways}{
\code{list} which contains a \code{vector} of pathway IDs, a \code{vector} of pathway names, and a \code{list} of genes in each pathway.
}
  \item{groups}{
\code{vector} indicating the amount of samples and replicates of each sample.
}
  \item{perc}{
numeric \code{vector} of probabiliities with values between 0 and 1. Used to put genes into clusters
}
  \item{test}{
a string, either "exact" or "chisq" which are tests to see if clusters in the 2 samples are sig. different from each other  
}
  \item{varStat}{
a string specifying the type of variability summary statistic to perform. The options are
"sd", "mean", "mad", or "cv".
  }
}
\details{
This function splits the samples into two groups that you define. It computes the variability (sd, mad, cv, or mean) for each gene in each group.
Then it classifies the genes with respect to the variability in at most 4 clusters. For each pathway, we extract the gene in our dataset and in which cluster
they belong. Then for each pathway we look at the gene counts in each category and compare the 2 samples to each other with all the genes from the data set
with the Chi-Squared or exact test.
}
\value{
A \code{geneDistributionSet3} object is returned.
}

\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
# we run the 2 samples analysis on the first 10 pathways from kegg
pways.kegg.10pways <- lapply(pways.kegg, function(x) x[1:10])
results_2samples=pathVarTwoSamplesDisc(bock,pways.kegg.10pways,groups=as.factor(c(rep(1,10),rep(2,10))),perc=c(1/3,2/3),test="exact",varStat="sd")
}
\keyword{methods}