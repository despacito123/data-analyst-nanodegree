library(ggplot2)
library(dplyr)
library(gridExtra)

data("diamonds")


diamonds$color <- ordered(diamonds$color, levels = c("J", "I", "H", "G", "F", "E", "D"))
diamonds$clarity <- ordered(diamonds$clarity, levels = c("I1", "SI1", "SI2", "VS1", "VS2", "VVS1", "VVS2", "IF"))


ggplot(
  data = diamonds,
  aes(x = x, y = price)
) +
  geom_point(color = "orange", alpha = 0.1)

cor.test(x = diamonds$x, y = diamonds$price)
cor.test(x = diamonds$y, y = diamonds$price)
cor.test(x = diamonds$z, y = diamonds$price)

ggplot(
  data = diamonds,
  aes(x = depth, y = price)
) +
  geom_point(color = "orange", alpha = 0.01) +
  scale_x_continuous(breaks = seq(50, 70, 2))

cor.test(x = diamonds$depth, y = diamonds$price)

ggplot(
  data = diamonds,
  aes(x = carat, y = price)
) +
  geom_point(color = "orange", alpha = 0.1) +
  coord_cartesian(
    xlim = c(0, quantile(diamonds$carat, 0.99))
  ) +
  scale_x_continuous(breaks = seq(min(diamonds$carat), quantile(diamonds$carat, 0.99), 0.2))

diamonds$cubic.volume = diamonds$x * diamonds$y * diamonds$z

ggplot(
  data = diamonds,
  aes(x = cubic.volume, y = price)
) +
  geom_point(alpha = 0.1)

cor.test(
  x = subset(diamonds, cubic.volume > 0 & cubic.volume < 800)$cubic.volume,
  y = subset(diamonds, cubic.volume > 0 & cubic.volume < 800)$price
)

ggplot(
  data = subset(diamonds, cubic.volume > 0 & cubic.volume < 800),
  aes(x = cubic.volume, y = price)
) +
  geom_point(alpha = 0.1, color = "orange") +
  geom_smooth()

#       (1) mean_price
#       (2) median_price
#       (3) min_price
#       (4) max_price
#       (5) n

diamondsByClarity <- diamonds %>%
  group_by(clarity) %>% 
  summarise(
    mean_price = mean(price),
    median_price = median(price),
    min_price = min(price),
    max_price = max(price),
    n = n()
  )


diamonds_by_clarity <- group_by(diamonds, clarity)
diamonds_mp_by_clarity <- summarise(diamonds_by_clarity, mean_price = mean(price))

diamonds_by_color <- group_by(diamonds, color)
diamonds_mp_by_color <- summarise(diamonds_by_color, mean_price = mean(price))

clarity.bar <- ggplot(
  data = diamonds_mp_by_clarity,
  aes(clarity)
) +
  geom_bar(aes(weight = mean_price))

color.bar <- ggplot(
  data = diamonds_mp_by_color,
  aes(color)
) +
  geom_bar(aes(weight = mean_price))

grid.arrange(clarity.bar, color.bar)

ggplot(
  data = subset(diamonds, cubic.volume > 0 & cubic.volume < 600),
  aes(x = cubic.volume, y = color)
) +
  geom_point(alpha = 0.01)

