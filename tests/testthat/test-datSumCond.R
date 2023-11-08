
test_that("datSumCond Testing", {
  condsumdat <- datSumCond(cond = WYcond, csumvar = "LIVE_CANOPY_CVR_PCT")

  condsumdat_df <- as.data.frame(condsumdat)

  expect_snapshot(condsumdat)
})