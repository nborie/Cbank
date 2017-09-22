# Copyright 2016 Nicolas Borie <nicolas.borie@u-pem.fr>
#
# devinez la valeur d'une variable après un jeu d'instructions

author=Nicolas Borie
name=Jeu d'instructions arithmétiques
title=Jeu d'instructions arithmétiques
tag=program|variable

type=direct

build==
from /tools/code_generations import generate_thread_code, get_result

def build(dic):
    code = generate_thread_code(2, 20, 5)
    values = get_result(2, code)
    dic['vars_values'] = values
    dic['text'] = code
==
    
form==
<div class="input-group">
<span class="input-group-addon">Réponse</span>
<input id="form_txt_answer" type="number" class="form-control" placeholder="" required>
</div>
== 
    
text==

Mettre ici le code généré...
    
==
    
evaluator==
def evaluator(response, dic):
    return True
== 
