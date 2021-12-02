#! /usr/bin/env python
#coding=utf-8

import numpy as np
from numpy.ctypeslib import load_library,ndpointer
from ctypes import *

def hello():
    a = 1
    return a
# load .dll
flib = cdll.LoadLibrary("./py2f90.dylib")
res = np.empty(1,dtype='int32')
# flib.add.argtypes=[c_int,c_int]
flib.add(c_int(1),res.ctypes.data_as(POINTER(c_int)))
clib = cdll.LoadLibrary("./py2c.dylib")
# shape of 2d array
n1,n2 = 2,4+1
# create an empty 2d array
data = np.empty(shape=(n1,n2),dtype='f4',order='f')
flib.argtypes = [ndpointer(dtype='f4',ndim=2),c_int,c_int]
flib.array2py(data.ctypes.data,n1,n2)# something err
# print 
# print data
1