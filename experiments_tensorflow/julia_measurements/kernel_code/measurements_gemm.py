import pkg_resources
import os
import numpy as np
import random

CALL_STRING = "({a1},{a2},{b1},{b2},{m},{n},{k},'{tA}','{tB}',{alpha},{beta},{propertyA},{propertyB})\n"
WRITE_STRING = "[m,n,k,tA,tB,alpha,beta,propertyA,propertyB,time]"

def generate_args(size,propertyA,propertyB):
    args = {}

    args["m"] = int(np.random.uniform(size[0][0],size[0][1]))
    args["n"] = int(np.random.uniform(size[1][0],size[1][1]))
    args["k"] = int(np.random.uniform(size[2][0],size[2][1]))
    tA = "N" if np.random.random()>0.3 else "T"
    args["tA"] = tA
    tB = "N" if np.random.random()>0.3 else "T"
    args["tB"] = tB
    args["alpha"] = 1.0 if np.random.random()>0.2 else np.random.random()
    args["beta"] = 0.0
    args["propertyB"] = propertyB
    args["propertyA"] = propertyA

    if tA == "N":
        args["a1"] = args["m"]
        args["a2"] = args["n"]
        if tB == "N":
            args["b1"] = args["a2"]
            args["b2"] = args["k"]
        else:
            args["b2"] = args["a2"]
            args["b1"] = args["k"]
    else:
        args["a1"] = args["n"]
        args["a2"] = args["m"]
        if tB == "N":
            args["b1"] = args["a1"]
            args["b2"] = args["k"]
        else:
            args["b2"] = args["a1"]
            args["b1"] = args["k"]

    return args

def measurements_code(kernel_tag,N=500,print_interval=50):

    propertiesA = ["[Shape.LowerTriangular, Properties.Random]",
                  "[Shape.General, Properties.Random]"]

    propertiesB = ["[Shape.LowerTriangular, Properties.Random]",
                  "[Shape.General, Properties.Random]"]

    size_range = [(50,100),(100,700),(700,1200),(1200,1500)]
    operand_sizes = [(m,n,k) for m in size_range for n in size_range for k in size_range]
    weights = []
    for s in operand_sizes:
        weights.append(len(operand_sizes))
        #weights.append(s[0][0] + s[0][1] + s[1][0] +s[1][1] + + s[2][0] +s[2][1])
    weights = weights/np.sum(weights)
    min_N = int(1./np.min(weights))
    N = max(min_N,N)

    exps = []
    for s,w in zip(operand_sizes,weights):
        #print(s,w)
        exps = exps + [s,]*int(w*N)
    random.shuffle(exps)

    c = 0
    measurements = ""
    for exp in exps:
        c = c+1

        args = generate_args(exp,random.choice(propertiesA),random.choice(propertiesB))
        measurements += "\n"
        measurements += "\tmeasure_" + kernel_tag+ CALL_STRING.format(**args)
        measurements += "\n"
        if c%print_interval == 0:
            measurements += "\n"
            measurements += "@printf \"Completed {}/{}\n\" ".format(c,N)
            measurements += "\n"

    return measurements
