# install package (one time only)
library(devtools)
install_github("statisticsnorway/metodebibr")

# load library
library(metodebibr)

# Example of GetKlass function
regions <- GetKlass(131)
head(regions)

# Example of help file
?PanelEstimation


# tests
devtools::test()
