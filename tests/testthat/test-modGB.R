
############################modGB Testing######################################

library(testthat)
library(FIESTA)

options(scipen=6)

## -TESTING - modGBpop & modGBarea 
## - Getting population data for plot     - # of Tests = 2
##Generates area estimates by domain & estimation unit, there is a non-ratio estimator for estimating
###area by stratum. Plots that are totally nonsampled are excluded from estimation dataset. The adjustment
#### factor is calculated by strata





test_that("modGBpop & modGBarea Testing", {
  
  ##modGBpop : Getting population data for plot  
  ##generates population data for generating 'green-book' estimates  
  GBpop <- modGBpop(popTabs = list(cond=WYcond, tree=WYtree),
                    pltassgn = WYpltassgn,
                    pltassgnid = "CN",
                    unitarea = WYunitarea,
                    unitvar = "ESTN_UNIT",
                    stratalut = WYstratalut,
                    strvar = "STRATUMCD",
                    strata = TRUE,
                    strata_opts = strata_options(getwt = TRUE)
  )
  ##GBpopCond <- as.data.frame(GBpop$condx) --Looks to be getting different plot status conditions -- alive or not?
  ##GBpopPltCond <- as.data.frame(GBpop$pltcondx) -- getting plot level information - year measured, conditions, CANOPY COVER PERCENT 
  ##GBpop$unitarea --gives ESTN_UNIT and acres of that particular unit: ESTN_UNITS are only odd ??
  ##GBpopSL <- as.data.frame (GBpop$stratalut) -- not sure what this output is giving ??
  GBpop_names <- list(c("module","popType", "condx", "pltcondx", "cuniqueid", "condid", "ACI.filter", "unitarea", "areavar", "areaunits", "unitvar", "unitvars", "strata", "stratalut",   "strvar", "strwtvar", "expcondtab", "plotsampcnt", "condsampcnt", "states", "invyrs", "estvar.area", "adj", "P2POINTCNT", "treex", "tuniqueid", "adjtree"))
  GBpop_names_actual <- list(names(GBpop))
  ##modGBarea Testing  
  GBarea <- modGBarea(GBpop, 
                      landarea = "FOREST",
                      rowvar = "FORTYPCD", ##Forest Type Code
                      table_opts = list(row.FIAname = TRUE))
  GBarea_est <- GBarea$est    ## Gives estimated area of per Forest Type + Percent Sampling error(19 rows by 3 columns) - But what about by plot ?
  
  area.raw <- round(GBarea$raw$rowest[1,3], digits = 1)
  area.raw_char <- as.character(area.raw)
  
  
  
  GBtree <- modGBtree(GBpop, 
                      landarea = "FOREST",
                      estvar = "VOLCFNET",
                      estvar.filter = "STATUSCD == 1",
                      rowvar = "FORTYPCD",
                      table_opts = list(row.FIAname = TRUE))
  
  head(GBtree$raw$unit_rowest)       ## By estimation unit
  head(GBtree$raw$rowest)            ## For total population
  GBtree_snap <- GBtree$est
  
  GBratio <- modGBratio(GBpop, 
                        landarea = "FOREST",
                        estvarn = "VOLCFNET",
                        estvarn.filter = "STATUSCD == 1",
                        rowvar = "FORTYPCD",
                        table_opts = list(row.FIAname = TRUE)
  )
  names(GBratio)
  GBratio_snap <- GBratio$est
  names(GBratio$raw$totest$TOTAL)
  
  
  
  
  
  expect_equal(GBpop_names_actual, GBpop_names) ## Testing for correct name output
  expect_equal(GBarea$est[1, 2], area.raw_char)
  expect_snapshot(GBtree_snap)
  expect_snapshot(GBratio_snap)
})



devtools::test()











## - TESTING - modGBratio
## - Generates per-acre and per-tree estimates by domain
GBratio <- modGBratio(GBpop, 
                      landarea = "FOREST",
                      estvarn = "VOLCFNET",
                      estvarn.filter = "STATUSCD == 1",
                      rowvar = "FORTYPCD",
                      table_opts = list(row.FIAname = TRUE)
)


names(GBratio$raw)
gbRatio_df <- as.data.frame(GBratio$raw$unit_rowest)       ## By estimation unit
head(GBratio$raw$rowest)            ## For total population
})







## - TESTING 
## - Tracys Code from Powerpoint
test_that ("modGBpop Testing from Powerpoint", {
  GBpop <- modGBpop(popTabs = list(cond=WYcond, tree=WYtree),
                    pltassgn = WYpltassgn,
                    pltassgnid = "CN",
                    unitarea = WYunitarea,
                    unitvar = "ESTN_UNIT",
                    stratalut = WYstratalut,
                    strvar = "STRATUMCD",
                    strata = TRUE,
                    strata_opts = strata_options(getwt = TRUE)
  )
  GBest <- modGBtree(GBpop,
                     estvar = "TPA_UNADJ",
                     estvar.filter = "STATUSCD == 1",
                     rowvar = "FORTYPCD",
                     sumunits = TRUE,
                     table_opts = list(row.FIAname = TRUE, col.FIAname=TRUE))

  GBbio<- modGBtree(GBpop,
                    estvar = "DRYBIO_AG",
                    estvar.filter = "STATUSCD == 1",
                    rowvar = "FORTYPCD",
                    sumunits = TRUE,
                    table_opts = list(row.FIAname = TRUE, col.FIAname=TRUE))
  
  GBbio_ag <- GBbio$est
  GB_tpa <- GBest$est
  
  expect_snapshot(GB_basalarea)
  
})

devtools::test_active_file()




testthat::test_file("C:/GitHub/FIESTA/FIESTA/tests/testthat/test-modGB.R")


