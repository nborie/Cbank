# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
author=Nicolas Borie
name=Compter les lettres minuscules
title=Compter les lettres minuscules
tag=string
template=/template/autograderC

text==
Écrire une fonction qui prend en argument une chaîne de caractères C
en ascii et retourne le nombre de lettre minuscule dans cette chaîne. 
==

code==
int count_lower_case(char* s){
  /* votre code ici... */
}
==

solution==
int count_lower_case(char* s){
  int i;
  int lower=0;

  for (i=0 ; s[i]!='\0' ; i++){
    if ((s[i] >= 'a') && (s[i] <= 'z')){
      lower++;
    }
  }
  return lower;
}
==

codeafter==
#include <stdio.h>

int main(int argc, char* argv[]){
  printf("%d\n", count_lower_case(argv[1]));

  return 0;
}
==

grader==
from graderC import graderII
import random

tests = [["Mot simple", "salut", ""],
         ["Mot compliqué", "Bonjour12LARTISTE42a", ""],
         ["Mot vide", "''", ""]]

for i in range(3):
    taille = random.randint(12, 35)
    mot = ""
    for j in range(taille):
        if j not in [34, 37, 39, 92, 91, 93]:
            mot += chr(random.randint(33, 127))
    tests.append(["Aléatoire", mot, ""])

graderII(tests)
==
