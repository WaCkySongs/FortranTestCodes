cc = gfortran
cflags = -O2
src = ./Source
# middle = ./Cache
target = ./release
# cflag = -I.
# deps = .h
obj =  testb.o test.o main.o

%.o : $(src)/%.f90 #$(deps)
	$(cc) $(cflags) -c -o $@ $<

$(target)/main : $(obj)
	$(cc) $(cflags) -o $@ $^
	
	
# $@ $^ 

run: 
	$(target)/main

# skip ?
cleanall:
	rm $(target)/main
	make clean

clean:
	rm *o *.mod