ifdef TOP_DIR
	SOURCE_DIR = $(TOP_DIR)/Source
	BD_DIR = $(TOP_DIR)/build
	DEBUG_DIR = $(BD_DIR)/debug # ! TODO:
	export BD_DIR DEBUG_DIR
endif

cf = gfortran
cc = gcc
DB_flg = -g
optimization ?= -O3

export cf cc DB_flg optimization

.defualt: Config
Config:
	@echo "Config loaded"
	@echo "TOP_DIR:" $(TOP_DIR)
	@echo "SOURCE_DIR:" $(SOURCE_DIR)
	@echo $(cf)
	@echo $(cc)