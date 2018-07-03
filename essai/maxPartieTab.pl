# Copyright 2017 Elise Hardy <ehardy@etud.u-pem.fr>
#
# Ecrire une fonction qui renvoie le maximum dans un intervalle d'un tableau d'entiers

author=Elise Hardy
name=Ecrire une fonction qui renvoie le maximum dans un intervalle d'un tableau d'entiers
title=Ecrire une fonction qui renvoie le maximum dans un intervalle d'un tableau d'entiers
tag=function
template=/template/autograderC

text==

Ecrire une fonction *maxIntervalle* qui renvoie le maximum dans un intervalle d'un tableau d'entiers *tab*

==

code==
#Votre code ici
  

==

solution==
int maxIntervalle(int *tab, int taille, int a, int b){
	if(a < 0 || b > taille || taille <= 0){
		printf("les indices de l'intervalle ou la taille ne sont pas corrects");
		}
	int max = tab[a];
	int i;
	for(i = a; i< b; i++){
		if(max < tab[i]){
			max = tab[i];
		}
	}
	return max;
}


==

codeafter==
#include <stdio.h>
#include <stdlib.h>    
    
int main(int argc, char* argv[]){
  int a = atoi(argv[1]);
  int b = atoi(argv[2]);

  printf("%d\n", puissance(a, b));
  return 0;
}
==

grader==
from graderC import graderII
import random
    
tests = [["Basique", "2 5", ""]
			["Impossible", "8 -4", ""]]

tests.append(["Aléatoire", " ".join([str(random.randint(-10, 10)) for i in range(2)]), ""])

graderII(tests)
==
