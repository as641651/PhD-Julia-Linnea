import pkg_resources
import os
import numpy as np
import random

template_path = "templates/"
runner = pkg_resources.resource_string(__name__,os.path.join(template_path,"runner.jl")).decode("UTF-8")
num_threads = 8
out_file = "out.txt"

trsm_kernel = pkg_resources.resource_string(__name__,os.path.join(template_path,"trsm_kernel.jl")).decode("UTF-8")

def generate_args(size,property):
    args = {}
    args["m"] = int(np.random.uniform(size[0][0],size[0][1]))
    args["n"] = int(np.random.uniform(size[1][0],size[1][1]))
    args["property"] = property
    args["side"] = "L"
    args["ul"] = "U" if "UpperTriangular" in property else "L"
    args["tA"] = "N" if np.random.random()>0.5 else "T"
    args["dA"] = "N"
    args["alpha"] = 1.0 if np.random.random()>0.2 else np.random.random()

    return args

N = 500
properties = ["[Shape.LowerTriangular, Properties.Random]",
              "[Shape.LowerTriangular, Properties.Random(-5, 5)]",
              "[Shape.UpperTriangular, Properties.Constant(3.0)]",
              "[Shape.UpperTriangular, Properties.Random]"]

size_range = [(50,100),(100,700),(700,1200),(1200,1500)]
operand_sizes = [(m,n) for m in size_range for n in size_range]
weights = []
for s in operand_sizes:
    weights.append(s[0][0] + s[0][1] + s[1][0] +s[1][1])
weights = weights/np.sum(weights)
min_N = int(1./np.min(weights))
N = max(min_N,N)

exps = []
for s,w in zip(operand_sizes,weights):
    exps = exps + [s,]*int(w*N)

random.shuffle(exps)


c = 0
kernel_function = trsm_kernel.format()
measurements = ""
for exp in exps:
    c = c+1

    args = generate_args(exp,random.choice(properties))
    measurements += "\n"
    measurements += "\tmeasure_trsm({m},{n},'{side}','{ul}','{tA}','{dA}',{alpha},{property})\n".format(**args)
    measurements += "\n"
    if c%50 == 0:
        measurements += "\n"
        measurements += "@printf \"Completed {}/{}\n\" ".format(c,N)
        measurements += "\n"


code = runner.format(num_threads=num_threads,out_file=out_file,kernel_function=kernel_function,measurements=measurements)

f = open("experiments/trsm_experiments.jl","w")
f.write(code)
f.close()
