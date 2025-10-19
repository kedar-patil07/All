#with default values
from types import SimpleNamespace

#np.zeros(shape) (1) for 1d array and (1,1) for 2D

import numpy as np
zeros_array = np.zeros(3)
print(zeros_array)

#np.ones(shape)

import numpy as np
ones_array = np.ones((2,3))
print(ones_array)

import numpy as np
fulled_array = np.full((2,2),7)
print(fulled_array)
