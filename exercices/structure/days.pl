# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Déclaration d'une structure C pour les jours de la semaine

author=Nicolas Borie
name=Structure C pour les jours de la semaine
title=Structure C pour les jours de la semaine
tag=structure
template=/template/autograderC

text==
Déclarer et définir une *structure* C nommé *Jour*. Cette structure
devra être une énumération des jours de la semaine dont les éléments
seront le nom de chaque jour en francais et tout en minuscules :
lundi, mardi, ...    

==

code==
typedef ...

==

solution==
typedef enum {lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche} Jour;

==

codeafter==
 
#include <stdio.h>
    
int main(int argc, char* argv[]){

  printf("Jour %d", lundi);
  printf("Jour %d", lundi);
  printf("Jour %d", lundi);
  printf("Jour %d", lundi);
  printf("Jour %d", lundi);
  printf("Jour %d", lundi);
  printf("Jour %d", lundi);
  
  return 0;
}

==

grader==
from graderC import graderII
 
tests = [["Déclaration et utilisation", "",""]] 
graderII(tests)
==
