#Author: Rachel Rolle

library(tidyverse)
library(dplyr)
diamonds

diamonds%>%
select(x,y,z)%>%
print(n = 30)
