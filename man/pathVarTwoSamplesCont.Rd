\name{pathVarTwoSamplesCont}
\alias{pathVarTwoSamplesCont}
\title{
Compares the distribution of genes in each pathway for two groups of samples that you define.
}
\description{
Compares the distribution of genes in each pathway for two groups of samples that you define.
}
\usage{
pathVarTwoSamplesCont(dat.mat, pways,groups,boot=1000,varStat=c("sd","mean", "mad", "cv"))
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
  \item{boot}{
number of bootstraps to be performed.
}
  \item{varStat}{
a string specifying the type of variability summary statistic to perform. The options are
"sd", "mean", "mad", or "cv".
  }
}
\details{
This function splits the samples into two groups that you define. It compares the density of the variability (SD, MAD, CV) or 
of the mean of the genes in a pathway from group 1 with the density from group 2. For that, it uses the bootstrap Kolmogorov-smirnov test.
You can give your own list of pathways (using the output of \code{makeDBList}) or use Reactome and KEGG pathways that are already included.
}
\value{
A \code{geneDistributionSet2} object is returned.
}

\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
# we run the 2 samples analysis on the first 10 pathways from kegg
pways.kegg.10pways <- lapply(pways.kegg, function(x) x[1:10])
results_2samples=pathVarTwoSamplesCont(bock,pways.kegg.10pways,groups=as.factor(c(rep(1,10),rep(2,10))),boot=1000,varStat="sd")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{methods}