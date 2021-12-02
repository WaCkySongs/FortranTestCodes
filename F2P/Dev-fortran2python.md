# fortran 2 python

## use `cytypes` like c 

1. in `.f90`
   1. `use,intrinsic::iso_c_binding`
   2. `integer(c_int),intent(in),value::a`
2. compile as dylib
3. in python
   1. load `flib = cdll.LoadLibrary("./py2f90.dylib")`
   2. res `res = np.empty(1,dtype='int32')`
   3. call `flib.add(c_int(1),res.ctypes.data_as(POINTER(c_int)))`
4. NOTE:
   1. [fortran90.org](https://www.fortran90.org/src/best-practices.html#using-cython)
   2. [python ctypes](https://www.cnblogs.com/night-ride-depart/p/4907613.html)
   3. The type of res !

## use f2py generate ?

1. `f2py -m foo foo.f90 -h foo.pyf`
   1. auto generate header file `foo.pyf` include the all fun,sub in `foo.f90`
2. `f2py -c foo.pyf foo.f90`
   1. generate the dll file for python
   2. can also use other lib as `f2py -c *.pyf *.F90 -L/lib/dir/ -labc`
3. use `import foo` in python
4. `f2py -c -m foo foo.f90` in online
5. [some issue about module and func.](http://www.cocoachina.com/articles/103605)
   1. if sub. included in module, is can not be recognized?
      1. it should be renamed: as `f2py -c -m foo1 foo.f90` and use `foo1.foo.sub()`
   2. `use` [about use](https://www.cnpython.com/qa/595993)