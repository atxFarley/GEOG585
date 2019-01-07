@ECHO OFF 
REM gdal_warp


ECHO Set GDAL Data path
set GDAL_DATA=C:\QGIS3_4\share\gdal
ECHO %GDAL_DATA%

ECHO reproject #1  - 2008
C:\QGIS3_4\bin\gdalwarp -t_srs EPSG:3857 -r near -of GTiff C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/CDL_2008_48/CDL_2008_48.tif C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/thematicLayers/raw/2008.tif
ECHO reproject #2  - 2009
C:\QGIS3_4\bin\gdalwarp -t_srs EPSG:3857 -r near -of GTiff C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/CDL_2009_48/CDL_2009_48.tif C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/thematicLayers/raw/2009.tif
ECHO reproject #3  - 2010
C:\QGIS3_4\bin\gdalwarp -t_srs EPSG:3857 -r near -of GTiff C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/CDL_2010_48/CDL_2010_48.tif C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/thematicLayers/raw/2010.tif
ECHO reproject #4  - 2011
C:\QGIS3_4\bin\gdalwarp -t_srs EPSG:3857 -r near -of GTiff C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/CDL_2011_48/CDL_2011_48.tif C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/thematicLayers/raw/2011.tif
ECHO reproject #5  - 2012
C:\QGIS3_4\bin\gdalwarp -t_srs EPSG:3857 -r near -of GTiff C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/CDL_2012_48/CDL_2012_48.tif C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/thematicLayers/raw/2012.tif
ECHO reproject #6 - 2013
C:\QGIS3_4\bin\gdalwarp -t_srs EPSG:3857 -r near -of GTiff C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/CDL_2013_48/CDL_2013_48.tif C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/thematicLayers/raw/2013.tif
ECHO reproject #7  - 2014
C:\QGIS3_4\bin\gdalwarp -t_srs EPSG:3857 -r near -of GTiff C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/CDL_2014_48/CDL_2014_48.tif C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/thematicLayers/raw/2014.tif
ECHO reproject #8  - 2015
C:\QGIS3_4\bin\gdalwarp -t_srs EPSG:3857 -r near -of GTiff C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/CDL_2015_48/CDL_2015_48.tif C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/thematicLayers/raw/2015.tif
ECHO reproject #9  - 2016
C:\QGIS3_4\bin\gdalwarp -t_srs EPSG:3857 -r near -of GTiff C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/CDL_2016_48/CDL_2016_48.tif C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/thematicLayers/raw/2016.tif

ECHO reproject #10  - 2017


C:\QGIS3_4\bin\gdalwarp -t_srs EPSG:3857 -r near -of GTiff C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/CDL_2017_48/CDL_2017_48.tif C:/Users/Farley/iCloudDrive/PSUGIS/GEOG585/termProject/rawData/thematicLayers/raw/2017.tif


ECHO gdal_warp complete
PAUSE