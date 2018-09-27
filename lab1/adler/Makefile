TARGET = hash
LIBS = adler.h 
DEPS = fletcher adler 
DEPSC = fletcher adler
DEPSASM = fletcher adler
DEPSI = fletcher adler
DEPSFILE = File_10000 File_20000 File_30000 File_40000 File_50000 \
File_60000 File_70000 File_80000 File_90000 File_100000 File_110000 \
File_120000 File_130000 File_140000 File_150000 File_160000 File_170000 \
File_180000 File_190000 File_200000 File_210000 File_220000 File_230000 \
File_240000 File_250000 File_260000 File_270000 File_280000 File_290000  File_300000 

asmflag = -save-temps -fverbose-asm

WAY = /usr/local/bin/test
.PHONY: all clean start optO0 optO1 optO2 optO3 optOs install uninsytall plot asm

DEPS:=$(addsuffix .o, $(DEPS))
DEPSC:=$(addsuffix .c, $(DEPSC))
DEPSASM:=$(addsuffix .s, $(DEPSASM))
DEPSI:=$(addsuffix .i, $(DEPSI))


all: $(TARGET)

$(TARGET): $(DEPS)
	gcc $(DEPS) -o $(TARGET)
fletcher.o: fletcher.c $(LIBS)
	gcc -c fletcher.c 
adler.o: adler.c $(LIBS)
	gcc -c adler.c 
clean:
	rm -f hash $(DEPS) $(DEPSFILE) $(DEPSI) $(DEPSASM) a.out
start:$(TARGET)
	./$(TARGET) 
optO0: $(DEPSC) $(LIBS)
	gcc $(DEPSC) -c -O0
	gcc $(DEPS) -o ./$(TARGET)

optO1: $(DEPSC) $(LIBS)
	gcc $(DEPSC) -c -O1
	gcc $(DEPS) -o ./$(TARGET)
optO2: $(DEPSC) $(LIBS)
	gcc $(DEPSC) -c -O2
	gcc $(DEPS) -o ./$(TARGET)

optO3: $(DEPSC) $(LIBS)
	gcc $(DEPSC) -c -O3
	gcc $(DEPS) -o ./$(TARGET)

optOs: $(DEPSC) $(LIBS)
	gcc $(DEPSC) -c -Os
	gcc $(DEPS) -o ./$(TARGET)
install:
	cp hash $(WAY)
uninstall: 
	rm -f $(WAY)
plot:
	gnuplot plot1.sh

asm:$(DEPSC)
	gcc $(DEPSC) $(asmflag) -O2

	
