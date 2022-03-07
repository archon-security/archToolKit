#!/bin/bash
clear
    
echo -e "\n ===== Iniciando instalação dos pacotes e dependencias =====\n" 
sleep 1

# Principais dependências e programas
    sudo pacman -Syyu
    sudo pacman -Sy git go node-lts-gallium npm python3 python p7zip obs-studio vivaldi --noconfirm
    python3 install pip
    python3 install nc
    pip install request
    sudo pacman -Syu

    echo -e "\n ===== Todas as dependências principais foram instaladas, \033[1mverifique o console para checar se não foi retornado nenhum \033[31mstatus 1\033[m ====="
    sleep 1

#YAY Aur
    cd src
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    yay -Syu
    cd ../../

    echo "\n ===== YAY foi instalado corretamente ====="
    sleep 0.5

    yay -S hyper --noconfirm
    yay -S github-desktop-bin --noconfirm

    echo "\n ===== Pacotes instalados com yay completos ====="
    sleep 0.5
#VSCode
    cd downloads
    wget "https://go.microsoft.com/fwlink/?LinkID=620884" -O vscode.tar.gz
    sudo tar -vzxf vscode.tar.gz -C /opt/
    sudo mv /opt/VSCode*/ /opt/vscode/
    sudo ln -sf /opt/vscode/code /usr/bin/code
    echo -e '[Desktop Entry]\n Version=1.0\n Name=VSCode\n Exec=/opt/vscode/code\n Icon=/opt/vscode/resources/app/resources/linux/code.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/vscode.desktop
    cd ..

    echo "\n ===== VSCode foi instalado corretamente, execute-o com o comando 'code' ====="
    sleep 0.5

#Discord
    cd downloads
    wget "https://discord.com/api/download?platform=linux&format=tar.gz" -O discord.tar.gz
    sudo tar -xfv discord.tar.gz -C /opt
    sudo mv /opt/Discord*/ /opt/discord/
    sudo ln -sf /opt/discord/Discord /usr/bin/discord
    echo -e '[Desktop Entry]\n Version=1.0\n Name=Discord\n Exec=/opt/discord/Discord\n Icon=/opt/discord/discord.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/discord.desktop
    cd ..

    echo "\n =====Discord foi instalado corretamente, dê 'discord' em seu terminal para executalo====="
    sleep 0.5

echo "\n =====Instalação completa====="