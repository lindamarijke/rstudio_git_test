# Install the tidyverse if not already installed
if (!requireNamespace("tidyverse"))
  install.packages("tidyverse")
# loading library
library("tidyverse")
# loading datafile
surveys_complete <- read_csv("data/surveys_complete.csv")

# Assign plot to a variable
surveys_plot <- ggplot(data = surveys_complete,
                       mapping = aes(x = weight, y = hindfoot_length))

# Draw the plot
surveys_plot +
  geom_point()

