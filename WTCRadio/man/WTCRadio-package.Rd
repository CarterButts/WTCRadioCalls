\name{WTCRadio-package}
\Rdversion{1.1}
\alias{WTCRadio-package}
\alias{WTCRadio}
\docType{package}
\title{
Data on Radio Communication Dynamics in the World Trade Center Disaster
}
\description{ Data on interpersonal radio communication within several units 
responding to the World Trade Center disaster, manually coded from archival 
materials.  This package includes both event sequence data (radio calls) and 
networks of calls among named communicants.
}
\details{
On September 11, 2001, two hijacked airplanes were flown into the buildings of 
the World Trade Center complex in New York City.  The impacts produced 
extensive structural damage to the two largest buildings in the complex (WTC1 
and WTC2), which in combination with fires started by the collisions led to the 
collapse of both towers (as well as, subsequently, damage to and collapse of
other structures).  The unexpected nature of the attack, the extremely large 
size and overall structural complexity of the WTC itself, the large number of 
persons and agencies involved, the escalating and lethal nature of the hazard, 
and the short time window available for action made this an extremely difficult 
response.  Ultimately, 2,763 individuals died in the event (including victims 
and attackers in the hijacked airplanes, individuals in the complex, and first 
responders involved in the evacuation and firefighting effort).

The first of the two airplanes impacted WTC1 (also known as One World Trade 
Center, or the North Tower) at 8:46AM (Eastern Time Zone), with the second 
impact to WTC2 (Two World Trade Center, or the South Tower) at 9:03AM.  
Structure fires began in each building after the respective impact, rendering
the upper floors of each inaccessible.  (The impact with WTC1 occurred between 
floors 93 and 99, and that with WTC2 between floors 77 and 85.)  WTC2 collapsed 
at 9:59AM, followed by WTC1 at 10:28AM, killing all remaining occupants and 
damaging other structures in the area.

In addition to the response at the WTC itself, many other units mobilized 
during the terrorist attacks (which also included a third airliner that was 
used to strike the Pentagon in Washington D.C., and a fourth that crashed in 
rural Pennsylvania after passengers fought to regain control of the aircraft).  
Among these were personnel involved in maintaining the Port Authority 
Trans-Hudson (PATH) system in New York and New Jersey, and those at nearby 
Newark Airport (both of which were managed by the Port Authority of New York 
and New Jersey, as was the WTC).  An important tool for many of these 
responders (both at the WTC and elsewhere) was the use of hand-held radios, 
which were in many cases the primary tool for coordination, communication of 
information and directives, and maintenance of situational awareness in a 
rapidly evolving and often confusing environment.  Many of these radio systems 
were fixed-frequency, allowing members of a specific organizational entity to 
communicate with each other, but not with members of other entities (a feature 
identified by some evaluators as a consequential barrier to effective inter-
agency response).  Although cellular phones were in use at the time of the WTC 
disaster, the system was largely overwhelmed and unreliable during the critical 
response period (particularly near the WTC complex), making radio systems 
particularly critical for responders.

The data contained within the \code{WTCRadio} package consists of coded radio 
communications among responders to the WTC disaster.  The data were created by 
coding transcripts of recorded communications on 17 channels, each belonging to 
a single organizational unit using fixed frequency radios; each channel 
transcript is hence the communication record of one group, whose members could 
reach each other but not the members of other groups.  Each transcript was 
coded for communicative events (i.e., a transmission from one party to one or 
more other parties); as broadcast events (i.e., a generalized communication to 
all parties on the channel, or all members of a large group) are rare, the vast 
majority of the calls can be considered dyadic relational events in which one 
party directs a communicative act to another.  (On rare occasions, a message 
may also address multiple individuals in sequence; in this case, the message 
was coded as a sequential transmission from the sender to each named receiver 
in order of mention.)  The channels (in the order used throughout the data
set) are as follows (as taken from Petrescu-Prahova and Butts (2008)):

\describe{
\item{PATHRadioCommunications}{Communications among PATH personnel, who attempt to locate one another and account for their colleagues. [Non-specialist]}
\item{LincolnTunnelPolice}{The Lincoln Tunnel Police Department coordinates traffic through Lincoln Tunnel and cooperates with other police units to give them access to New York City. [Specialist]}      
\item{NewarkCommand}{Mobilization of police and fire equipment to be deployed at the WTC.  This channel is also used by personnel who are making sure that no unauthorized persons enter Newark Airport (which was closed following the hijackings). [Specialist]}
\item{NewarkPolice}{Newark Airport command communicates with police units deployed at the WTC.  [Specialist]}              
\item{NewarkCPD}{Newark Command Post tries to communicate with the command post vehicle in the field and assess the general status of emergency response activities.  [Specialist]}
\item{NewarkOperationsTerminals}{Newark Airport is closed, so the main desk coordinates personnel to take care of stranded passengers, luggage, and airplanes, and to evacuate terminals.  [Non-specialist]}
\item{NewarkMaintenance}{Maintenance personnel communicate among themselves, trying to determine what has happened at the WTC. [Non-specialist]}
\item{PATHControlDesk}{Due to the attacks, service at the WTC PATH station is interrupted, and the control desk coordinates train traffic in the rest of the system.  [Non-specialist]}
\item{NJSPEN1}{The State Police Emergency Network is used by New Jersey State Police units to coordinate their efforts and gather resources from all locations, as well as to regulate access into NYC via bridges and tunnels.  [Specialist]}
\item{NJSPEN2}{The PANYNJ Command Post communicates with police units inside the WTC on State Police Emergency Network 2.  After the South Tower (WTC2) collapses, they attempt to evacuate the North Tower (WTC1).  [Specialist]}                   
\item{WTCOperations}{Operations personnel from the WTC self-evacuate and reassemble in a different location on one of the nearby streets.  [Non-specialist]}
\item{WTCPolice}{Port Authority Police Department (PAPD) officers coordinate the evacuation of WTC buildings.  [Specialist]}
\item{WTCVerticalTransportation}{WTC vertical transportation personnel self-evacuate and regroup at a different location.  [Non-specialist]}
\item{NewarkFacilityManagement}{Newark Airport personnel communicate while taking the necessary steps to close down the airport. [Non-specialist]} 
\item{PATHPolice}{Communications between the PAPD central desk and the PAPD PATH desk, and PAPD officers deployed at the WTC. [Specialist]}
\item{WTCSecurity}{Security personnel organize the rescue of civilians trapped in different parts of the North Tower (WTC1).  [Specialist]}           
\item{WTCMaintenanceElectric}{WTC electrical and mechanical personnel coordinate to self-evacuate and regroup at a different location.  [Non-specialist]}
}

The transcripts themselves were obtained from a collection of documents 
released by the Port Authority of New York and New Jersey (PANYNJ) in response 
to a Freedom of Information Act lawsuit by the New York Times.  Each of the 17 
organizational units involved was thus associated with the PANYNJ, including 
units at the WTC complex, the PATH system, the Lincoln Tunnel, and Newark 
Airport.  In each case, the transcripts begin when the first airplane hit WTC1, 
and continue for 3 hours and 33 minutes or until the building housing the group
in question collapsed (whichever came first).  The transcripts lack consistent 
and detailed timing information, and it is hence not possible to specify the time 
at which specific communications occurred; the ordering of events within each 
transcript, however, is known.  No roster is available of the individuals in 
each organizational unit, nor other details on the responders themselves (who 
generally refer to each other by numbers rather than names).  Membership
in institutionalized coordinative roles (e.g., manager, operator, dispatcher) 
can often be determined from information within the transcripts, however, and 
is coded.  Each group was also coded for whether the organizational unit (as a whole) 
constituted \emph{specialist} responders, for whom response to emergencies and other
extreme events would have been part of the unit's conventional repertoire,
versus \emph{non-specialist} responders (for whom it would not have been); the
specialization codes are noted above.

Data within the package is coded into three objects (each accessible via the 
\code{\link{data}} command): \code{\link{WTCRadioCalls}}, which contains the 
individual events; \code{\link{WTCRadioCallers}}, which contains information on 
the communicants; and \code{\link{WTCRadioNets}}, which contains time-flattened 
representations of the data in network form.  Consult the manual page for each 
to obtain additional details.
}

