#!/bin/bash


function check_required_components()
{
    if ! [ -x "$(command -v nasm)" ]; then
        echo -e "\nProsze zainstalowac nasm (sudo apt install nasm)\n" >&2
        exit 1
    fi

    if ! [ -x "$(command -v qemu-system-i386)" ]; then
        echo -e "\nProsze zainstalowac qemu-system-x86 (sudo apt install qemu-system-x86)\n" >&2
        exit 1
    fi
}


function check_if_repo_cloned()
{
    if [ ! -d "pn-bootloader" ]; then
        echo -e "\nProsze najpierw sklonowac repozytorium (argument clone).\n"
        exit 1
    fi
}


if [ $1 == "clone" ]; then

    git clone https://github.com/d0mk/pn-bootloader
    exit 0

elif [ $1 == "run" ]; then

    check_if_repo_cloned
    check_required_components
    chmod u+r+x ./pn-bootloader/zadania/run.sh
    echo -e "\nZadania do zrealizowania znajduja sie w lokacji 'pn-bootloader/zadania/'."
    echo -e "Szczegolowe informacje dotyczace zajec znajduja sie w pliku 'pn-bootloader/laboratoria-konspekt.pdf'.\n"
    exit 0

elif [ $1 == "clean" ]; then

    rm -rf pn-bootloader
    exit 0

fi