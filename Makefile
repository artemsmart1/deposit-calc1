all : gm
	g++ -g -Wall -o gm gm.c
clean :
	$(RM) gm
