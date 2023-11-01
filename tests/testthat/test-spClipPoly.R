
test_that("Clip polygon works as expected", {

  # Setup data 
  USAco <- geodata::gadm(country = "USA", level = 2, path=tempdir())    
  WYco <- USAco[USAco$NAME_1 == "Wyoming"]

  WYbhfn <- system.file("extdata",
                      "sp_data/WYbighorn_adminbnd.shp",
                      package = "FIESTA")

  WYbh <- spImportSpatial(WYbhfn)

  # Test
  clipped <- spClipPoly(polyv = WYco, clippolyv = WYbh, areacalc=TRUE)

  # Check Counties
  exp <- c("Big Horn", "Johnson", "Sheridan", "Washakie")
  clipped_counties <- clipped$NAME_2
  expect_equal(clipped_counties, exp)

  #Check Calculated Area
  exp_acrs <- 1112356
  clipped_acres <- sum(round(clipped$ACRES_GIS))
  expect_equal(clipped_acres, exp_acrs)
})