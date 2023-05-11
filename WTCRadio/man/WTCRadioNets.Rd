\name{WTCRadioNets}
\Rdversion{1.1}
\alias{WTCRadioNets}
\docType{data}
\title{
Time-aggregated WTC Radio Communication Networks
}
\description{
A list containing time aggregated network representations of the WTC radio communication data.  The vertices of each network are identified communicants from the
corresponding transcript, which edges indicating the presence of radio calls.  Metadata for numbers of calls exchanged, institutionalized coordinative role
membership, and specialist status are also included.
}
\usage{data(WTCRadioNets)}
\format{
 A list of 17 \code{\link[network]{network}} objects:

\tabular{llrl}{
 [[1]]  \tab PATHRadioCommunications \tab network \tab \cr
 [[2]]  \tab LincolnTunnelPolice \tab network \tab \cr
 [[3]]  \tab NewarkCommand \tab network \tab \cr           
 [[4]]  \tab NewarkPolice  \tab network \tab \cr            
 [[5]]  \tab NewarkCPD  \tab network \tab \cr
 [[6]]  \tab NewarkOperationsTerminals \tab network \tab \cr
 [[7]]  \tab NewarkMaintenance \tab network \tab \cr
 [[8]]  \tab PATHControlDesk  \tab network \tab \cr         
 [[9]]  \tab NJSPEN1 \tab network \tab \cr
 [[10]] \tab NJSPEN2  \tab network \tab \cr                  
 [[11]] \tab WTCCperations  \tab network \tab \cr             
 [[12]] \tab WTCPolice  \tab network \tab \cr                
 [[13]] \tab WTCVerticalTransportation \tab network \tab \cr
 [[14]] \tab NewarkFacilityManagement  \tab network \tab \cr
 [[15]] \tab PATHPolice \tab network \tab \cr
 [[16]] \tab WTCSecurity \tab network \tab \cr               
 [[17]] \tab WTCMaintenanceElectric \tab network \tab \cr   
}

Each network has one edge attribute:

\tabular{lrr}{
  calls \tab numeric \tab Total number of calls from i to j \cr
}

Each network has two network attributes:

\tabular{lrr}{
  channel \tab    character \tab Channel name \cr
  specialist \tab logical \tab Are these specialized responders? \cr
}

Each network also has two vertex attributes:

\tabular{lrr}{
  has.valid \tab logical \tab Does this vertex have at least one valid event? \cr
  inst.coord \tab logical \tab Does this vertex occupy an institutionalized coordinative role? \cr
}

}
\details{
Each network consists of the callers identified from the respective transcript (per \code{\link{WTCRadioCallers}}), with an i,j edge indicating the presence
of a call from i to j in the data set (see \code{\link{WTCRadioCalls}}).  A vertex attribute is included to indicate whether each vertex has an institutionalized
coordinative role, with a second attribute indicating whether the vertex has valid calls within the data set.  (Note that it is possible for a vertex to have 
no valid calls, if e.g. it was identified as the sender or receiver of a single garbled communication, the other party of which could not be identified due to
missing data.)  An edge attribute is also included containing the number of i,j calls for each edge having a positive number thereof.

Butts et al. (2007) label each organizational unit as consisting of \emph{specialist} or \emph{non-specialist} responders, based on whether or not responding
to emergencies would have been a standard part of their organizational repertoire.  This label is included as a network attribute for each network, as is the channel name.

}
\source{
Butts, Carter T.; Petrescu-Prahova, Miruna; and Cross, B. Remy.  (2007).  \dQuote{Responder Communication Networks in the World Trade Center Disaster: Implications for Modeling of Communication Within Emergency Settings.}  \emph{Journal of Mathematical Sociology,} 31(2), 121-147.
}
\references{
Renshaw, Scott L.; Livas, Selena M.; Petrescu-Prahova, Miruna G.; and Butts, Carter T.  (2023).  \dQuote{Modeling Complex Interactions in a Disrupted Environment: Relational Events in the WTC Response.} \emph{Network Science.} DOI: 10.1017/nws.2023.4
}
\examples{
data(WTCRadioNets)

#Plot the PATH radio network, indicating ICRs
plot(WTCRadioNets[[1]], vertex.col="inst.coord")

}
\keyword{datasets}
