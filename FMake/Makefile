# CC = gfortran
# CFLAGS = -O2
# OBJ := testb.o test.o main.o

# TOPDIR :=$(PWD)
# OBJDIR :=$(TOPDIR)/obj
# BINDIR :=$(TOPDIR)/bin
# BIN :=main

# SUBDIR = Source obj

# # global vars to sub makefile
# export CC TOPDIR OBJDIR BINDIR BIN OBJ

# all:Astart start CHECKDIR $(SUBDIR)
# 	@echo "***END***"
# Astart:
# 	$(cc) -g -o Astart.out Astart.f90
# start:
# 	@echo "***START***"
# CHECKDIR:
# 	mkdir -p $(BINDIR)
# $(SUBDIR):RUN
# 	make -C $@
# RUN:

# $(target)/main : $(OBJ)
# 	@echo "complie main"
# 	$(cc) $^ $(cflags) -o $@ 
# %.o : $(src)/%.f90 
# 	@echo "complie obj"
# 	$(cc) -c $(cflags) -o $@ $<


# run: 
# 	$(target)/main

# skip ?
# cleanall:
# 	rm $(BINDIR)/BIN
# 	make clean
.defualt = debug
debug:
	$(MAKE) -C Source
	$(MAKE) -C obj

clean:
	$(MAKE) clean -C Source
	-rm *o *.mod

purge:clean
	$(MAKE) purge -C obj
