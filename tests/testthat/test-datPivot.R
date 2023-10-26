library(FIESTA)
library(testthat)
library(usethis)
library(devtools)

##Pivot table summarizes and analyzes large quantities of data
test_that("datPivot Testing", {
##Using datPivot - from vignette
  test1 <- datPivot(x = WYtree,
                     pvar = "HT", ##Height
                     xvar = "SPGRPCD", ##Species Group Code
                     yvar = "TREECLCD", ##Tree Class Code
                     pfun = mean ##Name of function to use for pivot values
  )
  expect_equal(dim(test1), c(10,4))
  
##Using datPivot - from Tracy's Example
  test2 <- datPivot(x = WYtree,
                   pvar = "VOLCFNET",
                   xvar = "PLT_CN",
                   yvar = "SPCD",
                   xfilter = "STATUSCD == 1")
  
    CN <- 40404730010690
    test2[test2$PLT_CN == CN, "113",][[1]]
    input1 <- WYtree[WYtree$PLT_CN == CN, ]
    expect_snapshot(test2[test2$PLT_CN == CN, "113",][[1]])
})
