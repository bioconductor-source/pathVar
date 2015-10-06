\name{significantPathway-class}
\Rdversion{1.1}
\docType{class}
\alias{significantPathway-class}
\alias{significantPathway}

\title{Class \code{"significantPathway"}}
\description{
This is a class representation for storing the output of the \code{sigPway} function in the one sample case.
}
\section{Objects from the Class}{
Objects are output by the function \code{\link{sigPway}} in the one sample case. 
Objects can be created by calls of the form \code{new("significantPathway", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{genesInSigPways1}:}{A \code{"list"} object that contains the genes per significant pathway belonging to the significant category.}
    \item{\code{sigCatPerPway}:}{A \code{"list"} object that contains the category(ies) per pathway that are significant.}
    \item{\code{thresPValue}:}{A \code{"numeric"} object that contains the chosen p-value for the significance.}
  }
}
\section{Methods}{
No methods defined with class "significantPathway" in the signature.
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}
\examples{
sig <- new("significantPathway",genesInSigPways1=list(),sigCatPerPway=list(),thresPValue=numeric())
showClass("significantPathway")
}
\keyword{classes}
