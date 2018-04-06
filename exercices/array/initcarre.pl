# Copyright 2018 DR
#
# Initialisation d'un tableau d'entier

author=DR
title=Tableaux Initialisation 
tag=boucle|array|function
template=/template/autograderC

text==

Ecrire une fonction *newtab* qui prend en paramètre **n** et **tab** 
l'adresse du tableau et retourne le tableau de n entiers et initialisé avec les valeurs des carrés de 1 à $%n^{2}%$.
    
Si n est négatif ou nul la fonction retourne NULL (définie dans stdio.h).
==
code==
int* initialiseTableau(...) {
  /** votre code ici... **/
}

==


codebefore==
#include <stdlib.h>
#include <stdio.h>

==

solution==

#include <stdio.h>
int* initialiseTableau(int n,int *tab){

	if (n<1) return NULL;


	int i;
	for (i = 0; i < n; i++) {
		tab[i] = (i+1)*(i+1);
	}
	return tab;
}


==


codeafter==


void printTableau(int *tab, int n) {
	int i;
	for (i = 0; i < n; i++) {
		printf("%d ", tab[i]);
	}
	printf("\n");
}


int main(int argc, char const *argv[]) {
	int n = atoi(argv[1]);
 	int *tab  = malloc(sizeof(int)*n);
	int *tcheck = initialiseTableau(n,tab);
	if (tcheck != NULL)
		printTableau(tcheck, n);
	else
		printf("tableau NULL");
	return 0;
}
==


grader==
from graderC import graderII
import random

tests = [["Basique", "10", ""],
		 ["Vide", "0", ""],
		 ["Négatif", "-33", ""],
		 ["Grand", "100", ""]] 

tests.append(["Aléatoire", str(random.randint(20, 40)), ""])
tests.append(["Aléatoire", str(random.randint(1, 20)), ""])

graderII(tests)
==






