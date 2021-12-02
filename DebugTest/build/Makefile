defualt:debug

include ../Config.mk

SOURCE_DIR ?= ../Source

debug:INIT debug.out
	@echo "build debug finished"
debug.out:main.o test.o
	$(cf) $(DB_flg) $^ -o $@
main.o:$(SOURCE_DIR)/main.f90
	$(cf) $(DB_flg) $^ -c
test.o:$(SOURCE_DIR)/test.c 
	$(cc) $(DB_flg) $^ -c

INIT:
	@echo "build debug"
	@echo $(DB_flg)
	@echo $(SOURCE_DIR)

purge: clean
	rm -rf *.out *.dSYM

clean:
	rm -rf main *.o
