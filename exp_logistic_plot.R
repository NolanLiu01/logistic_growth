<<<<<<< HEAD
# load necessary packages

install.packages ("pacman")
library (pacman)
pacman::p_load (dplyr, ggplot2)

# load data

growth_data <- read.csv("experiment1.csv")

# logistic function 

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

# exponential function 

exp_fun <- function (t) {
  N <- N0*(exp(r*t))
}

# parameters 

N0 <- exp(6.951506) #

r <- 0.009902 #

K <- 6e+10 #

# the plot

ggplot(aes(t,N), data = growth_data) +
  
  geom_function (fun = logistic_fun, color="red") +
  
  geom_function (fun = exp_fun, color = "blue") +
  
  xlim (0, 3000) +
  
  ylim (0, (9*10^10)) +
  
  geom_point()
=======
>>>>>>> c4b3083410742089918f02ce7a36117b39e71dc1

