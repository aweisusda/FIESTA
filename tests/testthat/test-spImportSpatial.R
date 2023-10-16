

# Environment Set Up
WYbhfn <- system.file("extdata",
                      "sp_data/WYbighorn_adminbnd.shp",
                      package = "FIESTA")

nonExistent <- system.file("extdata",
                           "sp_data/not_real.shp",
                           package = "FIESTA")


# Test 1
test_that("Spatial Import Works and returns Vector", {
  
  expect_vector(spImportSpatial(WYbhfn))
})

# Test 2
test_that("Spatial Import throws appropriate error if invalid file", {
  
  expect_message(spImportSpatial(nonExistent), "invalid spatial layer\n")
})

