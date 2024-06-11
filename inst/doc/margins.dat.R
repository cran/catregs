## -----------------------------------------------------------------------------
library(catregs)
data("Mize19AH")
m1 <- glm(alcB ~woman*parrole + age + race2 + race3 + race4 + income + ed1 + ed2 + ed3 + ed4,family="binomial",data=Mize19AH)
des2<-margins.des(m1,expand.grid(woman=c(0,1),parrole=c(0,1)))
margins.dat(m1,des2,rounded=5)
des1 <- margins.des(m1,expand.grid(parrole=1,woman=1))
margins.dat(m1,des1,rounded=5)
des3 <- margins.des(m1,expand.grid(age=seq(20,75,5),parrole=c(0,1)))
a<- margins.dat(m1,des3,rounded=5)
a

