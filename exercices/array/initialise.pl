# Copyright 2018 DR
#
# Initialisation d'un tableau d'entier

author=DR
title=Tableaux création & Initialisation 
tag=boucle|array|function
template=/template/autograderC

text==

Ecrire une fonction *newtab* qui prend en paramètre **n** et retourne un nouveau tableau de n entiers et initialisé avec les valeurs de 0 à n-1.
    
Si n est négatif ou nul la fonction retourne NULL.
==
code==
int* initialiseTableau(int n) {
  /** votre code ici... **/
}

==


codebefore==
#include <stdlib.h>
#include <stdio.h>

==

solution==

#include <stdio.h>
int* initialiseTableau(int n){
 int *tab;

	if (n<1) return NULL;

	tab= malloc(sizeof(int)*n);

	int i;
	for (i = 0; i < n; i++) {
		tab[i] = i;
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
	int *tcheck = initialiseTableau(n);
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

