\name{geneDistributionSet-class}
\Rdversion{1.1}
\docType{class}
\alias{geneDistributionSet}
\alias{geneDistributionSet-class}

\title{Class \code{"geneDistributionSet"}}
\description{
This is a class representation for storing the output of the \code{pathVarOneSample} function.
}
\section{Objects from the Class}{
Objects are output by the function \code{\link{pathVarOneSample}}. 
Objects can also be created by calls of the form \code{new("geneDistributionSet", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{tablePway}:}{A \code{"data.table"} of pathway name, pathway IDs, adjusted p-value from the chisq test or exact test,
    	the number of genes from our dataset inside the pathway and the total number of genes inside the pathway.}
    \item{\code{NAPways}:}{A \code{character} object that contains the pathway names of the pathway having less than 10 genes for the Chi-Squared 
    or also more than 500 genes for the exact test.}    
    \item{\code{genesInPway}:}{A \code{list} object that contains each pathway with the genes from the datasets belonging to it and in which cluster they were classsify.}
    \item{\code{refProb}:}{A \code{table} object that contains the probability of the reference in each cluster.}
    \item{\code{refCounts}:}{A \code{table} object that contains the genes counts of the reference in each cluster.}
    \item{\code{pwayCounts}:}{A \code{list} object that contains the genes counts of the each pathway in each cluster.} 
    \item{\code{numOfClus}:}{A \code{numeric} object that contains the number of clusters.} 
    \item{\code{varStat}:}{A \code{character} object that contains the statistics sd, mad, cv or mean chosen for the analysis.} 
    \item{\code{genesInClus}:}{A \code{numeric} object that contains all the genes from the dataset and in which cluster they belong.}
    \item{\code{var}:}{A \code{numeric} object that contains the statistics value (sd, mad, cv or mean) for each gene.}

  }
}
\section{Methods}{
No methods defined with class "geneDistributionSet" in the signature.
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
out <- new("geneDistributionSet",tablePway=data.table::data.table(),NAPways=character(),genesInPway=list(),refProb=table(c(1,1)),refCounts=table(c(1,1)),pwayCounts=list(),numOfClus=numeric(),varStat=character(),genesInClus=numeric(),var=numeric())
showClass("geneDistributionSet")
}
\keyword{classes}
