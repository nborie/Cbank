# Copyright 2018 DR <dr@univ-mlv.fr>

author=Dominique
name=Combien de Voyelles
title=Combien de Voyelles
tag=string|function|loop|pointer
template=/template/autograderC

text==

Complètez la fonction suivante **countvoyelles** pour quelle retourne le nombre de voyelles dans la chaîne **s** donnée en argument.


Vous devez écrire votre fonction sans rien utiliser des bibliothèques standards.

  Rappel : une chaîne de caractères C est tout d'abord un tableau de
  **char**. Une chaîne est donc manipulée par l'adresse de son premier
  élément. Une chaîne de caractères C se termine toujours par le
  caractère **'\0'** qui encode justement la fin de la chaîne. C'est un
  marqueur de fin de tableau car le langage C ne connait pas la longueur
  des tableaux.

==

#taboo=string.h


solution==
#include <string.h>
const char *voyelle="aeiouy";

int countvoyelles(char *p){
int nbv=0;
  for(;*p;p++)
    if (strchr(voyelle,*p))  nbv++;
  return nbv;
}
==

code==

const char *voyelle="aeiouy";

int countvoyelles(char* s ){
 /* votre code */
}
==

codebefore==
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
==

codeafter==
int main(int argc, char* argv[]){

 printf(" Y a  %d  voyelles dans %s",countvoyelles(argv[1]), argv[1] ) ;

  return 0;
}
==

grader==
from graderC import graderII

tests = [["plein d occurences", "anticonstitutionnellementaeiouy", ""], 
         ["pas d occurences ", "zzzzzzzzzzzzzzzzzz", ""], 
         ["toutesdesvoyelles", "ooooooooooooooooo", ""]] 

graderII(tests)
==
