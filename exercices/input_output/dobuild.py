#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  dobuild.py
#  
#  Copyright 2018 Dominique Revuz <dr@MacBook-Pro-de-Dominique-3.local>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  

import random

def buildformula():
    """
    retourne un triplet textenfrancais, formuleC, valeurdelaformulepour12et3
    """
    
    l =[(" a^2 +b ","(a*a)+b", "147"),
        ("a+b^2","b*b+a","21"),
        ("2a+5b","5*b+a*2",str(5*3+12*2)),
        ("2a - 3b","-3*b+a*2",str(-3*3+12*2)),
        ("a - 2b","-2*b+a",str(-2*3+12)),
        ("6b-ab","b*(6-a)",str(3+(6-12))),
        ("a^2+b^2","b*b+a*a","153"),
        ("(a+b)^2","(a+b)*(a+b)","225"),
        ("(b-a)^2","(b-a)*(b-a)","81"),
        ("(a+b)*(a-b)","(a+b)*(a-b)",str(15*9)),
        ("(a+b)*(a-b)","(a+b)*(a-b)",str(15*9)),
        ("(a+b)^3","(a+b)*(a+b)*(a+b)",str(15**3)),
        ("(b-a)^3","(b-a)*(b-a)*(b-a)",str(-9**3)),
        ("(a-b)^3","(a-b)*(a-b)*(a-b)",str(9**3)),
        ("20a - 80b","-80*b+a*20",str(0)),
        ]
    return random.choice(l)

def build(d):
    formule,ccode,valeur = buildformula()
    print("1")
    d['text']=d['jinja'].format(formule=formule,valeur=valeur)
    print("1")
    functionf="""int f(int a,int b) { return %s ; }""" % (ccode) 
    formatage="\"la formule %s appliqué à a=%%d et b=%%d vaut %%d\""  % (formule)
    d['solution']= d['jinjasol'].format(functionf=functionf,formatage=formatage)
    return d
 


if __name__ == '__main__':
    d=dict()
    d['jinja']="""
Compléter le programme suivant pour qu'il récupère deux entiers entrés
au clavier sur l'entrée standard.
Ces deux entiers seront stockés dans les variables de type entier (*int*) **a** et **b**.

En suite votre programme doit calcul le polynome en **a** et **b** défini par la formule :

    {formule}

et afficher pour une entrée de 12 et 3 la phrase suivante :

    la formule {formule} appliqué à a=12 et b=3 vaut {valeur} 


Votre programme devra fonctionner quelque soit les entiers données par le testeur et pas seulement 12 et
3.
    
    """
    d['jinjasol']="""#include <stdio.h>

{functionf}

int main(int argc, char* argv[]){{
  int a, b;

  scanf("%d %d", &a, &b);
  printf({formatage}, a, b, f(a,b));
  return 0;
}}
"""
    print(build(d)['solution'])
