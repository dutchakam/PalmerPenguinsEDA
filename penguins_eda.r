install.packages("PalmerPenguins")
library(palmerpenguins)
data("penguins")

clean_penguins <- penguins %>% 
  drop_na()

ggplot(data=clean_penguins) +
  geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g), color="green") +
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, alpha=species)) +
  labs(title="Palmer Penguins", 
       subtitle="Flipper Length VS Body Mass", 
       x="Flipper Length (mm)", 
       y="Body Mass (g)",
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text", x=200, y=6500, label="Gentoos are the largest") +
  annotate("text", x=190, y=2400, label="Adelies are the smallest")



