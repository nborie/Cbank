# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Encadrer le plus long argument d'un programme C

author=Nicolas Borie
name=Encadrer le plus long argument d'un programme C
title=Encadrer le plus long argument d'un programme C
tag=string|program
template=/template/autograderC

text==

Écrire un programme C qui identifie son plus long argument et
l'affiche ensuite en console encadré avec des caractères dièse. Le nom
du programme fait parti des arguments.

Ainsi, si le plus long argument est le mot *pouet*, le programme devra alors afficher:

{{{
   #########
   # pouet #
   #########
}}}

==

code==
#include ...

int main(...){
  ...
}

==

solution==
#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[]){
  int i, len_max=0, ind_max=0, current_len;

  for (i=0 ; i<argc ; i++){
    current_len = strlen(argv[i]);
    if (current_len > len_max){
      len_max = current_len;
      ind_max = i;
  }

  for (i=0 ; i<len_max+4 ; i++)
    printf("#");
  printf("\n");

  printf("# %s #\n", argv[ind_max]);

  for (i=0 ; i<len_max+4 ; i++)
    printf("#");
  printf("\n");
    
  return 0;
}


==

grader==
from graderC import graderII

tests = [["Basique", "argument1", ""],
	 ["Sans argument", "", ""],
	 ["Argument multiple", "12 pouet foo bar 1367235342534", ""],
	 ["Argument long", "argument1 mot super long anti-constitutionnellement", ""],
	 ["Complexe", "'argument en plusieurs mots' mot_unique", ""],]

graderII(tests)
==
