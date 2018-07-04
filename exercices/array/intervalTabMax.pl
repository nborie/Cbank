# Copyright 2017 Elise Hardy <ehardy@etud.u-pem.fr>
# Copyright 2018 Dominique Revuz
#
# Ecrire une fonction qui renvoie le maximum dans un intervalle d'un tableau d'entiers

author=Elise Hardy et DR
title=Ecrire une fonction qui renvoie le maximum dans un intervalle d'un tableau d'entiers
tag=function
template=/template/autograderC.pl

text==

Ecrire une fonction *maxIntervalle* qui renvoie l'indice du  maximum dans un intervalle d'un tableau d'entiers *tab*

Si les indices de l'intervalle ne sont pas corrects la fonction retourne **-1**,
sinon elle retourne l'indice.

==

code==
int maxIntervalle(int *tab, int n, int a, int b, int *r)
/*
* a borne inf 
* b borne sup
* n taille tableau 
* r adresse de retour de l'indice 
*/
{
#Votre code ici
} 
  

==

solution==
int maxIntervalle(int *tab, int taille, int a, int b, int *r){
	if(a < 0 || b <0 || b<a || b > taille || a>taille || taille <= 0)
		{
		return -1;
		}
	int max = tab[a];
	int indice=a;
	int i;
	for(i = a; i< b; i++){
		if(max < tab[i]){
			max = tab[i];
			indice=i;
		}
	}
	return indice;
}


==

codeafter==
#include <stdio.h>
#include <stdlib.h>    
#include <time.h>

int* initialiseTableau(int n){
 int *tab;
	if (n<1) return NULL;
	tab= malloc(sizeof(int)*n);
	int i;
	for (i = 0; i < n; i++) { tab[i] = i; }
	return tab;
}
    
int *randomtab(int n){
 int *t= calloc(n,sizeof(int));
 int i;
srand(time(NULL)); 
  for(i=0;i<n;i++)
	t[i]=rand();
return t;
}

int main(int argc, char* argv[]){
  int a = atoi(argv[1]);
  int b = atoi(argv[2]);
  int n= atoi(argv[3]);
  int r;
  int *tab;
	if (n<15) {tab=initialiseTableau(n);}
	else { tab=randomtab(n);}
  if ( maxIntervalle(tab,n,a,b,&r)==-1) 
	printf("indices incorrectes taille %d , a=%d, b=%d ", n, a, b);
  else 
	printf("le max est égal à %d",tab[r]);
  return 0;
}
==

grader==
from graderC import graderII
import random
    
tests = [["Basique", "2 5 10", ""],
	["Indice négatif", "8 -4 16", ""],
        ["Indice trop grand","35 77 20",""],
        ["Bornes dans le mauvais sens", "16 4 20",""],
	]

tests.append(["Aléatoire", " ".join([str(random.randint(-10, 10)) for i in range(2)]), ""])

graderII(tests)
==
