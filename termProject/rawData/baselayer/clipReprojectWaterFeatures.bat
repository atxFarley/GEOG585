@ECHO OFF 
REM Clip and Project using ogr2ogr

ECHO Navigate to term project data 
cd /d C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\rawData
ECHO Set ogr2ogr executable path
set ogr2ogrPath=C:\QGIS3_4\bin\ogr2ogr.exe
ECHO Set GDAL Data path
set GDAL_DATA=C:\QGIS3_4\share\gdal
ECHO %GDAL_DATA%

REM ECHO clip features
 %ogr2ogrPath% -skipfailures -clipsrc C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\rawData\baselayer\reprojected\Texas_County_Boundaries.shp C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\rawData\baselayer\reprojected\TXWaterBodies_reproject.shp C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\rawData\baselayer\reprojected\TXWaterBodies.shp
REM %ogr2ogrPath% -skipfailures -clipsrc C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\rawData\baselayer\reprojected\Texas_County_Boundaries.shp C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\rawData\baselayer\clipped\TXRiversStreams.shp C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\TxWaterBodies\TXRiversStreams.shp



ECHO reproject features
REM %ogr2ogrPath% -skipfailures -s_srs EPSG:4326 -t_srs EPSG:3857 C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\rawData\baselayer\reprojected\TXWaterBodies.shp C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\TxWaterBodies\TXWaterBodies.shp
REM %ogr2ogrPath% -skipfailures -s_srs EPSG:4326 -t_srs EPSG:3857 C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\rawData\baselayer\reprojected\TXRiversStream.shp C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\TxWaterBodies\TXRiversStreams.shp


ECHO reprojection complete
PAUSE