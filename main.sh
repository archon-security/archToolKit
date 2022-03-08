#!/bin/bash
varstart="\033[1;32m"
negrito="\033[1m"
varend="\033[m"

keyp=1

#Sexo sem amor é jiu-jitsu

while [ $keyp == 1 ]; do
    echo -e "\e[3m Olá usuário, insira a opção que deseja:\e[m\n"
    sleep 0.5
    echo -e "$negrito[$varend$varstart 1$varend$negrito ]$varend reservado pra call com o rafa"
    sleep 0.5
    echo -e "$negrito[$varend$varstart 2$varend$negrito ]$varend Selecione o programa a ser instalado"
    sleep 0.5
    echo -e "$negrito[$varend$varstart 3$varend$negrito ]$varend Backup de alguma coisa edita ai seu merda"
    sleep 0.5
    echo -e "\033[1m[\e[m\e[1;31m 00 \e[m\e[1m]\e[m Sair da script\n"
    printf "$negrito> \e[m"
    read usrchoice
    case $usrchoice in
        1) keyp=0 
        clear && bash ./src/op1.sh ;;
        2) keyp=0
        echo 'caralho ' ;;
        3) keyp=0 
        echo 'caralho ' ;;
        00) exit 127 ;;
        *) echo -e '\033[31;3mA opção inserida é inválida, tente novamente...\033[m'
        sleep 1
        clear
        ;;
    esac
done
