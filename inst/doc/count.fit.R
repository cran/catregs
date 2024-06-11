## -----------------------------------------------------------------------------
library(catregs)
data("LF06art")
p1 <- glm(art ~ fem + mar + kid5 + phd + ment , family = "poisson", data = LF06art)
table(LF06art$art)
fit<-count.fit(p1,0:19)
names(fit)
#fit$ic
#fit$pic
#fit$models
#fit$models.pic

