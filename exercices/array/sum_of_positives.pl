# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Somme des éléments positifs d'un tableau

author=Nicolas Borie
name=Somme des éléments positifs d'un tableau
title=Somme des éléments positifs d'un tableau
tag=array
template=/template/autograderC

text==
Écrire une fonction C *sum_of_positives* qui prend en paramètre un
tableau d'entiers ansi que son nombre d'éléments. La fonction
retournera la somme des éléments positifs contenus dans le tableau.

==

code==
... sum_of_positives(...){
    /* Votre code ici */
}

==

solution==

int sum_of_positives(int* tab, int taille){
  int i;
  int somme=0;

  for (i=0 ; i<taille ; i++){
    if (tab[i] > 0)
      somme += tab[i];	  
  }
  
  return somme;
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

  printf("Somme des positifs : %d\n", sum_of_positives(tab, nb_term));
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

for k in range(3):
    chaine_tab_alea = ""
    for i in range(random.randint(5, 10)):
        chaine_tab_alea += (" " + str(random.randint(-100, 100)))
    tests.append(["Aléatoire", chaine_tab_alea, ""])

graderII(tests)
==
