all:
	nasm -f elf $(source).asm
	ld -m elf_i386 -s -o $(source).out $(source).o
	rm $(source).o 