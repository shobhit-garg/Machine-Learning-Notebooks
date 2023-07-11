# Load the required libraries
library(ggplot2)
library(GGally)

# Create a pair plot of the Iris dataset
pair_plot <- ggpairs(iris, columns = 1:4, mapping = aes(color = Species)) +
  labs(title = "Pair Plot of Iris Dataset") +
  theme_bw() +
  theme(text = element_text(face = "bold"))

# Export the pair plot as an image (e.g., PNG format)
ggsave("pair_plot.png", plot = pair_plot, width = 8, height = 8, units = "in", dpi = 100)

