library(ggplot2)
n = 9
vals <- rnorm(n^2, mean = 100, sd = 30)
x <- expand.grid(x = 1:n, y = 1:n) |>
  cbind(vals)
x$color <- sample(letters[1:4], size = nrow(x), replace = T)


ggplot(x, aes(x, y, size = vals, color = color)) +
  geom_point() +
  MetBrewer::scale_color_met_d("Egypt") +
  theme_void() +
  theme(legend.position = "none",
        plot.background = element_rect(fill = "black"))

