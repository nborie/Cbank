# Copyright 2017 DR
#
# Moyenne de trois entiers

author=NB&DR

title=La moyenne de trois entiers
tag=function
template=/template/autograderC

text==

Écrire une fonction *meanof3* qui prend trois entiers en
paramètres et retourne la moyenne (double) de ces trois entiers.

==

code==

... meanof3(...){
  ...
}
==

solution==

double meanof3(int a, int b, int c)
{

  return (a+b+c)/3.0;
}

==

codeafter==
#include <stdlib.h>
#include <stdio.h>


int main(int argc, char* argv[]){
  int a = atoi(argv[1]);
  int b = atoi(argv[2]);
  int c = atoi(argv[3]);

  printf("La moyenne de %d, %d et %d est : %f\n", a, b, c, meanof3(a, b, c));
  
  return 0;
}
==


grader==
from graderC import graderII
import random

tests = [["Basique", "3 2 1", ""],
	 ["Égaux", "10 10 10", ""],
	 ["Négatif", "12 -6 3", ""]]

tests.append(["Aléatoire", ' '.join([str(random.randint(-1000, 1000)) for i in range(3)]), ""])
tests.append(["Aléatoire", ' '.join([str(random.randint(-1000, 1000)) for i in range(3)]), ""])
tests.append(["Aléatoire", ' '.join([str(random.randint(-1000, 1000)) for i in range(3)]), ""])
tests.append(["Aléatoire", ' '.join([str(random.randint(-1000, 1000)) for i in range(3)]), ""])

graderII(tests)
==
