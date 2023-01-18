all: compile link run

compile:
	g++ -Isrc/include -c src/include/dependencies/utility.cpp
	g++ -Isrc/include -c src/include/dependencies/apple.cpp
	g++ -Isrc/include -c src/include/dependencies/rendering.cpp
	g++ -Isrc/include -c main.cpp

link:
	
	g++ main.o apple.o utility.o rendering.o -o main -Wl,-rpath=/bin -Lsrc/lib -lsfml-graphics -lsfml-window -lsfml-system

run:
	main