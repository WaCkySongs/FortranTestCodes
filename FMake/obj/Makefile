CC := gfortran
BINDIR := ../bin
BIN := main
OBJ := amod.o bmod.o main.o

all: $(BINDIR)/$(BIN)
	@echo "bin finished"
$(BINDIR)/$(BIN):$(OBJ)
	$(CC) -g $^ -o $@ 

purge:
	-rm $(BINDIR)/$(BIN) $(BINDIR)/*.dSYM