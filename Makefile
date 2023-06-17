.PHONY: all clean

CXX = g++
CFLAGS = -Wall -g

all: ASTCreate

clean:
	rm -f *.o ASTCreate

ASTCreate: main.o
	${CXX} ${CFLAGS} -o ASTCreate main.o -lm

main.o:
	${CXX} ${CFLAGS} -c main.cpp -o main.o
