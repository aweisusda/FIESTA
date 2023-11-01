test_that("modGBchng Testing", {
##10/24/23 - In Progress: Reach back out to Tracy by 10/30
  GBpop <- modGBpop(popTabs = list(cond=WYcond, tree=WYtree),
                    pltassgn = WYpltassgn,
                    pltassgnid = "CN",
                    unitarea = WYunitarea,
                    unitvar = "ESTN_UNIT",
                    stratalut = WYstratalut,
                    strvar = "STRATUMCD",
                    strata = TRUE,
                    strata_opts = strata_options(getwt = TRUE))
  GBchng <- modGBchng(GBpop, 
                        chngtype = "TOTAL",
                        landarea = "FOREST",
                        rowvar = "FORTYPCD")
})




