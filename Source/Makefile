CC = gfortran
OBJ = Bmod.o Amod.o main.o
OBJDIR = ../obj

all: $(OBJDIR)/Bmod.o $(OBJDIR)/Amod.o $(OBJDIR)/main.o

	@echo "o compiled"
$(OBJDIR)/%.o : %.f90
	$(CC) -g -c $^ -o $@ -J $(OBJDIR)

test:
	@echo ../file/$(OBJ)
	@echo $(OBJ) $(CC)
	@echo $(OBJDIR)/%.o : %.f90

clean:
	-rm $(OBJDIR)/*.mod $(OBJDIR)/*.o 
# multi file in a dir # NOTE: ?
# -J path for gfortran
# .mod 