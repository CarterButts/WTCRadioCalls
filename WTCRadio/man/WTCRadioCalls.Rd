\name{WTCRadioCalls}
\Rdversion{1.1}
\alias{WTCRadioCalls}
\docType{data}
\title{
Sequential Information on WTC Radio Calls
}
\description{
A list of data frames, each of which contains the sequence information for radio communication within a single WTC unit.  Each data frame indicates the event number,
sender, and receiver of each event, the latter two being \code{NA} when unknown.  Events representing broadcasts to all persons on the channel (or similarly broad and
undefined groups) are also indicated.
}
\usage{data(WTCRadioCalls)}
\format{
  A list of 17 \code{data.frame} objects, containing coded transmissions on each WTC channel, with data sizes as follows:

%For reference, here's the stat code:
%cat(paste(apply(t(sapply(1:17,function(i){
%  el<-as.matrix(WTCRadioCalls[[i]]); 
%  dl<-el[apply(!is.na(el),1,all)&(!el[,4]),]; 
%  c(regnam[i], NROW(el) ,NROW(dl), sum(el[,4]), NROW(WTCRadioCallers[[i]]), length(unique(c(dl[,2], dl[,3]))))
%})),1,paste,collapse=" \\tab "),collapse=" \\cr \n"))

  \tabular{lrrrrr}{
Channel \tab Events \tab Comp. Dyadic Ev. \tab Broadcasts \tab Nominal Comm. \tab Dyad. Comm. \cr
PATHRadioCommunications \tab 81 \tab 70 \tab 0 \tab 32 \tab 28 \cr 
LincolnTunnelPolice \tab 1217 \tab 1146 \tab 20 \tab 229 \tab 205 \cr 
NewarkCommand \tab 377 \tab 320 \tab 5 \tab 111 \tab 108 \cr 
NewarkPolice \tab 85 \tab 83 \tab 1 \tab 24 \tab 24 \cr 
NewarkCPD \tab 327 \tab 271 \tab 1 \tab 50 \tab 46 \cr 
NewarkOperationsTerminals \tab 1118 \tab 1012 \tab 8 \tab 138 \tab 132 \cr 
NewarkMaintenance \tab 90 \tab 77 \tab 1 \tab 27 \tab 25 \cr 
PATHControlDesk \tab 1159 \tab 1066 \tab 15 \tab 229 \tab 220 \cr 
NJSPEN1 \tab 812 \tab 575 \tab 16 \tab 166 \tab 140 \cr 
NJSPEN2 \tab 305 \tab 149 \tab 8 \tab 32 \tab 26 \cr 
WTCOperations \tab 601 \tab 562 \tab 11 \tab 130 \tab 113 \cr 
WTCPolice \tab 493 \tab 481 \tab 5 \tab 37 \tab 35 \cr 
WTCVerticalTransportation \tab 823 \tab 780 \tab 15 \tab 246 \tab 230 \cr 
NewarkFacilityManagement \tab 1196 \tab 1100 \tab 12 \tab 237 \tab 228 \cr 
PATHPolice \tab 823 \tab 689 \tab 20 \tab 93 \tab 88 \cr 
WTCSecurity \tab 683 \tab 582 \tab 15 \tab 118 \tab 109 \cr 
WTCMaintenanceElectric \tab 933 \tab 864 \tab 10 \tab 256 \tab 225 \cr
  }

The second column of the above is the total event count; the second is the account of complete (i.e., no missingness) dyadic events; the third is the count of broadcast events; the fourth is the number of nominal communicators (named communicants); and the last is the number of named communicants involved in complete dyadic events.

Each \code{data.frame} contains four variables:

\tabular{lrr}{
number \tab numeric \tab Event number \cr
source \tab numeric \tab Sender ID \cr
recipient \tab numeric \tab Receiver ID \cr
broadcast \tab logical \tab Is this a broadcast event? \cr
}

Each \code{data.frame} also contains two additional attributes:

\tabular{lrr}{
n \tab numeric \tab Number of nominal communicators on the channel \cr
specialist \tab logical \tab Is this a group of specialist responders? \cr
}
}
\details{
As described in \code{\link{WTCRadio}}, each transcript was coded for the sender and receiver of each event; these here are listed by ID numbers that correspond to
those in \code{\link{WTCRadioCallers}} and \code{\link{WTCRadioNets}}.  Where interference or cross-talk resulted in a garbled transmission for whom the identity
of the sender or receiver could not be determined, the associated information is marked as missing.  A small fraction of messages were \dQuote{broadcasts}, in which
the sender's message was not clearly targeted to an individual or identified set thereof.  These are coded using the \code{broadcast} flag, with the recipient
field marked as \code{NA}.  While the timing of events cannot be ascertained, the order is known (and all events are given in order).   The nominal number of communicants and the designation of the network as specialist vs. non-specialist responders are also included as attributes.
}
\source{
Butts, Carter T.; Petrescu-Prahova, Miruna; and Cross, B. Remy.  (2007).  \dQuote{Responder Communication Networks in the World Trade Center Disaster: Implications for Modeling of Communication Within Emergency Settings.}  \emph{Journal of Mathematical Sociology,} 31(2), 121-147.
}
\references{
Renshaw, Scott L.; Livas, Selena M.; Petrescu-Prahova, Miruna G.; and Butts, Carter T.  (2023).  \dQuote{Modeling Complex Interactions in a Disrupted Environment: Relational Events in the WTC Response.} \emph{Network Science.} DOI: 10.1017/nws.2023.4
}
\examples{
data(WTCRadioCalls)

#A peek at the PATH radio sequence
head(WTCRadioCalls[[1]])
}
\keyword{datasets}
