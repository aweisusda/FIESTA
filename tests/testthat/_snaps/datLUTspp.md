# datLUTspp returns expected results

    Code
      testLUT_results
    Output
             SPCD         PLT_CN CONDID SUBP TREE STATUSCD SPGRPCD DIA HT TREECLCD
          1:   19 40404738010690      1    2    3        2      12  NA NA       NA
          2:   19 40404738010690      1    2    4        2      12  NA NA       NA
          3:   19 40404738010690      1    2    7        1      12 5.3 26        2
          4:   19 40404821010690      1    1    7        1      12 5.9 48        2
          5:   19 40404821010690      1    1    8        1      12 8.1 45        2
         ---                                                                      
      18376:  823 40405569010690      1    4    8        1      47 1.2 10        2
      18377:  823 40405578010690      1    2    1        1      47 6.7 29        2
      18378:  823 40405583010690      1    4    3        1      47 8.0 27        2
      18379:  823 40405583010690      1    4    4        1      47 6.3 29        2
      18380:  823 40405583010690      1    4    5        1      47 9.1 26        2
             AGENTCD STANDING_DEAD_CD VOLCFNET VOLCFGRS VOLBFNET TPA_UNADJ  DRYBIO_AG
          1:      70                0       NA       NA       NA        NA   0.000000
          2:      70                0       NA       NA       NA        NA   0.000000
          3:      NA               NA 0.864289 0.864289       NA  6.018046  25.486053
          4:      NA               NA 3.046342 3.046342       NA  6.018046  88.913189
          5:      NA               NA 6.019584 6.019584       NA  6.018046 171.354803
         ---                                                                         
      18376:      NA               NA       NA       NA       NA 74.965282   3.021005
      18377:      NA               NA 2.186593 2.186593       NA  6.018046 135.262462
      18378:      NA               NA 2.993797 2.993797       NA  6.018046 177.231138
      18379:      NA               NA 1.900978 1.900978       NA  6.018046 119.622849
      18380:      NA               NA 3.798861 3.798861       NA  6.018046 218.785875
              CARBON_AG         BA   COMMON_NAME
          1:         NA         NA subalpine fir
          2:         NA         NA subalpine fir
          3:  12.743027 0.15320286 subalpine fir
          4:  44.456595 0.18985374 subalpine fir
          5:  85.677402 0.35783694 subalpine fir
         ---                                    
      18376:   1.510503 0.00785376       bur oak
      18377:  67.631231 0.24483006       bur oak
      18378:  88.615569 0.34905600       bur oak
      18379:  59.811425 0.21646926       bur oak
      18380: 109.392938 0.45164574       bur oak

---

    Code
      unique_classes
    Output
       [1] "subalpine fir"               "Utah juniper"               
       [3] "Rocky Mountain juniper"      "Engelmann spruce"           
       [5] "blue spruce"                 "whitebark pine"             
       [7] "common or two-needle pinyon" "lodgepole pine"             
       [9] "limber pine"                 "ponderosa pine"             
      [11] "Douglas-fir"                 "boxelder"                   
      [13] "paper birch"                 "curlleaf mountain-mahogany" 
      [15] "green ash"                   "plains cottonwood"          
      [17] "quaking aspen"               "narrowleaf cottonwood"      
      [19] "bur oak"                    

