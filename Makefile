#Makefile to compile parser-cyk

CC=g++
CFLAGS=-c -Wall -std=c++11

all: parser.o producoes.o grammar.o erros.o
	$(CC) parser.o producoes.o grammar.o erros.o -o parser
	rm -rf *o

parser.o: parser.cpp
	$(CC) $(CFLAGS) src/parser.cpp

producoes.o: producoes.cpp
	$(CC) $(CFLAGS) src/producoes.cpp

grammar.o: grammar.cpp
	$(CC) $(CFLAGS) src/grammar.cpp

erros.o: erros.cpp
	$(CC) $(CFLAGS) src/erros.cpp

clean:
	rm -rf *o parser
