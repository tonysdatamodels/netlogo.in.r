##Reference##
#Thiele, J. C., Thiele, M. J. C., & Java, S. (2017). Package ‘RNetLogo’.#

#Clear Workspace
ls()
rm(list = ls())
cat("\014")
dev.off()

#We need install both RJAVA and RNETLOGO
install.packages("RNetLogo")
install.packages ("rJava")

#We need load both RJAVA and RNETLOGO
library (rJava)  
library(RNetLogo)

#Find NetLogo Application on PC and Open
file.choose()
NLStart("C:\\Program Files\\NetLogo 6.2.0\\app", gui = TRUE, nl.jarname = "netlogo-6.2.0.jar")
getwd()

#Test that R is communicating with Netlogo 
NLCommand("Print\"Hello From R.\"") 

#Close Netlogo GUI
NLQuit()



##TroubleShoot Options##

#Try running code directly from R GUI instead of R Studio#
#Make sure NetLogo, R and Java are all running on the same bit (i.e either 64 bit or 32 bit)#
