import pkg_resources
import os
import numpy as np
import random

CALL_STRING = "({m},{n},{property})\n"
WRITE_STRING = "[m,n,property,time]"

def generate_args(size,property):
    args = {}
    args["m"] = int(np.random.uniform(size[0][0],size[0][1]))
    args["n"] = int(np.random.uniform(size[1][0],size[1][1]))
    args["property"] = property

    return args

def measurements_code(kernel_tag,N=500,print_interval=50):

    properties = ["[Shape.General, Properties.Random]",
                  "[Shape.General, Properties.Constant(3.0)]",
                  "[Shape.UpperTriangular, Properties.Random]"]

    size_range = [(50,100),(100,700),(700,1200),(1200,1500)]
    operand_sizes = [(m,n) for m in size_range for n in size_range]
    weights = []
    for s in operand_sizes:
        weights.append(len(operand_sizes))
        #weights.append(s[0][0] + s[0][1] + s[1][0] +s[1][1])
    weights = weights/np.sum(weights)
    min_N = int(1./np.min(weights))
    N = max(min_N,N)

    exps = []
    for s,w in zip(operand_sizes,weights):
        exps = exps + [s,]*int(w*N)

    random.shuffle(exps)

    c = 0
    measurements = ""
    for exp in exps:
        c = c+1

        args = generate_args(exp,random.choice(properties))
        measurements += "\n"
        measurements += "\tmeasure_" + kernel_tag+ CALL_STRING.format(**args)
        measurements += "\n"
        if c%print_interval == 0:
            measurements += "\n"
            measurements += "@printf \"Completed {}/{}\n\" ".format(c,N)
            measurements += "\n"


    return measurements
