#Script to estimate the model parameters using a linear approximation

install.packages ("pacman")
install.packages ("dplyr")
library (pacman)
pacman::p_load (dplyr, ggplot2)

growth_data <- read.csv("experiment1.csv")

#Case 1. K >> N0, t is small

data_subset1 <- growth_data %>% filter(t<1800) %>% mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#Case 2. N(t) = K

data_subset2 <- growth_data %>% filter(t>2500)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)
