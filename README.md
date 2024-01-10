# Testing
#Here are the steps to create a static library:
#Compile the source files into object files:
    
$ g++ -c api.cc -o api.o
$ g++ -c main.cc -o main.o

#This will compile api.cc and main.cc into object files api.o and main.o, respectively.
#Create the static library (.a file):

$ ar rcs libmyapi.a api.o

#This command creates a static library named libmyapi.a and adds the object file api.o to it.
#Compile the main program with the static library:

$ g++ main.o -L. -lmyapi -o myprogram

#This command compiles the main program (main.o) and links it with the static library (-lmyapi). The -L. option tells the linker #to look for libraries in the current directory.

#Run the executable:

$ ./myprogram

