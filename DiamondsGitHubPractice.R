#Author: Rachel Rolle

library(tidyverse)
library(dplyr)

diamonds%>%
glimpse()

diamonds%>%
select(x,y,z)%>%
print(n = 30)
