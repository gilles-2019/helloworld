# This is the default target, which will be built when 
# you invoke make
.PHONY: all
all: helloworld

# This rule tells make how to build hello from hello.cpp
hello: helloworld.c
    g++ -o helloworld helloworld.c

# This rule tells make to copy hello to the binaries subdirectory,
# creating it if necessary
.PHONY: install
install:
    mkdir -p /usr/bin
    cp -p helloworld /usr/bin

# This rule tells make to delete hello and hello.o
.PHONY: clean 
clean:
    rm -f helloworld
