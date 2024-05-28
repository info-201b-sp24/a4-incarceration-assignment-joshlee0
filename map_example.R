blackRate <- rate100k %>%
  filter(year == 2018) %>%
  mutate(stateFull = state.name[match(state, state.abb)])
state_shape <- map_data("state") %>%
  mutate(stateFull = state.name[match(region, tolower(state.name))]) %>%
  left_join(blackRate, by = "stateFull")
ggplot(state_shape) +
    geom_polygon(
        mapping = aes(x = long, y = lat, group = group, fill = black_jail_pop_rate),
        color = "white",
        size = 0.1
    ) +
    coord_map() +
    scale_fill_continuous(low = "#132B43", high = "red") +
    labs(
        fill = "Black Jail Rate",
        title = "Black Jail Rate across US"
    )+
    theme_minimal()
