######################################################################
#
# zzz.R
#
# copyright (c) 2009, Carter T. Butts <buttsc@uci.edu>
# Last Modified 08/06/09
# Licensed under the GNU General Public License version 2 (June, 1991)
#
# Part of the R/WTCRadio package
#
# .onAttach is run when the package is loaded with library(WTCRadio)
#
######################################################################

.onAttach <- function(libname, pkgname){
  temp<-packageDescription("WTCRadio")
  msg<-paste(temp$Package,": ",temp$Title,"\n",
      "Version ",temp$Version,
      " created on ",
      temp$Date,".\n", sep="")
  msg<-paste(msg,"copyright (c) 2021, Carter T. Butts, University of California-Irvine\n                    Miruna G. Petrescu-Prahova, University of Washington\n                    B. Remy Cross, University of California-Irvine\n",sep="")
  msg<-paste(msg,'For citation information, type citation("WTCRadio").\n')
  msg<-paste(msg,'Type help(package="WTCRadio") to get started.\n')
  packageStartupMessage(msg)
}

