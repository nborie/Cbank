# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
author=Nicolas Borie

title=Mettre au carré les éléments d'un tableau
tag=array
template=/template/autograderC

text==
Écrire une fonction qui prend en argument un tableau d'entiers ainsi
que ça taille puis élève aux carré tous les éléments contenus dans se
tableau.
==

code==
void apply_square_array(int* array, int nb_term){
  /* votre code ici... */
}
==

solution==
void apply_square_array(int* array, int nb_term){
  int i;

  for (i=0 ; i<nb_term ; i++)
    array[i] *= array[i];
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

  apply_square_array(tab, nb_term);
  display_array(tab, nb_term);
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
