kingCounty %>%
    ggplot(aes(x = year,)) +
    geom_line(aes(y = black_prison_pop_rate, color = "Black")) +
    geom_line(aes(y = aapi_prison_pop_rate, color = "AAPI")) +
    geom_line(aes(y = white_prison_pop_rate, color = "White")) +
    labs(title = "Prison Rates by race, King County",
         x = "Year",
         y = "Rate of Incarceration",
         color = "Race")
