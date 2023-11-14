# FIESTA Test Suite

Provided is a description of all the tests being run in the FIESTA test suite

<br>
<br>

# dat Functions

### datSumTree
- Expects that datSumTree nonTPA output for plot is equal to WYtree data
- Tests that function provides consistent snapshot of datSumTree nonTPA output
- Expects that datSumTree TPA output is equal to WYtree data
- Tests that function provides consistent snapshot of datSumTree TPA output

### datSumTreeDom
- Tests that function provides consistent snapshot of treedomBA$tdomvarlut
- Tests that function provides consistent snapshot of treedomVOL$tdomvarlut

### datSumCond
- Tests that summed condition is equal to expected number
- Tests that summed condition is equal to expected number with cfilter of "STDSZCD == 1"
- Tests that summed condition is equal to expected number with cfilter of "COND_STATUS_CD %in% c(2,3)"
- Tests that summed condition is equal to expected number with cfilter "RESERVCD == 1"

### datPivot
- Expects datPivot output is equal to WYtree data
- Checks expected dimmensions of output
- Tests that function provides consistent snapshot of test1
- Tests that function provides consistent snapshot of test2

### datLUTclass
- Tests that function provides consistent snapshot of xLUT with basic parameters
- Tests that function provides consistent snapshot of xLUT with a created dataframe lookup table
- Tests that function provides consistent snapshot of created cutbreaks
- Tests that function provides consistent snapshot of xLUT with created cutbreaks 

### datLUTnm
- Tests that function provides consistent snapshot of xLUT using FIESTAutils reference codes

### datLUTspp
- Tests that function provides consistent snapshot of xLUT using species common name
- Tests that function provides consistent snapshot of xLUT$COMMON_NAME which is the expected species names

<br>
<br>

# sp Functions

### spImportSpatial
- Tests that function creates sf vector
- Tests that function throws appropriate error when given invalid data

### spExportSpatial
- Tests that function runs with no error
- Tests that function provides output

### spMakeSpatialPoints
- Tests that function runs with no error
- Tests that function runs and exports with no error

### spReprojectVector
- Tests that the reprojection contains the input projection

### spClipPoint
- Tests that the clipped number of features matches the expected number of features

### spClipPoly
- Tests that the clipped polygon contains the correct county names
- Tests that the clipped acres matches the expected acres

### spClipRast
- Tests that the clipped raster x size matches the expected x size
- Tests that the clipped raster y size matches the expected y size

### spExtractPoly
- Tests that function provides warning of NA values
- Tests that function returns objects with expected amount of columns after extraction (19 to 23)
- Tests that function provides consistent snapshot of spxyext
- Tests that function returns objects with expected amount of columns where parameter keepNA is false (19 to 21)
- Tests that function provides consistent snapshot of spxyext when keepNA is false

### spExtractRast
- Tests that the extraced items has the expected number of columns (19 to 21)
- Test that function provides consistent snapshot of sppltext

### spReprojectRast
- Tests that the reprojected raster CRS contains the proper UTM Zone
- Tests that the reprojected raster CRS contains the proper datum

### spGetXY
- Tests that function provides consistent snapshot of pltids
- Tests that function provides consistent snapshot of spxy
- Tests that function provides consistent snapshot of nonspatial pltids

### spGetPlots
- Tests that function provides consistent snapshot of pltids
- Tests that function provides consistent snapshot of spxy

### spGetAuxilary
- Tests that function provides consistent snapshot of pltassgn
- Tests that function provides consistent snapshot of unitzonal
- Tests that function provides consistent snapshot of pltassgn

### spGetEstUnits
- Tests that function provides consistent snapshot of Bighorn National Forest estemation units
- Tests that function provides consistent snapshot of Bighorn National Forest estimation Unit acres and strata information

### spGetStrata
- Tests that function provides consistent snapshot
of statalut with stratatype of "RASTER" using the Bighorn Nation Forest (forest/nonforest) tif

### spUnionPoly
- Tests that function provides consistent snapshot
of the unioned polygon

### spZonalRast
- Tests that function provides consistent snapshot of zonalext with zonalstat options of mean, sum, npixels, majority using WYbighorn district boundaries and WYbighorn DEM

<br>
<br>

# modGB Functions

### modGBarea
- Comparing the values from GBarea$est & GBarea$raw$rowest across data frames. Converted the value from GBarea$raw$rowest from a numeric to a character to ensure the test passes
- Creating list of Forest Types and ensures naming is correct
- Checks dimension of modGBarea$est is constant
- Creates snapshot of modGBarea$est

### modGBtree
- Creating list of Forest Types and ensures naming is correct
- Checks dimension of modGBtree_TPA$est
- Checks dimension of modGBtree_VOL$est
- Checks dimension of modGBtree_BA$est
- Creates a snapshot of modGBtree_TPA$est
- Creates a snapshot of modGBtree_VOL$est
- Creates a snapshot of modGBtree_BA$est

### modGBpop
- Creating list of Forest Types and ensures naming is correct
- Checks dimension of GBpop$treex
- Checks dimension of GBpop$condx
- Checks dimension of GBpop$unitarea

### modGBratio
- Creating list of Forest Types and ensures naming is correct
- Checks dimension of modGBratio_VOL$est
- Checks dimension of modGBratio_TPA$est
- Checks dimension of modGBratio_BA$est
- Creates a snapshot of modGBratio_VOL$est
- Creates a snapshot of modGBratio_TPA$est
- Creates a snapshot of modGBratio_BA$est
