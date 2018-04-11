library(tidyverse)
library(readxl)

# Read data
df <- read_excel('data/Tabla excel analisis.xlsx')

# Keep only until the final non-NA row
stop_here <- dplyr::first(which(is.na(df$Author)))
df <- df[1:(stop_here - 1),]
