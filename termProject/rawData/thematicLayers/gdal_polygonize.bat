@ECHO OFF 
REM gdal_polygonize


ECHO Navigate to QGIS/bin
cd /d  C:\QGIS3_4\bin
ECHO Set GDAL Data path
set GDAL_DATA=C:\QGIS3_4\share\gdal
ECHO %GDAL_DATA%

ECHO polygonize 2017 crop data

C:\QGIS3_4\apps\Python37\python.exe C:\QGIS3_4\apps\Python37\Scripts\gdal_polygonize.py C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\termProject\final\2017_reclass2.tif C:\Users\Farley\iCloudDrive\PSUGIS\GEOG585\Lesson7\2017crop.geojson -b 1 -f "GeoJSON" None DN

ECHO gdal_polygonize complete
PAUSE