TARGET = test
DEPS = test typeopen 
DEPSFILE = new 

WAY = /usr/local/bin/test
.PHONY: all clean start install uninsytall 

DEPS:=$(addsuffix .o, $(DEPS))

DEPSFILE?=$(addprefix src/, new)

all: start | $(TARGET)

$(TARGET): $(DEPS)
	gcc $(DEPS) -o $(TARGET)
typeopen.o: typeopen.c typeopen.h
	gcc -c typeopen.c
test.o: test.c typeopen.h
	gcc -c test.c	
clean:
	rm -f test $(DEPS) new
start:$(TARGET)
	./$(TARGET) file1 $(DEPSFILE) 
install:
	cp test $(WAY)
uninstall: 
	rm -f $(WAY)