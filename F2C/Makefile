odir = ./obj
bdir = ./build
cc = gcc
cf = gfortran
flg = -g



ldl:
	$(cc) $(flg) -c ldl.c -o $(odir)/ldl.o
	$(cf) $(flg) -c f2c.f90 -o $(odir)/f2c.o -J $(odir)/
# link
	$(cc) $(flg) -o $(bdir)/ldl $(odir)/ldl.o $(odir)/f2c.o -I $(odir)
#ldlsimple.c 


clean:
	-rm -rf ldl *.dSYM
	-rm -rf $(bdir)/ldl $(odir)/*.o