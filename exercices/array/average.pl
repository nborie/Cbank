# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Moyenne des éléments d'un tableaux

author=Nicolas Borie
name=Moyenne des éléments d'un tableaux
title=Moyenne des éléments d'un tableaux
tag=array
template=/template/autograderC

text==
Écrire une fonction C *average_array* qui prend en argument un
tableaux d'entiers ainsi que sa taille et retourne un flotant qui est
la moyenne des éléments contenus dans le tableaux. Par convention, la
moyenne d'un tableau vide devra être zéro.

==

code==
... average_array(...){
    /* Votre code ici */
}

==

solution==
float average_array(int* tab, int size){
  int i;
  float sum = 0;

  for (i=0 ; i<size ; i++)
    sum += tab[i];
  return sum / ((float)size);
}

==

codeafter==
#include <stdio.h>
#include <stdlib.h>

void display_array(int* array, int nb_term){
  int i;

  if (nb_term == 0){
    printf("[]\n");
    return ;
  }

  printf("[");
  for (i=0 ; i<nb_term-1 ; i++)
    printf("%d, ", array[i]);
  printf("%d]\n", array[nb_term-1]);
}

int main(int argc, char* argv[]){
  int nb_term = argc-1;
  int* tab = (int*)malloc(nb_term*sizeof(int));
  int i;

  for (i=0 ; i<nb_term ; i++){
    tab[i] = atoi(argv[i+1]);
  }

  display_array(tab, nb_term);
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
