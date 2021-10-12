
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

#Import MixSIAR
#library(MixSIAR)

#Optionally import other libraries useful for working with MixSIAR
#library(tidyverse)
#library(readxl)
#library(openxlsx)
#library(ggpubr)

## Run a MixSIAR model

#Print normalized tracers
#  paste("Normalized Tracers:", "",
#        if(mix$n.iso==2){
#          calc_area(source=source,mix=mix,discr=discr)})
  
  #Plot prior
#  plot_prior(alpha.prior=prior,source)
  
  #Write Jags Model
#  write_JAGS_model("mixsiar_model.txt", resid_err, process_err, mix, source)
  
  #Run Jags Model
#  jags.1 <- run_model(run=run,mix,source,discr,model_filename,
#                      alpha.prior = prior,resid_err,process_err)
  
  #Process Output
#  output_JAGS(jags.1, mix, source)
  
#Save results in new subdirectory
mixsiar_save(new_dir = "main_model",
             isospace_filename = "isospace",
             model_filename = "mixsiar_model.txt")
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
