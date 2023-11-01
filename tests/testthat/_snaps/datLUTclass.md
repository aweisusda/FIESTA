# datLUTclass function works as expected

    Code
      testLUT_results
    Output
                PLT_CN CONDID SUBP TREE STATUSCD SPCD SPGRPCD DIA HT TREECLCD AGENTCD
      1 40404738010690      1    2    3        2   19      12  NA NA       NA      70
      2 40404738010690      1    2    4        2   19      12  NA NA       NA      70
      3 40404738010690      1    2    7        1   19      12 5.3 26        2      NA
      4 40404821010690      1    1    7        1   19      12 5.9 48        2      NA
      5 40404821010690      1    1    8        1   19      12 8.1 45        2      NA
      6 40404821010690      1    1   11        2   19      12  NA NA       NA      70
        STANDING_DEAD_CD VOLCFNET VOLCFGRS VOLBFNET TPA_UNADJ DRYBIO_AG CARBON_AG
      1                0       NA       NA       NA        NA   0.00000        NA
      2                0       NA       NA       NA        NA   0.00000        NA
      3               NA 0.864289 0.864289       NA  6.018046  25.48605  12.74303
      4               NA 3.046342 3.046342       NA  6.018046  88.91319  44.45660
      5               NA 6.019584 6.019584       NA  6.018046 171.35480  85.67740
      6                0       NA       NA       NA        NA   0.00000        NA
               BA DIACL2IN
      1        NA     <NA>
      2        NA     <NA>
      3 0.1532029  5.0-6.9
      4 0.1898537  5.0-6.9
      5 0.3578369  7.0-8.9
      6        NA     <NA>

---

    Code
      testLUT2_results
    Output
                PLT_CN CONDID SUBP TREE STATUSCD SPCD SPGRPCD DIA HT TREECLCD AGENTCD
      1 40404738010690      1    2    3        2   19      12  NA NA       NA      70
      2 40404738010690      1    2    4        2   19      12  NA NA       NA      70
      3 40404738010690      1    2    7        1   19      12 5.3 26        2      NA
      4 40404821010690      1    1    7        1   19      12 5.9 48        2      NA
      5 40404821010690      1    1    8        1   19      12 8.1 45        2      NA
      6 40404821010690      1    1   11        2   19      12  NA NA       NA      70
        STANDING_DEAD_CD VOLCFNET VOLCFGRS VOLBFNET TPA_UNADJ DRYBIO_AG CARBON_AG
      1                0       NA       NA       NA        NA   0.00000        NA
      2                0       NA       NA       NA        NA   0.00000        NA
      3               NA 0.864289 0.864289       NA  6.018046  25.48605  12.74303
      4               NA 3.046342 3.046342       NA  6.018046  88.91319  44.45660
      5               NA 6.019584 6.019584       NA  6.018046 171.35480  85.67740
      6                0       NA       NA       NA        NA   0.00000        NA
               BA  DIACL25
      1        NA     <NA>
      2        NA     <NA>
      3 0.1532029 5.0-24.9
      4 0.1898537 5.0-24.9
      5 0.3578369 5.0-24.9
      6        NA     <NA>

---

    Code
      created_cutbreaks
    Output
         LIVE_CANOPY_CVR_PCT_cutbreaks LIVE_CANOPY_CVR_PCTCL
      1:                             0                0-24.9
      2:                            25               25-49.9
      3:                            50                   50+

---

    Code
      testLUT3_results
    Output
                PLT_CN CONDID COND_NONSAMPLE_REASN_CD CONDPROP_UNADJ SUBPPROP_UNADJ
      1 40404728010690      1                      NA              1              1
      2 40404729010690      1                      NA              1              1
      3 40404730010690      1                      NA              1              1
      4 40404731010690      1                      NA              1              1
      5 40404733010690      1                      NA              1              1
      6 40404734010690      1                      NA              1              1
        MICRPROP_UNADJ MACRPROP_UNADJ OWNCD OWNGRPCD RESERVCD SITECLCD STDORGCD
      1              1             NA    46       40        0       NA       NA
      2              1             NA    46       40        0        7        0
      3              1             NA    11       10        0        6        0
      4              1             NA    22       20        0       NA       NA
      5              1             NA    46       40        0       NA       NA
      6              1             NA    22       20        0       NA       NA
        ADFORCD LIVE_CANOPY_CVR_PCT COND_STATUS_CD NF_COND_STATUS_CD FORTYPCD STDSZCD
      1      NA                   0              2                NA       NA      NA
      2      NA                  17              1                NA      366       1
      3     206                  41              1                NA      201       1
      4      NA                   0              2                NA       NA      NA
      5      NA                   0              2                NA       NA      NA
      6      NA                   0              2                NA       NA      NA
        STDAGE GSSTKCD DSTRBCD1 DSTRBYR1 DSTRBCD2 DSTRBYR2 FORTYPGRPCD TIMBERCD
      1     NA      NA       NA       NA       NA       NA          NA       NA
      2     46       5        0       NA        0       NA         360        2
      3    220       3        0       NA        0       NA         200        1
      4     NA      NA       NA       NA       NA       NA          NA       NA
      5     NA      NA       NA       NA       NA       NA          NA       NA
      6     NA      NA       NA       NA       NA       NA          NA       NA
        LIVE_CANOPY_CVR_PCTCL
      1                0-24.9
      2                0-24.9
      3               25-49.9
      4                0-24.9
      5                0-24.9
      6                0-24.9

