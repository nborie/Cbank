# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Moyenne des éléments d'un tableaux

author=Nicolas Borie
name=Moyenne des éléments d'un tableaux
title=Moyenne des éléments d'un tableaux
tag=array
template=/template/autograderC

text==
Écrire une fonction C **average_array** qui prend en argument un
tableaux d'entiers sous la forme d'un pointeur et de sa taille et retourne un flotant qui est
la moyenne des éléments contenus dans le tableaux. Par convention, la
moyenne d'un tableau vide devra être zéro.



Rappel: la moyenne est la somme des élements divisée par le nombre d'élements.
==

code==
float average_array(...){
    /* Votre code ici */
}

==

solution==
float average_array(int* tab, int size){
  int i;
  float sum = 0;

  if (size == 0)
    return 0;
  
  for (i=0 ; i<size ; i++)
    sum += tab[i];
  return sum / ((float)size);
}

==

codeafter==
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]){
  int nb_term = argc-1;
  int* tab = (int*)malloc(nb_term*sizeof(int));
  int i;

  for (i=0 ; i<nb_term ; i++){
    tab[i] = atoi(argv[i+1]);
  }

  printf("Moyenne : %f\n", average_array(tab, nb_term));
  free(tab);
  return 0;
}

==

grader==
from graderC import graderII
import random

tests = [["Exécution simple", "1", ""],
         ["Quelques éléments", "12 -3 52 0 41", ""],
         ["Tableau vide", "", ""]]

for k in range(2):
    chaine_tab_alea = ""
    for i in range(random.randint(5, 10)):
        chaine_tab_alea += (" " + str(random.randint(-100, 100)))
    tests.append(["Aléatoire", chaine_tab_alea, ""])

graderII(tests)
==
