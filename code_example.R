# Stackoverflow Example

require(tidyverse)

interval <-c( 296, 393,  33,   7, 173, 102, 219,  31, 140, 492,   
                6,  17,  28,   3,  11,   1,   4,   7, 16,   8,  
               10,   2,  20,   6,  13,  13,  28,  11,  6,  13,
                1,   9,   6,   4,   1,  38 ) 
df <- tibble( interval )
df

ggplot( df, aes(x = interval, y="..density.." )) +
  geom_histogram( binwidth = 50,
                  fill = "green") +
  xlab( "Years between eruptions" ) +
  ylab( "Density" ) +
  ggtitle( "Versuvius eruptions 273 BCE to 2020 CE ")