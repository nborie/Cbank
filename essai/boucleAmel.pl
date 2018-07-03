# Copyright 2017 BEN HAMOUDA Amel
#
# Initialisation d'un tableau d'entier

author=BEN HAMOUDA Amel
name=Initialisation d'un tableau d'entier
title=Initialisation d'un tableau d'entier
tag=boucle
template=/template/autograderC

text==

Ecrire une fonction *initialiseTableau* qui initialise un tableau d'entier de taille n avec les valeurs de 0 à n-1.
    
==
code==
int* initialiseTableau(int n, int *tab) {
  /** votre code ici... **/
}

==


codebefore==
#include <stdlib.h>
#include <stdio.h>
int isstudent=1;

==

solution==

int* initialiseTableau(int n, int *tab) {

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
	int *tab=  calloc(sizeof(int),n);
	int *tcheck = initialiseTableau(n, tab);
	if (tcheck)
	{
		if (tcheck == tab)
			printTableau(tab, n);
		else
			printf("probleme la fonction initialiseTableau ne retourne pas le tableau tab !?!\n");
	}
	else {
	printf("probleme la fonction initialiseTableau ne retourne rien !?!\n");
	}
	return 0;
}
==


grader==
from graderC import graderII
import random

tests = [["Basique", "10", ""],
		 ["Vide", "0", ""],
		 ["Grand", "100", ""]] 

tests.append(["Aléatoire", str(random.randint(1, 20)), ""])
tests.append(["Aléatoire", str(random.randint(1, 20)), ""])

graderII(tests)
==

