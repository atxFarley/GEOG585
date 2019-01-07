@ECHO OFF 
REM gdal_calc

ECHO Navigate to QGIS/bin
cd /d  C:\QGIS3_4\bin
ECHO Set GDAL Data path
set GDAL_DATA=C:\QGIS3_4\share\gdal
ECHO %GDAL_DATA%




ECHO execute gdal_calc on layers

C:\QGIS3_4\apps\Python37\python.exe C:\QGIS3_4\apps\Python37\Scripts\gdal_calc.py -A 2008.tif --outfile=2008_reclass.tif --calc="1*((A>0)*(A<=6))+1*((A>9)*(A<=14))+1*((A>20)*(A<=39))+1*((A>40)*(A<=61))+1*((A>65)*(A<=72))+1*((A>73)*(A<=77))+1*((A>91)*(A<=92))+1*((A>203)*(A<=214))+1*((A>215)*(A<=227))+1*((A>228)*(A<=250))+1*((A>253)*(A<=254))" --NoDataValue=0
ECHO reclass complete for 2008

C:\QGIS3_4\apps\Python37\python.exe C:\QGIS3_4\apps\Python37\Scripts\gdal_calc.py -A 2009.tif --outfile=2009_reclass.tif --calc="1*((A>0)*(A<=6))+1*((A>9)*(A<=14))+1*((A>20)*(A<=39))+1*((A>40)*(A<=61))+1*((A>65)*(A<=72))+1*((A>73)*(A<=77))+1*((A>91)*(A<=92))+1*((A>203)*(A<=214))+1*((A>215)*(A<=227))+1*((A>228)*(A<=250))+1*((A>253)*(A<=254))" --NoDataValue=0
ECHO reclass complete for 2009
C:\QGIS3_4\apps\Python37\python.exe C:\QGIS3_4\apps\Python37\Scripts\gdal_calc.py -A 2010.tif --outfile=2010_reclass.tif --calc="1*((A>0)*(A<=6))+1*((A>9)*(A<=14))+1*((A>20)*(A<=39))+1*((A>40)*(A<=61))+1*((A>65)*(A<=72))+1*((A>73)*(A<=77))+1*((A>91)*(A<=92))+1*((A>203)*(A<=214))+1*((A>215)*(A<=227))+1*((A>228)*(A<=250))+1*((A>253)*(A<=254))" --NoDataValue=0
ECHO reclass complete for 2010
C:\QGIS3_4\apps\Python37\python.exe C:\QGIS3_4\apps\Python37\Scripts\gdal_calc.py -A 2011.tif --outfile=2011_reclass.tif --calc="1*((A>0)*(A<=6))+1*((A>9)*(A<=14))+1*((A>20)*(A<=39))+1*((A>40)*(A<=61))+1*((A>65)*(A<=72))+1*((A>73)*(A<=77))+1*((A>91)*(A<=92))+1*((A>203)*(A<=214))+1*((A>215)*(A<=227))+1*((A>228)*(A<=250))+1*((A>253)*(A<=254))" --NoDataValue=0
ECHO reclass complete for 2011
C:\QGIS3_4\apps\Python37\python.exe C:\QGIS3_4\apps\Python37\Scripts\gdal_calc.py -A 2012.tif --outfile=2012_reclass.tif --calc="1*((A>0)*(A<=6))+1*((A>9)*(A<=14))+1*((A>20)*(A<=39))+1*((A>40)*(A<=61))+1*((A>65)*(A<=72))+1*((A>73)*(A<=77))+1*((A>91)*(A<=92))+1*((A>203)*(A<=214))+1*((A>215)*(A<=227))+1*((A>228)*(A<=250))+1*((A>253)*(A<=254))" --NoDataValue=0
ECHO reclass complete for 2012
C:\QGIS3_4\apps\Python37\python.exe C:\QGIS3_4\apps\Python37\Scripts\gdal_calc.py -A 2013.tif --outfile=2013_reclass.tif --calc="1*((A>0)*(A<=6))+1*((A>9)*(A<=14))+1*((A>20)*(A<=39))+1*((A>40)*(A<=61))+1*((A>65)*(A<=72))+1*((A>73)*(A<=77))+1*((A>91)*(A<=92))+1*((A>203)*(A<=214))+1*((A>215)*(A<=227))+1*((A>228)*(A<=250))+1*((A>253)*(A<=254))" --NoDataValue=0
ECHO reclass complete for 2013
C:\QGIS3_4\apps\Python37\python.exe C:\QGIS3_4\apps\Python37\Scripts\gdal_calc.py -A 2014.tif --outfile=2014_reclass.tif --calc="1*((A>0)*(A<=6))+1*((A>9)*(A<=14))+1*((A>20)*(A<=39))+1*((A>40)*(A<=61))+1*((A>65)*(A<=72))+1*((A>73)*(A<=77))+1*((A>91)*(A<=92))+1*((A>203)*(A<=214))+1*((A>215)*(A<=227))+1*((A>228)*(A<=250))+1*((A>253)*(A<=254))" --NoDataValue=0
ECHO reclass complete for 2014
C:\QGIS3_4\apps\Python37\python.exe C:\QGIS3_4\apps\Python37\Scripts\gdal_calc.py -A 2015.tif --outfile=2015_reclass.tif --calc="1*((A>0)*(A<=6))+1*((A>9)*(A<=14))+1*((A>20)*(A<=39))+1*((A>40)*(A<=61))+1*((A>65)*(A<=72))+1*((A>73)*(A<=77))+1*((A>91)*(A<=92))+1*((A>203)*(A<=214))+1*((A>215)*(A<=227))+1*((A>228)*(A<=250))+1*((A>253)*(A<=254))" --NoDataValue=0
ECHO reclass complete for 2015
C:\QGIS3_4\apps\Python37\python.exe C:\QGIS3_4\apps\Python37\Scripts\gdal_calc.py -A 2016.tif --outfile=2016_reclass.tif --calc="1*((A>0)*(A<=6))+1*((A>9)*(A<=14))+1*((A>20)*(A<=39))+1*((A>40)*(A<=61))+1*((A>65)*(A<=72))+1*((A>73)*(A<=77))+1*((A>91)*(A<=92))+1*((A>203)*(A<=214))+1*((A>215)*(A<=227))+1*((A>228)*(A<=250))+1*((A>253)*(A<=254))" --NoDataValue=0
ECHO reclass complete for 2016
C:\QGIS3_4\apps\Python37\python.exe C:\QGIS3_4\apps\Python37\Scripts\gdal_calc.py -A 2017.tif --outfile=2017_reclass.tif --calc="1*((A>0)*(A<=6))+1*((A>9)*(A<=14))+1*((A>20)*(A<=39))+1*((A>40)*(A<=61))+1*((A>65)*(A<=72))+1*((A>73)*(A<=77))+1*((A>91)*(A<=92))+1*((A>203)*(A<=214))+1*((A>215)*(A<=227))+1*((A>228)*(A<=250))+1*((A>253)*(A<=254))" --NoDataValue=0
ECHO reclass complete for 2017



ECHO all layers reclassified
PAUSE