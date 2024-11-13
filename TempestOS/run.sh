#!/bin/bash
read -e -p "Enter ASM file path : " name
read -e -p "Enter BIN file path : " BINNAME
nasm -f bin $name -o $BINNAME
qemu-system-x86_64 $BINNAME
