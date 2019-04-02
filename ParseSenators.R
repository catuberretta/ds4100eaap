install.packages("readxl")
library("readxl")
library(dplyr)
library(tidyr)

senators_list <- read_excel("SenatorList.xlsx")


# Regex 
# ([A-Z]{2})\s(.*)@(.*)

View(senators_list)

senators <- senators_list %>% 
  separate(Senators, into = c("both", "twitter"), sep = " @")

senators_final <- senators %>% 
  separate(both, into = c("state", "name"), sep = 3)