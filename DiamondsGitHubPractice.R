#Author: Rachel Rolle

library(tidyverse)
library(dplyr)

diamonds%>%
glimpse()

diamonds%>%
select(x,y,z)%>%
print(n = 30)



library(data.table)

diamond_table <- as.data.table(diamonds)

result <- diamond_table[ cut == "Premium" & price > 7000 & price < 10000,.(carat, cut, price)][order(-carat)][1:20]

print(result)
