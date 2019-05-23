install.packages("magick")
library(magick)
frink <- image_read("https://jeroen.github.io/images/frink.png")
image_trim(frink) #Trim
image_scale(frink, "200x200") #Escalar
image_flip(frink) #Voltear
image_rotate(frink, 45) #Royar
image_negate(frink) #Negativo
# Colocar Borde
frink %>% 
  image_background("blue") %>% 
  image_flatten() %>%
  image_border("pink", "10x10")

#EFECTOS
image_oilpaint(frink)
image_implode(frink)
image_charcoal(frink)
image_blur(frink)
image_edge(frink)


