## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 10,  
  fig.height = 6 
)

## ----setup,include = FALSE----------------------------------------------------
library(usdatasets)

library(ggplot2)

library(dplyr)

## ----message=FALSE, warning=FALSE---------------------------------------------

# Example: Visualizing finish times of the NYC Marathon
# Ajustado para las columnas disponibles en 'marathon_tbl_df'
marathon_tbl_df %>%
  ggplot(aes(x = year, y = time, color = gender)) +
  geom_point(alpha = 0.6) +
  labs(title = "Marathon Finish Times by Year and Gender",
       x = "Year",
       y = "Finish Time (minutes)",
       color = "Gender") +
  theme_minimal()


## ----message=FALSE, warning=FALSE---------------------------------------------

# Example: Visualizing the distribution of NBA player heights
nba_players_19_tbl_df %>%
  ggplot(aes(x = height)) +
  geom_histogram(binwidth = 2, alpha = 0.7, fill = "blue", color = "black") +
  labs(title = "Distribution of NBA Player Heights",
       x = "Height (inches)",
       y = "Count") +
  theme_minimal()



## ----message=FALSE, warning=FALSE---------------------------------------------

# Example: Visualizing police use of force incidents by race
mn_police_use_of_force_df %>%
  group_by(race) %>%
  summarize(count = n()) %>%
  ggplot(aes(x = reorder(race, count), y = count, fill = race)) +
  geom_bar(stat = "identity") +
  labs(title = "Incidents of Police Use of Force by Race",
       x = "Race",
       y = "Number of Incidents") +
  theme_minimal() +
  coord_flip()



