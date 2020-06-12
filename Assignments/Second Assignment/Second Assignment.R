animal_vector <- c(chicken=53323, cows=1334, horses=4323) # put all animals in a vector
breeding <- c(1.75, 1.3, 1.5) # a vector for the breeding rate
new_animals <- c(animal_vector * breeding) # updated number of animals stored in a new vector
ceiling(new_animals) # rounding up the animals
library(numbers) # package for the modulo operator
ceiling(new_animals) %% 2000 # the new number of animals modulo 2000 (I don't know what purpose this serves)
ceiling(new_animals %/% 2000) # the amount of animals divides by 2000 = the amount of times taxes have to be paid for each category
# The farmer has to pay x*46 for the chicken, nothing for the cows and x*3 for the horses, so she has to pay the most for the chicken
library(tibble)
animal_tibble <-tibble( #a tibble to store the data
  `breed` = c('chicken', 'cows', 'horses'),
  `number_timepoint_1` = animal_vector,
  `number_timepoint_2` = ceiling(new_animals),
  `number of tax units` = ceiling(new_animals) %/% 2000
  # `animals without taxes` = ceiling(new_animals) %% 2000
)
animal_tibble
