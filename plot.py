#!/usr/bin/env python

import sys
import json
from rsub import *
from matplotlib import pyplot as plt

def smart_json_loads(x):
    try:
        return json.loads(x)['test_acc']
    except:
        pass

for p in sys.argv[1:]:
    data = filter(None, map(smart_json_loads, open(p)))
    _ = plt.plot(data, alpha=0.5)

_ = plt.ylim(0.8, 1.0)
show_plot()