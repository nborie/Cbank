# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Ecrire une fonction qui calcule un polynome

author=Dominique Revuz
name= Its
title= Passe le moi au carré
tag=function
template=/template/autograderC

text==

Écrire une function *cubeIt* qui prend l'adresse d'un entier et remplace la valeur contenue par son cube.

==

code==
... cubeIt(...){
  ...
}
==

solution==
int cubeIt(int *p)
{
    *p = *p * *p * *p;
}

==

codeafter==
#include <stdio.h>
#include <stdlib.h>    
    
int main(int argc, char* argv[]){
  int a = atoi(argv[1]);
  int b= a*a*a;
    cubeIt(&a);
  printf("%d == %d \n",b,a);
  return 0;
}
==

    
grader==
from graderC import graderII
import random
    
tests = [["Basique", "1", ""]]

for i in range(3):
    tests.append(["Aléatoire", str(random.randint(1, 33)), ""])


graderII(tests)
==
