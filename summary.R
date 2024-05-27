# Value 1
ratioBlackPop <- (sum(prisonPop$black_prison_pop, na.rm = TRUE)) / (sum(prisonPop$total_prison_pop, na.rm = TRUE))

# Value 2
maxRateState <- rate100k %>%
    filter(black_prison_pop_rate == max(black_prison_pop_rate)) %>%
    pull(state)

# Value 3
maxRateWa <- waState %>%
    filter(black_prison_pop_rate == max(black_prison_pop_rate, na.rm = TRUE)) %>%
    pull(county_name)

# Value 4
maxRateYear <- rate100k %>%
    filter(black_prison_pop_rate == max(black_prison_pop_rate, na.rm = TRUE)) %>%
    pull(year)

# Value 5
averageWhite <- rate100k %>%
     summarize(averageWhite = mean(white_prison_pop_rate, na.rm = TRUE)) %>%
     pull(averageWhite)
averageBlack <- rate100k %>%
    summarize(averageBlack = mean(black_prison_pop_rate, na.rm = TRUE)) %>%
    pull(averageBlack)
ratioBlackWhite <- averageBlack / averageWhite
