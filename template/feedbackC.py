#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#
# Copyright 2017 Nicolas Borie <nicolas.borie@u-pem.fr>
#

from jinja2 import Template

def subnlbybr(str):
    """
    >>> subnlbybr("\\n")
    '<br/>'
    """
    return "<br/>".join(str.split("\n"))

class FeedbackC:
    passs
