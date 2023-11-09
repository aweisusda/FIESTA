test_that("Union Poly Works and creates expected SF object", {
  
  # Set up data
  WYbhfn <- system.file("extdata",
                        "sp_data/WYbighorn_adminbnd.shp",
                        package = "FIESTA")

  USAco <- geodata::gadm(country = "USA", level = 2, path = tempdir())
  WYco <- USAco[USAco$NAME_1 == "Wyoming"]

  WYbh <- spImportSpatial(WYbhfn)

  polyUnion <- suppressWarnings(spUnionPoly(polyv1 = WYco,
                                            polyv2 = WYbh,
                                            areacalc = TRUE))

  expect_snapshot(polyUnion)
})
