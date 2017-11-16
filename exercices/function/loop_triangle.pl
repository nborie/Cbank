# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Un triangle avec des caractères ascii

author=Nicolas Borie
name=Un triangle avec des caractères ascii
title=Un triangle avec des caractères ascii
tag=function
template=/template/autograderC

text==

Écrire une fonction *ascii_triangle* qui prend en argument un entier
et affiche un triangle avec des caractères étoile \* comme les
exemples qui suivent :

Pour n = 3, on devra voir

    *
    **
    ***    

Pour n = 5, on devra voir

    *
    **
    ***
    ****
    *****    
    
==

code==
... ascii_triangle(...){
  ...
}
==

solution==
void ascii_triangle(int n){
  int i, j;

  for(i=1 ; i<=n ; i++){
    for(j=0 ; j<i ; j++)
      printf("*");
    printf("\n");
  }  
}

==

codeafter==
#include <stdio.h>
#include <stdlib.h>    
    
int main(int argc, char* argv[]){
  int a = atoi(argv[1]);

  ascii_triangle(a);
  return 0;
}
==

    
grader==
from graderC import graderII
import random
    
tests = [["Basique", "3", ""],
         ["Moyen", "6", ""],
	 ["Vide", "0", ""]]

tests.append(["Aléatoire", str(randon.randint(5, 10)), ""])
tests.append(["Aléatoire", str(randon.randint(11, 15)), ""])
    
graderII(tests)
==
