import pkg_resources
import os
import numpy as np
import random


CALL_STRING = "({size},'{uplo}',{property})\n"
WRITE_STRING = "[size,uplo,property,time]"

def generate_args(size,property):
    args = {}
    args["size"] = int(np.random.uniform(size[0],size[1]))
    args["uplo"] = "L" if np.random.random()>0.5 else "U"
    args["property"] = property
    return args

def measurements_code(kernel_tag,N=500,print_interval=50):

    properties = ["[Shape.General, Properties.Random]",
                  "[Shape.Symmetric, Properties.Random(-5, 5)]",
                  "[Shape.UpperTriangular, Properties.Constant(3.0)]",
                  "[Shape.UpperTriangular, Properties.Random]",
                  "[Shape.General, Properties.SPD]"]

    p_rep = int(N/len(properties))

    size_range = [(50,100),]*int(0.1*p_rep) + \
                 [(100,1000),]*int(0.4*p_rep) + \
                 [(1000,2000),]*int(0.4*p_rep) + \
                 [(2000,3000),]*int(0.1*p_rep)

    exps = []
    for p in properties:
        for s in size_range:
            exps.append((s,p))

    random.shuffle(exps)

    N = len(exps)

    c = 0
    measurements = ""
    for exp in exps:
        c = c+1

        args = generate_args(exp[0],exp[1])
        measurements += "\n"
        measurements += "\tmeasure_" + kernel_tag+ CALL_STRING.format(**args)
        measurements += "\n"
        if c%print_interval == 0:
            measurements += "\n"
            measurements += "@printf \"Completed {}/{}\n\" ".format(c,N)
            measurements += "\n"


    return measurements
