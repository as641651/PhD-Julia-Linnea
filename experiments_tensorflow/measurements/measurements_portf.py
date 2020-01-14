import pkg_resources
import os
import numpy as np
import random

template_path = "templates/"
runner = pkg_resources.resource_string(__name__,os.path.join(template_path,"runner.jl")).decode("UTF-8")
num_threads = 8
out_file = "out.txt"

portf_kernel = pkg_resources.resource_string(__name__,os.path.join(template_path,"portf_kernel.jl")).decode("UTF-8")

def generate_args(size,property):
    args = {}
    args["size"] = int(np.random.uniform(size[0],size[1]))
    args["uplo"] = "L" if np.random.random()>0.5 else "U"
    args["property"] = property
    return args

N = 500
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
kernel_function = portf_kernel.format()
measurements = ""
for exp in exps:
    c = c+1

    args = generate_args(exp[0],exp[1])
    measurements += "\n"
    measurements += "\tmeasure_portf({size},'{uplo}',{property})\n".format(**args)
    measurements += "\n"
    if c%50 == 0:
        measurements += "\n"
        measurements += "@printf \"Completed {}/{}\n\" ".format(c,N)
        measurements += "\n"


code = runner.format(num_threads=num_threads,out_file=out_file,kernel_function=kernel_function,measurements=measurements)

f = open("experiments/portf_experiments.jl","w")
f.write(code)
f.close()
