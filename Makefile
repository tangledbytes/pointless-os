
ifeq ($(OS),Windows_NT)
	LARGS := "/ENTRY:_start /SUBSYSTEM:console"
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Linux)
		LARGS := nostartfiles
	endif

	ifeq ($(UNAME_S),Darwin)
		LARGS := "-e __start -static -nostartfiles"
	endif
endif

build:
	cargo rustc -- -C link-args=$(LARGS)