\author{
Carter T. Butts, Miruna G. Petrescu-Prahova, and B. Remy Cross

Maintainer: Carter T. Butts <buttsc@uci.edu>
}
\references{
Good overviews of the data, data collection/coding process, and related information can be found in the following papers:

Butts, Carter T.; Petrescu-Prahova, Miruna; and Cross, B. Remy.  (2007).  \dQuote{Responder Communication Networks in the World Trade Center Disaster: Implications for Modeling of Communication Within Emergency Settings.}  \emph{Journal of Mathematical Sociology,} 31(2), 121-147.
 
Petrescu-Prahova, Miruna and Butts, Carter T.  (2008).  \dQuote{Emergent Coordinators in the World Trade Center Disaster.} \emph{International Journal of Mass Emergencies and Disasters,} 28(3), 133-168. 
 
Additional discussion of the dynamic data can be found in:

Butts, Carter T.  (2008).  \dQuote{A Relational Event Framework for Social Action.}  \emph{Sociological Methodology}, 38(1), 155-200.

Renshaw, Scott L.; Livas, Selena M.; Petrescu-Prahova, Miruna G.; and Butts, Carter T.  (2023).  \dQuote{Modeling Complex Interactions in a Disrupted Environment: Relational Events in the WTC Response.} \emph{Network Science.} DOI: 10.1017/nws.2023.4

(Note that the versions of the data used in these papers may differ somewhat from the default presentation of the package.  See the papers and data object help pages for 
additional information.)
}
\keyword{ package }
\seealso{
\code{\link{WTCRadioCalls}}, \code{\link{WTCRadioCallers}}, \code{\link{WTCRadioNets}} 
}
%\examples{
%
%}
