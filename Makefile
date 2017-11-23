CC=g++
FLAGS=-c -Wall
SOURCES=Circle.cpp main.cpp Rectangle.cpp Shape.cpp Square.cpp
INCLUDES=Circle.hpp Rectangle.hpp Shape.hpp Square.hpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=execute

all:$(SOURCES) $(EXECUTABLE)

$(EXECUTABLE):$(OBJECTS)
	$(CC) $(OBJECTS) -o $@ 

debug:$(SOURCES) $(INCLUDES)
	$(CC) $(SOURCES) $(FLAGS)

clean:
	rm *.o
