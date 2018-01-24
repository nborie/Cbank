# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Déclaration d'une strcture C pour des points 2 dimensions entiers

author=Dominique Revuz
name=  Pgcd à la Mode
title= Pgcd à la Mode
tag=structure|recursive|function
template=/template/autograderC

text==

Plus Grand Diviseur Commun de deux Entiers 

Ecrire une fonction **pgcd** qui prend en paramêtre deux entiers **a** et **b** et qui calcul le pgcd de ces deux entiers de la façon suivante:


    Si a est égal à b alors le pgcd vaut a (ou b)
    si a vaut 1 ou bien b vaut 1 alors le pgcd vaut 1
    si a et b sont pairs alors le pgcd de a et b est le **deux fois** pgcd de a/2 et b/2
    si a est impair et b pair alors le pgcd de a et b est le pgcd de a et b/2 (et réciproquement)
    si a et b impair et distincts soit a>b alors le pgcd de a et b  est le pgcd de a-b et b
          soit b>a alors le pgcd de a et b est le pgcd de a et b-a


==

code==
int pgcd(int a, int b)
{
    /* ici */
}

==

solution==
int pgcd(int a, int b)
{
    if (a==b) return a;
    if (a==1 || b==1) return 1;
    if (a%2 ==0 && b%2 ==0) return pgcd(a>>1,b>>1)<<1;
    if (a%2 ==0) return pgcd(a>>1,b);
    if (b%2 ==0) return pgcd(a,b>>1);
    if (a>b) return pgcd(a-b,b);
    return pgcd(a,b-a);
}

==

codebefore==

#include <stdio.h>
#include <stdlib.h>
==


codeafter==
 

int main(int argc, char* argv[]){

printf(" le pgcd de %s et %s est %d",argv[1],argv[2],pgcd(atoi(argv[1]),atoi(argv[2]) ));

}

==

grader==
from graderC import graderII
from random import randint 

tests = [["Egaux ", "14 14",""],
        ["Un  ","1 7", "" ],
        ["Deux  ","4 2", "" ],
        ["Alea",str(randint(5,100))+" "+str(randint(6,100)),""],
        ] 


graderII(tests)
==
