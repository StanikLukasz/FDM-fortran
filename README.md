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