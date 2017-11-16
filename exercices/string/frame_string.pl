# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Encadrer une chaine de caractères C

author=Nicolas Borie
name=Encadrer une chaine de caractères C
title=Encadrer une chaine de caractères C
tag=string|function
template=/template/autograderC

text==

Écrire une fonction C qui prends en argument une chaîne de caractères
et qui affiche cette chaîne de manière encadrée avec des caractères
\#.
    

Ainsi, si le mot est "pouet", le programme devra alors afficher:

    #########
    # pouet #
    #########

Le cadre est espacé du mot d'un espace avant et après la chaîne.
==

code==
#include <stdio.h>
#include <string.h>

... frame_string(...){
  ...
}

==

solution==
#include <stdio.h>
#include <string.h>    

void frame_string(char* text){
  int len=strlen(text)+4;
  int i;
  
  for (i=0 ; i<len ; i++)
      printf("#");
  printf("\n");
  printf("# %s #\n", text);
  for (i=0 ; i<len ; i++)
      printf("#");
  printf("\n");
}

==

codeafter==

int main(int argc, char* argv[]){
  frame_string(argv[1]);
  return 0;
}

==

    
grader==
from graderC import graderII

tests = [["Basique", "pouet", ""]]

graderII(tests)
==
