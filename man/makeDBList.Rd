\name{makeDBList}
\alias{makeDBList}
\title{
Puts your own list of pathways and genes related to them into a list.
}
\description{
Puts your own list of pathways and genes related to them into a list.
}
\usage{
makeDBList(file,pID=TRUE)
}

\arguments{
  \item{file}{
a tab deimited text file where the first and second columns are pathwayID and pathway name. 
The third, or last column, is the genes associated with each pathway, seperated by commas. 
If no pathwayIDs are available, the first column should be the pathway name.
}
  \item{pID}{
boolean expression specifiying where the pathways have an ID or not.
}
}
\details{
This function is given a tab delimited text file with the pathwayID (if available), the pathway name,
and the genes associated with each pathway. It outputs a list where the first element is the pathway names,
the second is the Pathway IDs and the third is a list of genes for each pathway. The first row should be
the column names.
}
\value{
A list of pathway names, IDs, and genes in each pathway is returned.
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
\dontrun{
pways.ipa <- makeDBList("fileName",pID=FALSE)
}
}
\keyword{methods}
