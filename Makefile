out.o : main.c
	gcc -c -o out.o main.c -lgsl -lcblas
libsqrt.a : out.o
	ar rcs libsqrt.a out.o 
all :
	make libsqrt.a
	ponyc
