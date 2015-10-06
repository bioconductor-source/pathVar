\name{significantPathway3-class}
\Rdversion{1.1}
\docType{class}
\alias{significantPathway3-class}
\alias{significantPathway3}

\title{Class \code{"significantPathway3"}}
\description{
This is a class representation for storing the output of the \code{sigPway} function in the two sample case.
}
\section{Objects from the Class}{
Objects are output by the function \code{\link{sigPway}} in the two sample case. 
Objects can be created by calls of the form \code{new("significantPathway3", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{genesInSigPways1}:}{A \code{"list"} ojbect that contains the genes belonging to each significant pathway in group 1. }
    \item{\code{genesInSigPways2}:}{A \code{"list"} ojbect that contains the genes belonging to each significant pathway in group 2. }
    \item{\code{sigCatPerPway}:}{A \code{"list"} ojbect that contains the significant categories in each pathway. }
    \item{\code{thresPValue}:}{A \code{"numeric"} object that contains the chosen p-value for the significance.}
  }
}
\section{Methods}{
No methods defined with class "significantPathway3" in the signature.
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}
\examples{
sig <- new("significantPathway3",genesInSigPways1=list(),genesInSigPways2=list(),sigCatPerPway=list(),thresPValue=numeric())
showClass("significantPathway3")
}
\keyword{classes}
