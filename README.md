
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mxsrquick

<!-- badges: start -->
<!-- badges: end -->

The goal of mxsrquick is to is to make MixSIAR project run quicker

## Installation

You can install the development version of stepurr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
# devtools::install_github("mncube/mxsrquick")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(mxsrquick)

#Save results in new subdirectory
mixsiar_save(new_dir = "main_model",
             isospace_filename = "isospace",
             model_filename = "mixsiar_model.txt")
#> Warning in dir.create(new_dir): 'main_model' already exists
#> Warning in .f(.x[[i]], ...): cannot remove file 'prior_plot.pdf', reason 'No
#> such file or directory'
#> Warning in .f(.x[[i]], ...): cannot remove file 'pairs_plot.pdf', reason 'No
#> such file or directory'
#> Warning in .f(.x[[i]], ...): cannot remove file 'summary_statistics.txt', reason
#> 'No such file or directory'
#> Warning in .f(.x[[i]], ...): cannot remove file 'diagnostics.txt', reason 'No
#> such file or directory'
#> Warning in .f(.x[[i]], ...): cannot remove file 'diagnostics.pdf', reason 'No
#> such file or directory'
#> Warning in .f(.x[[i]], ...): cannot remove file 'mixsiar_model.txt', reason 'No
#> such file or directory'
#> [[1]]
#> [1] FALSE
#> 
#> [[2]]
#> [1] FALSE
#> 
#> [[3]]
#> [1] FALSE
#> 
#> [[4]]
#> [1] FALSE
#> 
#> [[5]]
#> [1] FALSE
#> 
#> [[6]]
#> [1] FALSE
```
