all : gm
	g++ -g -Wall -o Simple Simple.cpp
clean :
	$(RM) gm