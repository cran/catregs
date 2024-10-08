## -----------------------------------------------------------------------------
library(catregs)
data("Mize19AH")
m1 <- glm(alcB ~woman*parrole + age + race2 + race3 + race4 + income + ed1 + ed2 + ed3 + ed4,family="binomial",data=Mize19AH)
des2<-margins.des(m1,expand.grid(woman=c(0,1),parrole=c(0,1)))
des2
second.diff.fitted(m1,des2,compare=c(4,2,3,1),rounded=5) # [Pr(Drink | Mothers) - Pr(Drink | Childless Women)] - [Pr(Drink | Fathers) - Pr(Drink | Childless Men)]
# Note that this is reported as the "Second Difference" in Table 3 of Mize (2019: 104, "Best Practices for Estimating, Interpreting, and Presenting Nonlinear Interaction Effect. Sociological Science. 6(4): 81-117.")

