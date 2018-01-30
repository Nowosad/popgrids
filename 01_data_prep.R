# library(raster)
#
# my_stack = stack(dir("data-raw/data/", pattern = "*.tif", full.names = TRUE))
# stack_names = names(my_stack)
#
# pop = subset(my_stack, stack_names[[1]])


library(raster)

pop = stack(dir("data-raw/data/", pattern = "^p", full.names = TRUE))
gdp = stack(dir("data-raw/data/", pattern = "^g", full.names = TRUE))

devtools::use_data(pop)
devtools::use_data(gdp)
