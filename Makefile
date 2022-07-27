
csrc = $(wildcard source/*.c) 

IDIR =./include/
SDIR =/source/
CC=gcc
CFLAGS=-I$(IDIR)

obj = $(csrc:.c=.o) 



helloworld: $(obj)
	$(CXX) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(obj) helloworld

.PHONY: cleandep
cleandep:
	rm -f $(dep)
