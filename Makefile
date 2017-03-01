all : gm
	g++ -g -Wall -o Simple Simple.c
clean :
	$(RM) gm
