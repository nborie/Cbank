# Copyright 2018 Dominique Revuz <Dominique.Revuz@u-pem.fr>
#
# Affichage d'un tableau d'entiers

author=Dominique Revuz
name=Position d'une valeur
title=Position d'une valeur
tag=output|array|index
template=/template/autograderC

text==
Écrire une fonction **position** qui retourne la position d'une valeur dans un tableau.
La fonction prendra en paramètre un tableau d'entiers ainsi que le
nombre d'éléments contenu dans ce tableau ainsi qu'une valeur entière,
 et retourne la position da la valeur, et -1 en cas d'abscence de la valeur.

==

code==
... position( array,  nb_term, valeur){

}

==

solution==
#include <stdio.h>

int position(int* array, int nb_term, int valeur){
  int i,pos= -1;
  for (i=0 ; i<nb_term ; i++)
    if (array[i] == valeur) return i;
  return pos;
}
==

codeafter==
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]){
  int nb_term = argc-2;
  int* tab = (int*)malloc(nb_term*sizeof(int));
  int i;
  int val=atoi(argv[1]); /* valeur recherché */

  for (i=0 ; i<nb_term ; i++){
    tab[i] = atoi(argv[i+2]);
  }

  printf("position = %d\n", position(tab, nb_term, valeur));
  free(tab);
  return 0;
}




grader==
from graderC import graderI

def bl(indice):
    l=[]
    for i in range(random.randint(3,10)):
      l.append(i)
    if indice <0 or indice > len(l) :
          return "-1 "+ " ".join(l)
    return str(l[indice])+ " ".join(l)



tests = [["Exécution simple 0", "1 1 2 3", "", "0"],
        ["Exécution simple 1", "2 1 2 3", "", "1"],
        ["Exécution simple 2", "3 1 2 3", "", "2"],
        ["Exécution simple -1", "3 1 2", "", "-1"],
        ]

for i in [0, 3, 9, 12]:
  al=bl(i)
  tests.append(["Aléatoire début",al,"",str(i)])



graderI(tests)
==
