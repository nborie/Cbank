# Copyright 2017 DR
#
# Maximum de trois entiers

author=NB&DR

title= Contient une voyelle
tag=function|string|strchr
template=/template/autograderC

text==

Écrire une fonction *asvoyelle* qui prend une chaine en parametre et qui retourne la première voyelle trouvée dans la chaine.

==

code==
const char *voyelle="aeiouy";

int asvoyelle(...){
  ...
}
==

solution==
#include <string.h>
const char *voyelle="aeiouy";

int asvoyelle(char *p){
  for(;*p;p++)
    if (strchr(voyelle,*p)) return *p;
  return 0;
}
==

codeafter==
#include <stdlib.h>
#include <stdio.h>


int main(int argc, char* argv[]){

  int a=asvoyelle(argv[1]);
  if (a)
  printf("la chaine  %s contient la voyelle %c\n",argv[1],a);
  else
  printf("la chaine  %s ne contient pas de voyelle\n",argv[1]); 
  return 0;
}
==


grader==
from graderC import graderII
import random

tests = [["Basique", "labellevoyelle", ""],
    ["Y a pas de voyelles", "bcdfghjklmnpqrstvwxz", ""],
    ["Y a a", "aaaa", ""],
    ["Y a e", "xxxea", ""],
    ["Y a i", "xxxiea", ""],
    ["Y a o", "xxxoo", ""],
    ["Y a y", "xxxy", ""],
   ]


graderII(tests)
==

