import pkg_resources
import os
import numpy as np
import random
import importlib
import re
import json

NUM_THREADS = 8
NUM_EXP_PER_KERNEL = 500
PRINT_INTERVAL = 50
MEASUREMENTS_DIR = "measurements_data"
META_DATA_FILE = "metadata.json"

# KERNEL_TAGS = ["axpy",
#                "gemm",
#                "gemv",
#                "getrf",
#                "portf",
#                "qr",
#                "scal",
#                "symm",
#                "symv",
#                "transpose",
#                "trmm",
#                "trsm",
#                "trsv"]


KERNEL_TAGS = ["axpy","gemm","gemv","getrf","portf","qr","scal","symm","symv","transpose","trmm","trsm","trsv"]
#RUNNER_TAGS = KERNEL_TAGS
RUNNER_TAGS = ["axpy","transpose"]

def generate_measurement_code(kernel_tag,measurements,write_string):

    template_path = "templates/"
    runner = pkg_resources.resource_string(__name__,os.path.join(template_path,"runner.jl")).decode("UTF-8")

    if not os.path.exists(MEASUREMENTS_DIR):
        os.makedirs(MEASUREMENTS_DIR)

    out_file = os.path.abspath(os.path.join(MEASUREMENTS_DIR,kernel_tag + "_out.txt"))

    kernel = pkg_resources.resource_string(__name__,os.path.join(template_path,kernel_tag+"_kernel.jl")).decode("UTF-8")

    kernel_function = kernel.format(kernel_tag=kernel_tag,write_string=write_string)

    code = runner.format(num_threads=NUM_THREADS,out_file=out_file,kernel_function=kernel_function,measurements=measurements)

    f = open("experiments/"+kernel_tag+"_experiments.jl","w")
    f.write(code)
    f.close()


def generate_experiment_code():
    meta_data = {}

    for kernel in KERNEL_TAGS:
        i = importlib.import_module("kernel_code.measurements_" + kernel)
        measurements = i.measurements_code(kernel,NUM_EXP_PER_KERNEL,PRINT_INTERVAL)
        generate_measurement_code(kernel,measurements,i.WRITE_STRING)
        meta_data[kernel] = re.findall('\[(.*?)\]',i.WRITE_STRING)[0].split(',')


    with open(META_DATA_FILE,'w') as outfile:
        json.dump(meta_data,outfile,indent=4)




def generate_runner_code():
    call = "/julia/julia"

    code = "#!/usr/bin/env bash\n\n"
    for runner in RUNNER_TAGS:
        code += "echo \"Running {}\"\n".format(runner)
        code +="{call} experiments/{runner}_experiments.jl\n".format(call=call,runner=runner)
        code += "echo \"Finished {}\"\n".format(runner)
        code += "sleep 5\n"

    runner_file = "runner.sh"
    f = open(runner_file,"w")
    f.write(code)
    f.close()


generate_experiment_code()
generate_runner_code()
