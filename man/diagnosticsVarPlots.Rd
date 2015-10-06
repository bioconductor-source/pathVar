\name{diagnosticsVarPlots}
\alias{diagnosticsVarPlots}
\title{
  	Plots the average expression against variability using different summary statistics.
}
\description{
		Plots the average expression against variability using different summary statistics to help decide which statistic
    would be the best with your dataset.
}
\usage{
diagnosticsVarPlots(dat.mat)
}

\arguments{
  \item{dat.mat}{
a \code{matrix} with rows as genes and columns as samples.
}
}
\details{
		This function gives you 3 plots one for SD, one for MAD and one for CV against the mean to help you decide 
    which one would be the best with your dataset. It also returns the correlation between each variability statistics and the mean.
}
\value{
		3 scatter plots where average expression is on the X-axis and SD, MAD, and CV are on the Y-axis. 
}

\author{Laurence de Torrente, Samuel Zimmerman, Jessica Mar }
\examples{
diagnosticsVarPlots(bock)
}
\keyword{methods}
