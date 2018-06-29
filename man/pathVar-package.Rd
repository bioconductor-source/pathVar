\name{pathVar-package}
\alias{pathVar-package}
\alias{pathVar}
\docType{package}
\title{
Detects pathways with different levels of variance than reference gene set variability.
}
\description{
This package contains functions used to determine pathways with significant differences in variability.
}
\details{
\tabular{ll}{
Package: \tab pathVar\cr
Type: \tab Package\cr
Version: \tab 1.11.2\cr
Date: \tab 2018-06-29\cr
License: \tab LGPL \cr
Depends: \tab R (>= 3.2.2), methods, ggplot2, gridExtra\cr
Imports: \tab EMT, mclust, Matching, reshape, data.table\cr
}
1. Compute the standard deviation for each gene.
2. Classify the genes with respect to sd in at most 4 clusters.
3. For each pathway, we extract the gene in our dataset and in which cluster they belong.
4. For each pathway, we look how its genes are distributed in each category and compare it to the 
expected number with all the gene from the dataset with the chisq.
5. Same as 4. but with the exact test
6. find significant pathway(s), which category(ies) from this pathway are significant and 
which gene(s) belongs to this(ese) category(ies)

}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar

}
\keyword{ package }

\examples{
results_kegg=pathVarOneSample(bock,pways.kegg,test="chisq",varStat="sd")
sig_kegg=sigPway(results_kegg,0.05)
}
