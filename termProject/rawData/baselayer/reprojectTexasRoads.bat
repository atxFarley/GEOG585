@ECHO OFF 
REM Clip and Project using ogr2ogr

ECHO Navigate to term project data 
cd /d C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\rawData
ECHO Set ogr2ogr executable path
set ogr2ogrPath=C:\QGIS3_4\bin\ogr2ogr.exe
ECHO Set GDAL Data path
set GDAL_DATA=C:\QGIS3_4\share\gdal
ECHO %GDAL_DATA%

ECHO reproject features
%ogr2ogrPath% -skipfailures -s_srs EPSG:4326 -t_srs EPSG:3857 C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\rawData\baselayer\reprojected\txdot-2015-roadways_tx.shp C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\TexasRoads\txdot-2015-roadways_tx.shp
ECHO reprojection complete
PAUSE