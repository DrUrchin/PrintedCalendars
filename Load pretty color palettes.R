# Tool to use color palettes downloaded from
# https://www.shutterstock.com/blog/101-color-combinations-design-inspiration
# Update: 11 June 2020

# Load dummy data for plotting
attach(iris)

# Do we need to install new packages?
list.of.packages <- c("swatches", "prismatic")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

# Library() for all the packages
lapply(list.of.packages, library, character.only=TRUE)

# Check the files names
Files=list.files("~/101 Color Combinations Swatch Files",
                 full.names = T)

# _________________________________________
# Function for importing and plotting the color palettes from 101 palettes
color.check<- function(X){
  MyCols <<- read_ase(as.character(Files[X])) # Read the ase file with color palettes 
  print(MyCols)
  
  par(mfrow=c(2,1), mar=c(1,1,1,1))
      show_palette(MyCols)
      
      check_color_blindness(MyCols)  # Check for Color Blind vision
      }
# _________________________________________


# Check the colors:
color.check(5)           # Changes Files[X] with X from 1 to 101
color.check(65)
color.check(81)
color.check(90)
color.check(52)
color.check(53)

COL1=read_ase(as.character(Files[65]))

# Create a transparent palette:
colRGB1=col2rgb(MyCols[1])
colRGB2=col2rgb(MyCols[2])
colRGB3=col2rgb(MyCols[3])
colRGB4=col2rgb(MyCols[4])

palette(c(rgb(colRGB1[1], colRGB1[2], colRGB1[3], alpha=175, maxColorValue=255), 
          rgb(colRGB2[1], colRGB2[2], colRGB2[3], alpha=175, maxColorValue=255), 
          rgb(colRGB3[1], colRGB3[2], colRGB3[3], alpha=175, maxColorValue=255), 
          rgb(colRGB4[1], colRGB4[2], colRGB4[3], alpha=175, maxColorValue=255))) 


plot(Sepal.Length, Petal.Width, xlab="", ylab="", 
     pch=21, bg=Species)
abline(lm(Petal.Width~Sepal.Length), col=4, lwd=2)
check_color_blindness(MyCols) 
