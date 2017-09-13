#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#
# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#

from jinja2 import Template

def subnlbybr(str):
    """
    Substitute each occurences of char '\n' by '<br />' in the string
    `str` in argument.

    EXAMPLES::

        >>> subnlbybr("\\n")
        '<br/>'
    """
    return "<br/>".join(str.split("\n"))

def generated_feedback_compilation(flags, compil_state, gcc_msg):
    """
    Generate feedback for the compilation.
    """    
    feed = '<div style="border:1px solid black;padding:1%;margin:1%;background-color: '
    # Dispatch for background color
    if compil_state == "error":
        feed = feed + 'salmon'
    elif compil_state == "warning":
        feed = feed + 'moccasin'
    else:
        feed = feed + 'lightgreen'
    feed = feed + ';border-radius: 10px;"><font color="black"><u>Compilation'

    # Flags precision if relevant
    if len(flags) > 0:
        feed = feed + 'avec drapeaux ' + flags

    feed = feed + ' :</u> </font><font color="darkred"><b>'
    # Dispatch to print the status of compilation
    if compil_state == "error":
        feed = feed + 'Erreur'
    elif compil_state == "warning":
        feed = feed + 'Warning'
    else:
        feed = feed + 'Réussie'
    feed = feed + '</b></font><br />'

    # If success
    if compil_state == "perfect":
        feed = feed + '</div>'
        return feed
    # Otherwise, we need to provide the feedback form gcc
    if compil_state == "error":    
        feed = feed + 'Il y a des erreurs à la compilation de votre programme.'
    else:
        feed = feed + 'Vous pouvez augmenter la qualité de votre programme en lisant les recommandations du compilateur.'
        
    feed = feed + '<br />Feedback provenant de gcc: <br />'
    feed = feed + '<div style="border:1px solid black;padding:1%;margin:1%;background-color: black;">'
    feed = feed + '<font style="color: white;font-family: Monospace;">'
    subnlbybr(gcc_msg)
    feed = feed + gcc_msg + '</font></div></div>'
    
    return feed

class FeedbackC:
    pass
