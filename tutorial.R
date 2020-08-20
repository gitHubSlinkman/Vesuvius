# tutorial.R

require(tidyverse)

options(scipen=999)  # turn off scientific notation like 1e+06

data("midwest", package = "ggplot2")  # load the data


# Init Ggplot
p <- 
   ggplot(midwest, aes(x=area, y=poptotal))  # area and poptotal are columns in 'midwest'
p


p <- p + geom_point()
p
 
p <- p + geom_smooth( method = "lm",
                      se = FALSE )
p

p1 <-  p +  xlim(c(0, 0.1)) +
           ylim(c(0, 1000000)) 
p1


