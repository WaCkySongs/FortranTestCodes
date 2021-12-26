OBJ = ./obj
BIN = ./build
cc = gcc
fc = gfortran
flg = -g


ldl:
	$(fc) $(flg) -o $(BIN)/ldl ldl.c f2c.f90

# 	$(cc) $(flg) -c ldl.c -o $(OBJ)/ldl.o
# 	$(fc) $(flg) -c f2c.f90 -o $(OBJ)/f2c.o
# #-J $(OBJ) 

# # link
# 	$(fc) $(flg) -o $(BIN)/ldl $(OBJ)/ldl.o $(OBJ)/f2c.o 


clean:
	-rm -rf *.mod
	-rm -rf ldl *.dSYM
	-rm -rf $(BIN)/ldl $(BIN)/*.dSYM $(OBJ)/*.o $(OBJ)/*.mod