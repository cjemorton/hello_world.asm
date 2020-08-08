all: test

hello_world.o:	hello_world.asm
	nasm -f elf hello_world.asm

test:	hello_world.o
	ld -s -o hello hello_world.o

clean:
	rm *.o
	rm hello
