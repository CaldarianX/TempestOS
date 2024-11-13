#!/bin/bash
read -e -p "Enter ASM file path : " name

# Assemble the ASM file to Mach-O format object file
nasm -f macho64 -o $name.o $name.asm

# Link the object file to create an executable (Mach-O format)
ld -o $name $name.o -macos_version_min 10.7 -lSystem

# Run the executable
./$name

# Print the exit code
echo $?
