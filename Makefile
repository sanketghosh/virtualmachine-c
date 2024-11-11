flags=-O2 -Wall -std=c2x
# ldflags=-lbu
ldflags=

.PHONY= all clean

all: clean vm


vm: vm.o
	cc $(flags) $^ -o $@ $(ldflags)

vm.o: vm.c vm.h
	cc $(flags) -c $<

clean:
	rm -rf *.o  vm
