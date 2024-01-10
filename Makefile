obj:
	g++ -c myapi.cc -o myapi.o
	
createlib:
	ar rcs libapi.a myapi.o
	
all:
	g++ main.cc -L. -lapi -o run
