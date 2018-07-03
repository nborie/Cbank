# Copyright 2016 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Afficher la somme de deux entiers saisis au clavier
#
# modifier DR 2018

author=Dominique Revuz
name=Saisie et calcul
title=Saisie et calcul
tag=input_output
template=/template/autograderC

jinja==

Compléter le programme suivant pour qu'il récupère deux entiers entrés
au clavier sur l'entrée standard.
Ces deux entiers seront stockés dans les variables de type entier (*int*) **a** et **b**.

En suite votre programme doit calcul le polynome en **a** et **b** défini par la formule :

    {formule}

et afficher pour une entrée de 12 et 3 la phrase suivante :

    la formule {formule} appliqué à a=12 et b=3 vaut {valeur} 


Votre programme devra fonctionner quelque soit les entiers données par le testeur et pas seulement 12 et
3.
    
==

build=@ /exercices/input_output/dobuild.py

code==
#include ...    /** ceci est a modifier **/


/** du code ici... ? **/


int main(int argc, char* argv[]){
  int a, b;


  /** du code ici... **/
}

==

jinjasol==
#include <stdio.h>

{functionf}

int main(int argc, char* argv[]){{
  int a, b;

  scanf("%d %d", &a, &b);
  printf({formatage}, a, b, f(a,b));
  return 0;
}}
==

grader==
from graderC import graderII
import random

tests = [["Simple test", "", "12 3\n"],
     ["Des négatifs", "", "-12 41\n"],
     ["La tête à toto", "", "0 0\n"],
     ["D'autres négatifs", "", "-421 -12623\n"]]
tests.append(["Aléatoire", "", str(random.randint(-10,10))+" "+ 
                           str(random.randint(-10,10))+"\n"])
tests.append(["Aléatoire", "", str(random.randint(-100,100))+" "+ 
                           str(random.randint(-100,100))+"\n"])
tests.append(["Aléatoire", "", str(random.randint(2,400))+" "+ 
                           str(random.randint(-100,400))+"\n"])

graderII(tests)
==
