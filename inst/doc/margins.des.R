## -----------------------------------------------------------------------------
library(catregs)
data("Mize19AH")
m1 <- glm(alcB ~woman*parrole + age + race2 + race3 + race4 + income + ed1 + ed2 + ed3 + ed4,family="binomial",data=Mize19AH)
margins.des(mod=m1,ivs=expand.grid(woman=c(0,1)))
margins.des(mod=m1,ivs=expand.grid(woman=c(0,1),parrole=1))

## -----------------------------------------------------------------------------
margins.des(mod=m1,ivs=expand.grid(woman=c(0,1),parrole=c(0,1)))


## -----------------------------------------------------------------------------
margins.des(mod=m1,ivs=expand.grid(woman=c(0,1),income=seq(0,150,10)))

