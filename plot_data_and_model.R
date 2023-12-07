#Script to plot data and model

growth_data <- read.csv("experiment1.csv")

install.packages ("pacman")
install.packages ("dplyr")
library (pacman)
pacman::p_load (dplyr, ggplot2)

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- exp(6.951506) #
  
r <- 0.009902 #
  
K <- 6e+10 #

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')

sink(file = "package-versions.txt")
sessionInfo()
sink()
