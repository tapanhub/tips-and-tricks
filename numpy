- Print Index of each element in numpy array
import numpy as np
a = np.arange(6).reshape(1, 2,3)
for index, val in np.ndenumerate(a):
    print(index   , val)

