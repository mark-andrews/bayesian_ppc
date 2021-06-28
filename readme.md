# Posterior predictive checking

Posterior predictive checks are used to evaluate model fits and model assiumptions in Bayesian (MCMC) based analyses.
They involve drawing samples from the posterior distribution to general hypothetical data sets, and then comparing these data sets with the observed data to indentify discrepancies between the model's predictions and the reality of the data.
Posterior predictive checks are particularly useful in complex models where the assumptions of the model are not very easy to check.
By contrast to posterior predictive checks, prior predictive checks are very useful to clarify the assumptions of choices of priors. 
Again, hypothetical data sets are generated and these make it clear what kinds of the data the prior distribution does and does not assume. 


## Using `brms` and Stan online

The following RStudio server project can be used for anyone having trouble with Stan installation.
[![Binder](https://notebooks.gesis.org/binder/badge_logo.svg)](https://notebooks.gesis.org/binder/v2/gh/mark-andrews/hellobinder-rstan/HEAD?urlpath=rstudio)

