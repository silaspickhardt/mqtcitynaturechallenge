library(tidyverse)
library(ggplot2)

mqt <- read.csv('graphs/mqt_inat.csv')

dates <- ggplot(mqt, aes(x = observed_on, fill = observed_on)) +
  geom_bar() 

ggsave("images/date_plot.png", plot = dates)

mqt_count <- mqt |> 
  group_by(iconic_taxon_name) |> 
  summarise(n = n())

ggplot(mqt_inat, aes(x = iconic_taxon_name, y = , fill = iconic_taxon_name)) +
  geom_col() +
  coord_polar(theta = "y") +
  xlim(c(0.5, 2.5)) + 
  theme_void() +
  theme(
    legend.position = "bottom"
  )
ggplot(mqt_inat, aes(x = before, y = after))+ 
  geom_point(color=color_code, size=4, alpha=0.6, position = position_jitter())