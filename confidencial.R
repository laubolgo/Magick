frink <- image_read("https://jeroen.github.io/images/frink.png")


image_annotate(frink, "I like R!", size = 70, gravity = "southwest", color = "green")

#En un gráfico, puede ser muy útil

library(ggplot2)
img <- image_graph(600, 400, res = 96)
p <- ggplot(iris) + geom_point(aes(Sepal.Length,Petal.Length))
print(p)
dev.off()
image_annotate(img, "CONFIDENTIAL", size = 50, color = "red", boxcolor = "pink",
               degrees = 30, location = "+100+100")
