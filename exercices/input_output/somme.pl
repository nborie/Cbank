# Copyright 2016 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Afficher la somme de deux entiers saisis au clavier

author=Nicolas Borie
name=Somme de deux entiers données au clavier
title=Somme de deux entiers données au clavier
tag=input_output
template=/template/autograderC

text==

Compléter le programme suivant pour qu'il récupère deux entiers entrés
au clavier sur l'entrée standard. Ces deux entiers seront stockés dans
les variables de type entier (*int*) **a** et **b**.

Imaginons que l'utilisateur qui va tester votre programme donne les
deux entiers 12 et 3. Une fois ces deux entiers collectés, afficher la
phrase **La somme de 12 et 3 est 15.**. N'oubliez pas de retourner à
la ligne à la fin de la phrase. Votre programme devra fonctionner
quelque soit les entiers données par le testeur et pas seulement 12 et
3.
    
==

code==
#include ...

int main(int argc, char* argv[]){
  int a, b;
	
  /** votre code ici... **/
}

==

solution==
#include <stdio.h>

int main(int argc, char* argv[]){
  int a, b;

  scanf("%d %d", &a, &b);
  printf("La somme de %d et %d est %d.\n", a, b, a+b);
  return 0;
}

==

grader==
from graderC import graderII
import random

tests = [["Simple test", "", "12 3\n"],
	 ["La tête à toto", "", "0 0\n"],
	 ["Des négatifs", "", "-12 41\n"],
	 ["D'autres négatifs", "", "-421 -12623\n"]]
tests.append(["Aléatoire", "", str(random.randint(-10,10))+" "+ 
	                       str(random.randint(-10,10))+"\n"])
tests.append(["Aléatoire", "", str(random.randint(-100,100))+" "+ 
	                       str(random.randint(-100,100))+"\n"])
tests.append(["Aléatoire", "", str(random.randint(-1000,1000))+" "+ 
	                       str(random.randint(-1000,1000))+"\n"])

graderII(tests)
==
