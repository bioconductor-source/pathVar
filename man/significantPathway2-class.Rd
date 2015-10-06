\name{significantPathway2-class}
\Rdversion{1.1}
\docType{class}
\alias{significantPathway2-class}
\alias{significantPathway2}

\title{Class \code{"significantPathway2"}}
\description{
This is a class representation for storing the output of the \code{sigPway} function in the two sample case.
}
\section{Objects from the Class}{
Objects are output by the function \code{\link{sigPway}} in the two sample case. 
Objects can be created by calls of the form \code{new("significantPathway2", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{genesInSigPways1}:}{A \code{"list"} ojbect that contains the genes belonging to each significant pathway. }
    \item{\code{thresPValue}:}{A \code{"numeric"} object that contains the chosen p-value for the significance.}
  }
}
\section{Methods}{
No methods defined with class "significantPathway2" in the signature.
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}
\examples{
sig <- new("significantPathway2",genesInSigPways1=list(),thresPValue=numeric())
showClass("significantPathway2")
}
\keyword{classes}
