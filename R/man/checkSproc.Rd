% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storedProcedure.R
\name{checkSproc}
\alias{checkSproc}
\title{Check if Stored Procedure is in Database}
\usage{
checkSproc(connectionString, name, getScript = FALSE)
}
\arguments{
\item{connectionString}{character string. The connectionString to the database}

\item{name}{character string. The name of the stored procedure}

\item{getScript}{boolean. Return the tsql script that would be run on the server instead of running it}
}
\value{
Whether the stored procedure exists in the database
}
\description{
Check if Stored Procedure is in Database
}
\examples{
\dontrun{
connectionString <- connectionInfo()

dropSproc(connectionString, "fun")

func <- function(arg1) {return(data.frame(hello = arg1))}
createSprocFromFunction(connectionString, name = "fun",
                        func = func, inputParams = list(arg1="character"))
if (checkSproc(connectionString, "fun"))
{
    print("Function 'fun' exists!")
    executeSproc(connectionString, "fun", arg1="WORLD")
}
}


}
\seealso{
{
\code{\link{createSprocFromFunction}}

\code{\link{dropSproc}}

\code{\link{executeSproc}}

}
}
