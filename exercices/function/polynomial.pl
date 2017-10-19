# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Ecrire une fonction qui calcule un polynome

author=Nicolas Borie
name=Écrire une fonction qui calcule un polynome
title=Écrire une fonction qui calcule un polynome
tag=function
template=/template/autograderC

text==

Écrire une function *polynome* qui prend en argument 3 entiers *a*,
*b* et *c* et qui retourne 12 - (2 + a)*b^3 + 7*b*c^2.

==

code==
... polynome(...){
  ...
}
==

solution==
int polynome(int a, int b, int c){
  return 12-(2+a)*b*b*b+7*b*c*c
}

==

codeafter==
#include <stdio.h>
    
int main(int argc, char* argv[]){
  int a = atoi(argv[1]);
  int b = atoi(argv[2]);
  int c = atoi(argv[3]);

  printf("%d\n", polynome(a, b, c));
  return 0;
}
==

    
grader==
from graderC import graderII
import random
    
tests = [["Basique", "0 0 0", ""]]

tests.append(["Aléatoire", " ".join([str(random.randint(-10, 10)) for i in range(3)]), ""])
tests.append(["Aléatoire", " ".join([str(random.randint(-10, 10)) for i in range(3)]), ""])
tests.append(["Aléatoire", " ".join([str(random.randint(-10, 10)) for i in range(3)]), ""])

graderII(tests)
==
