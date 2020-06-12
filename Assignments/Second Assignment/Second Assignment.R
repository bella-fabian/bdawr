animal_vector <- c(chicken=53323, cows=1334, horses=4323) # put all animals in a vector
breeding <- c(1.75, 1.3, 1.5) # a vector for the breeding rate
new_animals <- c(animal_vector * breeding) # updated number of animals stored in a new vector
ceiling(new_animals) # rounding up the animals
library(numbers) # package for the modulo operator
ceiling(new_animals) %% 2000 # the new number of animals modulo 2000
new_animals = floor(new_animals / 2000) * 2000 + (new_animals %% 2000)

