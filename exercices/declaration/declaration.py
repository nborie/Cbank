


## TODO il faut une méthode de validation du résultat


##
# la fonction declare utilise un nuplet 
# ('THET','nom du type en francais',(min,max),)
# pour fabriquer le n-uplet suivant 
# ("Declarez une variable X nom du type en francais initalisé à Y")
# ou X = est un identifiant aléatoire 
# ou Y = est une valeur aléatoire entre min et max
# 
# si le type est char Y est une constante de type char 

import random

vala=ord('a')
valA=ord('A')



def declare(typ, text, minmax):
    if typ=="char":
        Y = chr(random.randint(minmax[0],minmax[1]))
    elif typ=="float":
        Y = random.randint(minmax[0],minmax[1])*1.0
    else:
        Y = random.randint(minmax[0],minmax[1])
    X = chr(random.randint(valA,valA+25))+""+chr(random.randint(vala,vala+25))
    Z = ("Declarez "+text+" de nom "+X+" initalisée à "+str(Y))

    print(X,Y,Z)
    func="""
    import regex
    def checkanswer(a):
	            
    """

if __name__== "__main__" :
    declare("int"," une variable entière",(-100,100))
    declare("short"," une variable entière courte",(-100,100))
    declare("long"," une variable entière longue",(-10000,10000))
    declare("float"," une variable réelle ",(-10000,10000))
    declare("char"," une variable de type caractère ",(64,97+26))

