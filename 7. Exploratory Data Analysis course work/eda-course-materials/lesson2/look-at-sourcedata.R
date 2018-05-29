states <- read.csv('stateData.csv')
head(states)
dim(states)
states[states$illiteracy > 2.0, ]
subset(states, illiteracy > 2.1)

reddit <- read.csv('reddit.csv')
str(reddit)

str(reddit$age.range)
levels(reddit$age.range)

library(ggplot2)

qplot(data = reddit, x = age.range)
