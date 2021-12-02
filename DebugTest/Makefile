TOP_DIR =  $(CURDIR)
export TOP_DIR

defualt: hello

include Config.mk

hello:
	@echo "welcome !"

debug:
	$(MAKE) debug -C ./Source

purge:
	$(MAKE) purge -C ./build

clean:
	$(MAKE) clean -C ./build
