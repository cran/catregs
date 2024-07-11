## -----------------------------------------------------------------------------
library(catregs)
library(Epi)
data("LF06travel")
m1 <- clogistic(choice ~ train + bus + time  + invc, strata=id, data=LF06travel)
design <- data.frame(train=c(0,0,1),bus=c(0,1,0),time=200,invc=20)
design
margins.dat.clogit(m1,design)


