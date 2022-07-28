
csrc = $(wildcard source/*.c) 

IDIR =./include/
SDIR =/source/


obj = $(csrc:.c=.o) 



helloworld: $(obj)
	$(CXX) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(obj) helloworld

.PHONY: cleandep
cleandep:
	rm -f $(dep)
	
.PHONY: install 
install: helloworld 

