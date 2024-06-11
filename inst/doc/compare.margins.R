## -----------------------------------------------------------------------------
library(catregs)
data("essUK")
m1 <- glm(safe ~ religious + minority*female + age,data=essUK,family="binomial")
des<-margins.des(m1,expand.grid(minority=c(0,1),female=c(0,1)))
des
ma1<-as.data.frame(marginaleffects::avg_slopes(m1,variables="female",newdata=data.frame(minority=0,religious=3.6024,age=53.146)))
ma2<-as.data.frame(marginaleffects::avg_slopes(m1,variables="female",newdata=data.frame(minority=1,religious=3.6024,age=53.146)))
cames <- rbind(ma2,ma1)
compare.margins(margins=cames$estimate,margins.ses=cames$std.error)

