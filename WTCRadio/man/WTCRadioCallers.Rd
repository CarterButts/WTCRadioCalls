\name{WTCRadioCallers}
\Rdversion{1.1}
\alias{WTCRadioCallers}
\docType{data}
\title{
Information on Named Communicants in the WTC Radio Networks
}
\description{
This object consists of a list of data frames, one per WTC radio network, with one row per individual.  Information currently contained includes the ID number of each 
individual in the \code{\link{WTCRadioCalls}} data, and an indicator for whether or not that individual occupies an institutionalized coordinative role.
}
\usage{data(WTCRadioCallers)}
\format{
  The format is a list of 17 \code{data.frame}s, one per WTC radio channel.  The data sizes are as follows:
  
\tabular{lrr}{
Channel \tab Named Comm. \tab ICRs \cr 
PATHRadioCommunications \tab 32 \tab 2 \cr 
LincolnTunnelPolice \tab 229 \tab 10 \cr 
NewarkCommand \tab 111 \tab 3 \cr 
NewarkPolice \tab 24 \tab 2 \cr 
NewarkCPD \tab 50 \tab 8 \cr 
NewarkOperationsTerminals \tab 138 \tab 6 \cr 
NewarkMaintenance \tab 27 \tab 1 \cr 
PATHControlDesk \tab 229 \tab 16 \cr 
NJSPEN1 \tab 166 \tab 15 \cr 
NJSPEN2 \tab 32 \tab 5 \cr 
WTCOperations \tab 130 \tab 2 \cr 
WTCPolice \tab 37 \tab 3 \cr 
WTCVerticalTransportation \tab 246 \tab 3 \cr 
NewarkFacilityManagement \tab 237 \tab 7 \cr 
PATHPolice \tab 93 \tab 3 \cr 
WTCSecurity \tab 118 \tab 12 \cr 
WTCMaintenanceElectric \tab 256 \tab 16 \cr
}

with the second column indicating the total number of named communicants, and the second the number of individuals with institutionalized coordinative roles.  Each actual \code{data.frame} contains two variables:

\tabular{lrr}{
ID \tab numeric \tab Communicant ID number \cr
is.inst.coord \tab logical \tab Does this communicant occupy an institutionalized coordinative role? \cr
}

%For future reference, this was used to get the above:
%cat(paste(apply(t(sapply(1:17,function(i){
%  c(regnam[i], NROW(WTCRadioCallers[[i]]), sum(WTCRadioCallers[[i]][,2]))
%})),1,paste,collapse=" \\tab "),collapse=" \\cr \n"))

}
\details{
Each entry corresponds to one channel of the WTC radio data set (see \code{\link{WTCRadio}} for details), with information on the individuals involved in that channel.
Each individual was identified as a named communicant (i.e., an individual identified by name, call sign, or other point of reference) on the channel during the 
observation period; this constitutes all available information on individuals at risk for communication from the original materials (no roster or other personnel log
is known to exist).  

Currently available data on each individual includes the ID number used to refer to them elsewhere in the WTCRadio package, and an indicator for whether the individual
was observed to occupy an institutionalized coordinative role (ICR).  ICRs (see e.g. Butts et al. (2007)) represent institutionalized, pre-disaster roles such as
manager, dispatcher, or operator that necessarily include responsibility for coordinating the actions of others within the organizational unit.  ICR membership was
coded from textual information within the original materials, as described in Butts et al. (2007).  ICRs have been observed to play an outsized role in communication
during the WTC event, although the majority of those in central positions do not appear to have belonged to ICRs.

Note that some published analyses of the WTC radio data exclude individuals without a valid dyadic communication, while this object includes all identified communicants
including e.g. those sending only (rare) broadcast events, whose only communications involved a partner who could not be identified due to a garbled or interrupted
transmission, etc.  If desired, cross-referencing with \code{\link{WTCRadioCallers}} can be performed to filter out these individuals. 
}
\source{
Butts, Carter T.; Petrescu-Prahova, Miruna; and Cross, B. Remy.  (2007).  \dQuote{Responder Communication Networks in the World Trade Center Disaster: Implications for Modeling of Communication Within Emergency Settings.}  \emph{Journal of Mathematical Sociology,} 31(2), 121-147.
}
\references{
Renshaw, Scott L.; Livas, Selena M.; Petrescu-Prahova, Miruna G.; and Butts, Carter T.  (2023).  \dQuote{Modeling Complex Interactions in a Disrupted Environment: Relational Events in the WTC Response.} \emph{Network Science.} DOI: 10.1017/nws.2023.4
}
\examples{
data(WTCRadioCallers)

#Show the PATH radio communication data
head(WTCRadioCallers[[1]])
}
\keyword{datasets}
