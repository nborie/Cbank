# Copyright 2018 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# Fibonacci recursif naif

author=Nicolas Borie
name=Fibonacci récursif très naïf
title=Fibonacci récursif très naïf
tag=function|recursion
template=/template/autograderC

text==

On peut définir les nombres de Fibonacci de manière récursive comme il suit :

$%
fibonacci(n) :=    
\left\\{ 
\begin{array}{ll}
1 & \text{ si } n = 0 \\newline
1 & \text{ si } n = 1 \\newline
fibonacci(n-1) + fibonacci(n-2) & \text{ si } n > 1 \\newline
\end{array}
\\right.
%$

Avec cette simple définition, on peut coder une fonction récursive
retournant le $% n^{ième} %$ nombre de Fibonacci.

Attention, cette approche est très naïve et un grand nombre d'appels
récursifs peuvent être générés. Toutefois, vous devriez obtenir
quelque chose de fonctionnel.

Complètez la fonction suivante de manière à ce qu'elle retourne le 
$% n^{ième} %$ nombre de Fibonacci.
==

code==
int fibonacci(int n){
  ...
}
==

solution==
int fibonacci(int n){
    if (n < 2)
	return 1;
    return fibonacci(n-1) + fibonacci(n-2);
}
==

codeafter==
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]){
  int n = atoi(argv[1]);

  printf("Fibonacci(%d) = %d\n", n, fibonacci(n));
    
  return 0;
}

==


grader==
from graderC import graderII
from random import randint

tests = [["Basique", "0", ""],
	 ["Premier", "1", ""],
         ["Second", "2", ""]]

L = []
while (len(L) < 3):
    n = randint(3, 10)
    if n not in L:
        L.append(n)

for e in L:
    tests.append(["Aléatoire", str(e), ""])

graderII(tests)
==
