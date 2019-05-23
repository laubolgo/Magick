library(magick) 

#gif animation
  
  # Download images
  oldlogo <- image_read("https://developer.r-project.org/Logo/Rlogo-2.png")
  newlogo <- image_read("https://jeroen.github.io/images/Rlogo.png")
  logos <- c(oldlogo, newlogo)
  logos <- image_scale(logos, "400x400")
  
  
  # Create GIF
  
  (animation1 <- image_animate(logos))
  image_write(animation1)
  
  # Morph effect  <-- result of this is shown
  
  (animation2 <- image_animate(image_morph(logos, frames = 10)))
  image_write(animation2)
  
