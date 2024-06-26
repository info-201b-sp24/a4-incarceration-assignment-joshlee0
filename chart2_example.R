snohomishCounty <- waState %>%
  filter(str_detect(county_name, "Snohomish County"))
snohomishCounty %>% 
    ggplot(aes(x = white_jail_pop_rate, y = total_jail_pop_rate)) +
    geom_point() +
    labs(title = "White Jail Rate vs Total Jail Rate",
        x = "White Jail Rate",
        y = "Total Jail Rate")
