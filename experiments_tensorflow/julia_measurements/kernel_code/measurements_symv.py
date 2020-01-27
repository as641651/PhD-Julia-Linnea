import pkg_resources
import os
import numpy as np
import random

CALL_STRING = "({size},'{ul}',{alpha},{beta})\n"
WRITE_STRING = "[size,ul,alpha,beta,time]"

def generate_args(size):
    args = {}
    args["size"] = int(np.random.uniform(size[0],size[0]))
    args["alpha"] = 1.0 if np.random.random()>0.2 else np.random.random()
    args["ul"] = "U" if np.random.random()>0.5 else "L"
    args["beta"] = 0.0

    return args



def measurements_code(kernel_tag,N=500,print_interval=50):

    operand_sizes = [(50,100),(100,700),(700,1200),(1200,1500)]
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

        args = generate_args(exp)
        measurements += "\n"
        measurements += "\tmeasure_" + kernel_tag+ CALL_STRING.format(**args)
        measurements += "\n"
        if c%print_interval == 0:
            measurements += "\n"
            measurements += "@printf \"Completed {}/{}\n\" ".format(c,N)
            measurements += "\n"

    return measurements
