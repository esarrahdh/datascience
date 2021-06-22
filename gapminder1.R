library(gapminder)
gm <- gapminder::gapminder

ggplot(data = gm, aes(x = continent, y = lifeExp)) + geom_histogram(stat = 'identity')

gm %>% filter(year == 1982)
# Create a histogram of life expectancy in 1982, not sure how to make a histogram
gm_1982 <- gm %>% filter(year == 1982)
ggplot(data = gm_1982, aes(x = continent, y = lifeExp)) + geom_line()


#Create a line plot for population in Asia, colored by country. Make the lines a bit thicker and more transparent. not sure how to do this either.

asia_pop <- gm %>% filter(continent == 'Asia')
ggplot(data = asia_pop, aes(x = country, y = pop)) + geom_line(size = 1.0, alpha = 0.5)


#Add new x and y axis labels, as well as a chart title.
ggplot(data = asia_pop, aes(x = country, y = pop, title('Asias Pop'))) + geom_line()

# Create a bar chart of all European countries gdp per capita in 2002

eurogdp <- gm %>% filter(continent == 'Europe', year == 2002) %>% group_by(gdpPercap)

ggplot(data = eurogdp, aes(x = country, y = gdpPercap)) + geom_bar(stat = 'identity')

#Make the bars transparent and filled with the color blue. for some reason by chart is only inserting the color red, no matter what color I type.

ggplot(data = eurogdp, aes(x = country, y = gdpPercap, fill = 'blue')) + geom_bar(stat = 'identity')

# Create a new data set called the_nineties that only contains years from the 1990s.

the_nineties <- gm %>% filter(year = 1990-2007)






