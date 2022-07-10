all:
	nasm -f elf -g $(source).asm
	ld -m elf_i386 -o $(source).out $(source).o
	rm $(source).o

clean:
	rm -f *.out
	rm -f *.o