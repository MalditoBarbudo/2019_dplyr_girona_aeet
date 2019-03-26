babynames_foo <- as.data.frame(babynames)

# filter
babynames_foo[babynames_foo$name == 'Mary', ]

# select
babynames_foo[, c('name', 'n')]

# arrange
babynames_foo[order(babynames_foo$n), ]

# mutate
babynames_foo$n <- babynames_foo$n

# summarise
babynamesdf <- as.data.frame(babynames)
head(babynamesdf)

#family apply()
?tapply
tapply(babynamesdf$n, babynamesdf$year, max)

# aggregate
aggregate(n ~ year*sex,
          data = babynamesdf, FUN = max)

# dplyr
babynames %>% group_by(year, sex)

babynames %>%
  group_by(year, sex) %>%
  filter(name == "Mary") %>%
  select(-prop)
