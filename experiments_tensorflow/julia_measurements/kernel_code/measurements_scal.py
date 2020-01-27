import pkg_resources
import os
import numpy as np
import random

CALL_STRING = "({shape},{n},{alpha},{stride})\n"
WRITE_STRING = "[shape,n,alpha,stride,time]"

def generate_args(size):
    args = {}
    args["stride"] = size[2]
    args["n"] = int(np.random.uniform(size[1][0]/size[2],size[1][1]/size[2]))
    dim = size[0]
    if dim == 1:
        args["shape"] = "[10000,1]"
    elif dim == 2:
        x = int(np.random.uniform(1000,2000))
        y = int(np.random.uniform(1000,2000))
        args["shape"] = "[{},{}]".format(x,y)


    args["alpha"] = 0.5

    return args

def measurements_code(kernel_tag,N=500,print_interval=50):

    dims = [1,2]
    n_range = [(50,100),(100,5000),(5000,8000),(8000,10000)]
    stride = [1,2,3]

    arg_list = [(d,n,s) for d in dims for n in n_range for s in stride]
    weights = []
    for s in arg_list:
        weights.append(len(arg_list))
        #weights.append(s[0][0] + s[0][1] + s[1][0] +s[1][1])
    weights = weights/np.sum(weights)
    min_N = int(1./np.min(weights))
    N = max(min_N,N)

    exps = []
    for s,w in zip(arg_list,weights):
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
