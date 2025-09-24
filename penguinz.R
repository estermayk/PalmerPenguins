# comment
library(tidyverse)
install.packages("tidyverse")
penguins <- read.table("data/penguin_data.txt", header = T)
glimpse(penguins)
model1 <- lm(body_mass_g ~ flipper_length_mm, data = penguins)
summary(model1)
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, colour =
                       species)) +
  geom_point() +
  stat_smooth(method = "lm")
ggsave("figs/1_flipper_bodymass_regression.png")
#NB. This saves the last plot that was run!
#Subset the data:
penguins_female <- subset(penguins, sex == "female")
#Save the edited dataset:
write_tsv(penguins_female, "results/1_penguin_female_only.txt")
glimpse(penguins_female)
penguins_male <- subset(penguins, sex == "male")
write_tsv(penguins_male, "results/1_penguin_male_only.txt")
glimpse(penguins_male)
#adding a comment to try pushing and pulling from git
#megan added comment
