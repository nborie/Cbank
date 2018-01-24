# Copyright 2017 DR
#
# Maximum de trois entiers

author=NB&DR

title= Fibonacci 
tag=function|string|recursivity
template=/template/autograderC

text==

Écrire une fonction recursive *fibo* qui prend calcul le nième terme de la suite de Fibonacci.

    la suite de Fibonacci est définie par les deux premier termes d'indice 0 et 1 valent 0 et 1.
    les autres termes  sont egals à la somme des deux précédents.

    Si l'entier en paramêtre est négatif la fonction retourne zéro.

==

code==

... fibo ( ...){
}
==

solution==
int fibo(int n){
if (n<0) return 0;
if (n<2) return n;
return fibo(n-1)+fibo(n-2);
}
==

codeafter==
#include <stdlib.h>
#include <stdio.h>


int main(int argc, char* argv[]){

  int a=atoi(argv[1]);
  int f=fibo(a);
  printf("fibo  de %d  = %d\n",a,f);
  return 0;
}
==


grader==
from graderC import graderII
import random

tests = [["Basique", "5", ""],
    ["Grand", "30", ""],
    ["Négatif", "-2", ""],
    ["Nul", "0", ""],
   ]


graderII(tests)
==

