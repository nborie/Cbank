# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Exponentiation rapide en récursif

author=Nicolas Borie
name=Exponentiation rapide en récursif
title=Exponentiation rapide en récursif
tag=function|recursion
template=/template/autograderC

text==

Écrire une fonction récursive *exp_rap* qui prend en paramètre deux
entiers *a* et *n* puis retourne *a^n*. Utilisez l'algorithme de
l'exponentiation rapide.

 * Pour *n = 0*, on a *a^0 = 1* (on considéra que *O^0 = 0* comme tout bon
algébriste).

 * Si *n* est un entier pair *n = 2q*, il suffira de mettre au carré le retour de l'appel récursif calculant *a^q*.
 
 * Si *n* est entier impair *n = 2q + 1*, il faudra mettre au carré de retour de l'appel récurif donnant *a^q* mais aussi le multiplié une dernière fois par *a*.
==

code==
#include <stdio.h>

... bas_haut(...){
  ...
}
==

solution==
#include <stdio.h>
    
void bas_haut(int n){
  if (n < 1)
    return ;	
  if (n == 1)
    printf("1");
  else{
    printf("%d ", n);
    bas_haut(n - 1);
    printf(" %d", n);
  }	
}

==
    
codeafter==
#include <stdlib.h>    
    
int main(int argc, char* argv[]){
  int a = atoi(argv[1]);

  bas_haut(a);
  return 0;
}
==

    
grader==
from graderC import graderII
import random
    
tests = [["Basique", "1", ""], 
	 ["Moyen", "5", ""],
	 ["Erreur", "-2", ""]]

tests.append(["Aléatoire", str(random.randint(6, 15)), ""])
tests.append(["Aléatoire", str(random.randint(6, 15)), ""])

graderII(tests)
==
