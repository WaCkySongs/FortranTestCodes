

f2py: # revised for module
	python -m numpy.f2py -c foo.f90 -m foo1
# f2py -c -m foo foo.f90

f2pyfull: # not used for module
	f2py foo.f90 -m foo -h foo.pyf 
	f2py -c foo.pyf foo.f90 


clean:
	-rm -rf *.pyf
purge:clean
	-rm -r *.so *.dSYM