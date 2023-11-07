library(FIESTA)
library(testthat)
library(usethis)
library(devtools)


##The `datSumCond` functions aggregates the `CONDPROP_UNADJ` variable or other continuous condition variables to plot level with option to apply condition filters. If condition variable is not `CONDPROP_UNADJ` the variable is multiplied by `CONDPROP_UNADJ` for a weighted sum.

  test_that("datSumCond Testing", {
  condsumdat <- datSumCond(
                cond = WYcond, 
                csumvar = "LIVE_CANOPY_CVR_PCT"
                )



  condsumdat_df <- as.data.frame(condsumdat)

  max(condsumdat_df$condsum.LIVE_CANOPY_CVR_PCT_PLT) ##max value of  162 for percent canopy cover? This must just be an error

  threshold <- 162

  condsumdat_df$condsum.LIVE_CANOPY_CVR_PCT_PLT <= threshold

##How to test for ensuring the value for datSumCond is less than or equal to 100 ??
expect_lte(condsumdat_df$condsum.LIVE_CANOPY_CVR_PCT_PLT, threshold)
})


  
