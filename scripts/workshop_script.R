# brm intro ---------------------------------------------------------------
library(tidyverse)
library(brms)

# ------- Data setup --------
set.seed(10101) # Omit or change this if you like

N <- 25

x_1 <- rnorm(N)
x_2 <- rnorm(N)

beta_0 <- 1.25
beta_1 <- 1.75
beta_2 <- 2.25

mu <- beta_0 + beta_1 * x_1 + beta_2 * x_2

y <- mu + rnorm(N, mean=0, sd=1.75)

Df <- tibble(x_1, x_2, y)

# ------ Standard, non-Bayesian, linear regression -------
M_lm <- lm(y ~ x_1 + x_2, data=Df)
summary(M_lm)
# ------ Bayesian linear regression ----------

# Set-up and sample from Bayesian linear model
# using defaults for more or less everything
M_bayes <- brm(y ~ x_1 + x_2, data = Df)

plot(M_bayes)



# Read in affairs data ----------------------------------------------------

affairs_df <- read_csv("https://raw.githubusercontent.com/mark-andrews/bayesian_ppc/master/data/affairs.csv")

M_1 <- brm(affairs ~ 1, 
           data = affairs_df, 
           family = poisson(link = 'log'))