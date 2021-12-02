
all:
# for linux
# gfortran py2f90.f90 -fPIC -shared -o py2f90.so  
# for mac
	gcc py2c.cpp -fPIC -dynamiclib -o py2c.dylib
	gfortran py2f90.f90 -fPIC -dynamiclib -o py2f90.dylib

clean:
	-rm -rf *.dylib *.so