main:
	ifort -std08 -fpp gauss.F90 FDM.f90 -o "FDM"
kind4:
	ifort -std08 -fpp -D "KINDp=4" gauss.f90 FDM.f90 -o "FDM-4"
kind8:
	ifort -std08 -fpp -D "KINDp=8" gauss.f90 FDM.f90 -o "FDM-8"
kind16:
	ifort -std08 -fpp -D "KINDp=16" gauss.f90 FDM.f90 -o "FDM-16"
test4:
	ifort -std08 -fpp -D "KINDp=4" -D "TOFILE" gauss.f90 FDM.f90 -o "FDMf-4"
	FDMf-4 10 > test4.txt
	FDMf-4 20 >> test4.txt
	FDMf-4 40 >> test4.txt
	FDMf-4 80 >> test4.txt
	FDMf-4 160 >> test4.txt
	FDMf-4 320 >> test4.txt
	FDMf-4 640 >> test4.txt
	FDMf-4 1280 >> test4.txt
	FDMf-4 2560 >> test4.txt
test8:
	ifort -std08 -fpp -D "KINDp=8" -D "TOFILE" gauss.f90 FDM.f90 -o "FDMf-8"
	FDMf-8 10 > test8.txt
	FDMf-8 20 >> test8.txt
	FDMf-8 40 >> test8.txt
	FDMf-8 80 >> test8.txt
	FDMf-8 160 >> test8.txt
	FDMf-8 320 >> test8.txt
	FDMf-8 640 >> test8.txt
	FDMf-8 1280 >> test8.txt
	FDMf-8 2560 >> test8.txt
test16:
	ifort -std08 -fpp -D "KINDp=16" -D "TOFILE" gauss.f90 FDM.f90 -o "FDMf-16"
	FDMf-16 10 > test16.txt
	FDMf-16 20 >> test16.txt
	FDMf-16 40 >> test16.txt
	FDMf-16 80 >> test16.txt
	FDMf-16 160 >> test16.txt
	FDMf-16 320 >> test16.txt
	FDMf-16 640 >> test16.txt
	FDMf-16 1280 >> test16.txt
	FDMf-16 2560 >> test16.txt