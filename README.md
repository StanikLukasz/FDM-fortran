# Finite difference method (FDM)

*This is an implementation of some academic excersise for the AGH University of Science and Technology in Poland. So all descriptions in this README file below will be in polish. Sorry guys. :(*

## Metoda roznic skonczonych (MRS)

### Teoria

https://pl.wikipedia.org/wiki/Metoda_r%C3%B3%C5%BCnic_sko%C5%84czonych


### Praktyka

#### Specyfikacja

U¿yty kompilator: ifort
U¿yty jezyk: Fortran2008

#### Instrukcja uzytkowania

Aby skompilowac program z domyslnymi ustawieniami (kind realow = 8) nalezy wykorzystac komende `make main`, a nastepnie wywo³ac program piszac `FDM <N>`, gdzie *N* oznacza gêstosc podzialu siatki MRS. Dla poszczegolnych *"kindow"* mozna uzyc komend odpowiednio 
`make kind4`
`make kind8`
`make kind16`
a nastêpnie, w taki sam sposob jak w opcji domyœlnej, podac gestosc siatki podzialu. :)

#### Wyniki

Ponizej przedstawiam wykresy zaleznosci bledu obliczen od wyboru gestosci siatki podzialu dziedziny problemu (w zakresie [10,2560] o skali logarytmicznej o podstawie 2) dla trzech precyzji zmiennych uzytyh w obliczeniach.

##### kind = 4
![kind4-chart](https://github.com/StanikLukasz/FDM-fortran/blob/master/charts/kind4-chart.PNG)
##### kind = 8
![kind8-chart](https://github.com/StanikLukasz/FDM-fortran/blob/master/charts/kind8-chart.PNG)
##### kind = 16
![kind16-chart](https://github.com/StanikLukasz/FDM-fortran/blob/master/charts/kind16-chart.PNG)