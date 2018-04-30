main:
	ifort -std08 -fpp gauss.F90 FDM.f90 -o "FDM"
kind4:
	ifort -std08 -fpp -D "KINDp=4" gauss.f90 FDM.f90 -o "FDM-4"
kind8:
	ifort -std08 -fpp -D "KINDp=8" gauss.f90 FDM.f90 -o "FDM-8"
kind16:
	ifort -std08 -fpp -D "KINDp=16" gauss.f90 FDM.f90 -o "FDM-16"