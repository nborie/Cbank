# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Déclaration d'une strcture C pour des points 2 dimensions entiers

author=Dominique Revuz
name= Allocation d'une structure Couleur avec 3 entiers
title= Allocation d'une structure Couleur avec 3 entiers
tag=structure|malloc|funciton
template=/template/autograderC

text==
Déclarer et définir un type *structure* C nommé **Color**. Cette structure
devra contenir trois champs entiers nommé **red** pour rouge , **green** pour vert et **blue** pour bleu.

Ecrire une fonction **alloccolor** qui prend trois entiers en paramêtres **R,G,B** 
 qui retourne une nouvelle **Color** allouée avec **malloc** initialisé avec les trois entiers.


Bien entendu R pour red, G pour green, et B pour blue.

==

code==
typedef


Color;

...  alloccolor(...R,...G,...B)
{
    malloc
}

==

solution==
typedef struct coco{
int red;
int green;
int blue;
} Color;

Color *alloccolor(int R, int G, int B)
{
    Color *p=(Color *)malloc(sizeof(struct coco));
    p->red = R ;
    p->green = G;
    p->blue = B;
    return p;
}

==

codebefore==

#include <stdio.h>
#include <stdlib.h>
==


codeafter==
 

int main(int argc, char* argv[]){
Color *s;

s = alloccolor(12,13,atoi(argv[1]));

if (s->red == 12) printf(" on a bien red = 12 \n"); else printf(" red est mal initialisé \n");
if (s->green == 13) printf(" on a bien green = 13\n "); else printf(" green est mal initialisé \n");
if (s->blue == atoi(argv[1])) printf(" on a bien blue = %d\n",atoi(argv[1])); else printf(" blue est mal initialisé \n");
}

==

grader==
from graderC import graderII
from random import randint 

tests = [["Déclaration et utilisation", "14",""],
        ["Random ",str(randint(1,100)), "" ]] 


graderII(tests)
==
