library(tidyverse)
library(janitor)

tree_data <- read_csv("2015_Street_Tree_Census_-_Tree_Data.csv")%>%
    clean_names() 
    
tree_data_test <- select(tree_data_clean, spc_common, borocode, borough, nta_name, latitude, longitude)
total_by_nta <- tree_data_test %>%
  group_by(nta_name) %>%
  summarize(spc_common = n()

pop_2020 <- read_csv("Demographics_by_NTA_1.csv")
pop_2020 <- clean_names(pop_2020)
pop_2010 <- read_csv("New_York_City_Population_By_Neighborhood_Tabulation_Areas (1).csv") %>%
  clean_names()
  
pop_2010 <- filter(pop_2010, year == 2010) 
pop_join <- 
  left_join(pop_2020, pop_2010, by = "nta_code")
 #need to clean this up somehow and make 


#what I want to do is look at the areas in NYC that are most threatened by sea level rise
# and also look at the tree count in those areas (that is why I am using the tree dataset.
# I need to figure out a way to link the two, which I will be asking you about in class!)

library(sf)
SLR_map <- read_sf("geo_export_e2afcb3a-70ab-4103-adec-014c2cd633ec.shp")

