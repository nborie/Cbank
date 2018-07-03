# Copyright 2017 BEN HAMOUDA Amel
#
# Un tableau en paramètre renvoie deux tableaux

author=BEN HAMOUDA Amel
name=Un tableau en paramètre renvoie deux tableaux
title=Un tableau en paramètre renvoie deux tableaux
tag=unTabReturnDeuxTab
template=/template/autograderC
language=c_cpp

text==

Ecrire une fonction *com12* qui prend en paramétre un tableau d'entier, cette fonction renverra par adresse deux tableaux contenant :
		-> pour l'un les entiers pairs 
		-> et pour l'autre les entiers impair 
du tableau mis en paramétre.

==

code==
void com12(int* tab, int *tabPair, int *tabImpair, int size, int *size_tabPair, int *size_tabImpair){
  /** votre code ici... **/
}

==

codebefore==
#include <stdlib.h>
#include <stdio.h>

==

solution==


void com12(int* tab, int *tabPair, int *tabImpair, int size, int *size_tabPair, int *size_tabImpair){
	int i;
	int j = 0;
	int k = 0;
  	for (i = 0; i < size; ++i) {
  		if (tab[i] % 2 == 0) {
  			tabPair[j] = tab[i];
  			j++;
  		}
  		else {
  			tabImpair[k] = tab[i];
  			k++;
  		}
  	}
  	*size_tabImpair = k;
  	*size_tabPair = j;
}
==

codeafter==

void redimentionTab(int *tab, int size) {
	tab = (int*)realloc(tab, sizeof(int)*size);
	if (tab == NULL) {
		return;
	}
}
void afficheTab(int *tab , int n) {
	int i;
	for (i=0; i<n; i++) {
		printf("%d ", tab[i]);
	}
	printf("\n");
}
int main(int argc, char const *argv[]){
	int size_tabPair, size_tabImpair;
	int t[] = {1,2,5,9,8,7,4,45,85,78};
	int *tabPair = allouerTableau(10);
	int *tabImpair = allouerTableau(10);
	com12(t, tabPair, tabImpair, 10, &size_tabPair, &size_tabImpair);
	/*redimentionTab(tabPair, size_tabPair);
	redimentionTab(tabPair, size_tabImpair);*/
	afficheTab(tabPair,size_tabPair);
	afficheTab(tabImpair,size_tabImpair);
	return 0;
}

==


grader==

from graderC import graderI

tests = [["Exécution simple", "", "", "2 8 4 78 \n1 5 9 7 45 85 \n"]]
graderI(tests)
==
