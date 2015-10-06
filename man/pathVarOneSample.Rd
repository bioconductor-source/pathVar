\name{pathVarOneSample}
\alias{pathVarOneSample}
\title{
Compares the distribution of genes in each cluster to the distribution of genes in each cluster for every pathway.
}
\description{
Compares the distribution of genes in each cluster to the distribution of genes in each cluster for every pathway.
}
\usage{
pathVarOneSample(dat.mat, pways,test=c("chisq", "exact"),varStat=c("sd", "mean", "mad", "cv"))
}
\arguments{
  \item{dat.mat}{
\code{matrix} with the genes on the rows and the samples on the columns.
}
  \item{pways}{
\code{list} which contains a \code{vector} of pathway IDs, a \code{vector} of pathway names, and a \code{list} of genes in each pathway.
}
  \item{test}{
a string specifying the type of significance test to perform. The options are "exact" or "chisq".
}
  \item{varStat}{
a string specifying the type of variability summary statistic to perform. The options are
"sd", "mean", "mad", or "cv".
  }
}
\details{
This function classifies your genes into one to four clusters with respect to the standard deviation (SD), median absolute deviation (MAD), coefficient of variation (CV) or mean. 
Then, it compares the counts of genes in each class from your dataset in one pathway with the counts of the genes in each class from the whole dataset. 
For that, it uses a Chi-square or an exact test. You can give your own list of pathways (using the output of \code{makeDBList}) 
or use Reactome and KEGG pathways that are already included.
}
\value{
A \code{geneDistributionSet} object is returned.
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
results_kegg=pathVarOneSample(bock,pways.kegg,test="chisq",varStat="sd")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{methods}
