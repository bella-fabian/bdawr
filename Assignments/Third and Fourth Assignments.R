library(readr)
install.packages("readxl") # package for reading excel files
library(readxl)

ches_2017 <- read.csv("import_training_files/ches_2017.csv") # reading all the files for assignment 3
ches_2017_modified <- read.csv("import_training_files/ches_2017_modified.csv", skip =4)
fiction <- read.csv("import_training_files/fiction.csv")
spotify2018 <- read.csv("import_training_files/spotify2018.csv")
books <- read_delim("import_training_files/books.txt", delim = "|")
books1 <- read_tsv("import_training_files/books.tsv")
publishers <- read_excel("import_training_files/publishers_with_places.xlsx")


library(tidyr)

spotify2018 # tidying spotify2018


books # tidying books


ches_2017_modified_tidy <- ches_2017_modified %>% # tidying ches_2017_modified
pivot_wider(names_from = variable, values_from = value) # making it wider so each variable can have its own column
ches_2017_modified_tidy

ches_2017_modified

publishers # tidying publishers

