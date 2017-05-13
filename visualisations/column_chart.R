# ggplot2 adding labels to a bar graph
# original source: https://github.com/chrisalbon/code_r/blob/master/add-labels-to-bar-graph.r

library(ggplot2)
library(gcookbook)

# below the top of the columns
ggplot(cabbage_exp, aes(x=interaction(Date, Cultivar), y=Weight)) +
  # draw the bar plot
  geom_bar(stat="identity") +
  # create the weight text above the bar in white
  geom_text(aes(label=Weight), vjust=1.5, colour="white")

# above the top of the columns
# create a ggplot data
ggplot(cabbage_exp, aes(x=interaction(Date, Cultivar), y=Weight)) +
  # draw the bar plot
  geom_bar(stat="identity") +
  # create the weight text below the bar in white
  geom_text(aes(label=Weight), vjust=-0.2)

# labels on a grouped bar chart

# create the ggplot data for a grouped bar chart
ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) +
  # plot the bars
  geom_bar(stat="identity", position="dodge") +
  # create the label, "dodged" to fit the bars
  geom_text(aes(label=Weight), vjust=1.5, colour="white",
            position=position_dodge(.9), size=3)
