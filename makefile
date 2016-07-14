OBJECT_FILES = \
	board.o \
	book.o \
	data.o \
	eval.o \
	main.o \
	search.o

all: tscp

tscp: $(OBJECT_FILES)
	g++ -O3 -o tscp $(OBJECT_FILES)

%.o: %.cpp data.h defs.h protos.h
	g++ -O3 -c $< -o $@

clean:
	rm -f *.o
	rm -f tscp
