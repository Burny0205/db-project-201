@rem Salon Complex Compression Tool 
@rem Simple tool for compressing the salon application

del *.zip
7za a -tzip SalonComplex.zip -r SalonComplex\ -x@exclude.txt