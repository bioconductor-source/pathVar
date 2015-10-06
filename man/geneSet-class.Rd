\name{geneSet-class}
\Rdversion{1.1}
\docType{class}
\alias{geneSet}
\alias{geneSet-class}

\title{Class \code{"geneSet"}}
\description{
This is a class representation for storing the output of the \code{getGenes} function.
}
\section{Objects from the Class}{
Objects are output by the function \code{\link{getGenes}}. 
Objects can also be created by calls of the form \code{new("geneSet", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{genes1}:}{A \code{character} object that contains the genes belonging to the pathway in the given window for group 1.}
    \item{\code{genes2}:}{A \code{character} object that contains the genes belonging to the pathway in the given window for group 2.}
    \item{\code{genesAll}:}{A \code{character} object that contains the genes from the dataset belonging to the pathway.}
  }
}
\section{Methods}{
No methods defined with class "geneSet" in the signature.
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
out <- new("geneSet",genes1=character(),genes2=character(),genesAll=character())
showClass("geneSet")
}
\keyword{classes}
