\name{list.coef}
\alias{list.coef}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Transform glm and mixed model objects into model summaries that include coefficients, standard errors, exponentiated coefficients, confidence intervals and percent change.
}
\description{
Given a glm model object or a mixed model model object, the function computes and returns: coefficients, standard errors, z-scores, confidence intervals, p-values, exponentiated coefficients, confidence intervals for exponentiated coefficients, and percent change.

Supported models include logistic regression via the glm function, ordinal regression via mass::polr, multinomial regression via nnet:multinom, Poisson regression via the glm function, negative binomial regression via mass::glm.nb, mixed effects models for continuous outcomes with serial correlation via nlme::lme, mixed effects logistic and poisson regression via lme4::glmer, mixed effects negative binomial regression via lme4::glmer.nb, and mixed effects ordinal regression via ordinal::clmm.
}
\usage{
list.coef(model,rounded=3,alpha=.05)}
\arguments{
  \item{model}{A model object. The model should be regression model for limited dependent variables, such as a logistic regression, or a mixed model from nlme or lme4/lmerTest.}
  \item{rounded}{The number of decimal places to round the output. The default is 3.}
  \item{alpha}{The alpha value for confidence intervals. Default is .05.}
}
\value{
  \item{b}{The estimated model coefficients from the model object.}
  \item{S.E.}{The estimated model standard errors from the model object.}
  \item{Z}{The z-statistic corresponding to the coefficient.}
  \item{LL CI}{Given the coefficient, standard error and alpha value (default=.05), the lower limit of the confidence interval around the coefficient is reported.}
  \item{UL CI}{Given the coefficient, standard error and alpha value (default=.05), the upper limit of the confidence interval around the coefficient is reported.}
  \item{p-val}{The p-value associated with the z-statistic.}
  \item{exp(b)}{The exponentiated model coefficients. That is, odds ratios in the case of a logistic regression, or incidence rate ratios in the case of a count model.}
  \item{LL CI for exp(b)}{Given the exponentiated coefficient, standard error and alpha value (default=.05), the lower limit of the confidence interval around the exponentiated coefficient is reported.}
  \item{UL CI for exp(b)}{Given the exponentiated coefficient, standard error and alpha value (default=.05), the upper limit of the confidence interval around the exponentiated coefficient is reported.}
  \item{Percent}{The coefficients in terms of percent change. That is, 100*(exp(coef(model))-1)}
}
\author{
David Melamed
}
\examples{
data("Mize19AH")
m1 <- glm(alcB ~woman*parrole + age + race2 +
race3 + race4 + income + ed1 + ed2 + ed3 +
ed4,family="binomial",data=Mize19AH)
list.coef(m1,rounded=4)
list.coef(m1,rounded=4,alpha=.01)
}

