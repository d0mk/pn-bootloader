#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Nieprawidlowe argumenty wejsciowe"
    exit 1
elif [ ! -f ./$1 ]; then
    echo "Brak podanego skryptu"
    exit 1
fi

SCRIPT_NAME=$(echo $1 | cut -d'.' -f 1)

nasm $1 -f bin -o $SCRIPT_NAME.bin
qemu-system-i386 -curses -drive format=raw,file=$SCRIPT_NAME.bin,index=0,if=floppy