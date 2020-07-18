#!/bin/bash

SCRIPT_PWD=$(realpath $0)
SCRIPT_PWD_DIR=$(echo $SCRIPT_PWD | tr '/' '\n' | head -n -1 | tr '\n' '/')

. bash_colors.sh

#sudo pacman -S --needed base-devel git wget
echo -e "${BIBlue}Package-query start install...${Reset}"
cd /tmp
#git clone https://aur.archlinux.org/package-query.git
cd package-query/
#makepkg -si
if [[ $? -ne 0 ]] 
	then echo -e "${BIRed}Package-query error...${Reset}" 
	else echo -e "${BIGreen}Package-query installed${Reset}" 
fi
cd ..
#sudo rm -dR package-query/

# install yay
echo -e "${BIBlue}Yay start install...${Reset}"
#git clone https://aur.archlinux.org/yay.git
cd yay
#makepkg -si
if [[ $? -ne 0 ]] 
	then echo -e "${BIRed}Yay error...${Reset}" 
	else echo -e "${BIGreen}Yay installed${Reset}" 
fi
cd ..
#sudo rm -dR yay/

#touchpad config file
sudo ln -sf $SCRIPT_PWD_DIR\90-touchpad.conf /etc/X11/xorg.conf.d/90-touchpad.conf

if [[ $? -ne 0 ]]
	then echo -e "${BIRed}90-touchpad.conf error create simlink${Reset}" 
	else echo -e "${BIGreen}90-touchpad.conf create simlink${Reset}" 
fi

#bash_colors file
sudo ln -sf $SCRIPT_PWD_DIR\bash_colors.sh /etc/profile.d/bash_colors.sh

if [[ $? -ne 0 ]]
	then echo -e "${BIRed}bash_colors.sh error create simlink${Reset}" 
	else echo -e "${BIGreen}bash_colors.sh create simlink${Reset}" 
fi

ln -sf $SCRIPT_PWD_DIR\bashrc $HOME/.bashrc
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.bashrc error create simlink${Reset}" 
	else echo -e "${BIGreen}.bashrc create simlink${Reset}" 
fi

ln -sf $SCRIPT_PWD_DIR\bash_aliases $HOME/.bash_aliases
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.bash_aliases error create simlink${Reset}" 
	else echo -e "${BIGreen}.bash_aliases create simlink${Reset}" 
fi

#config file for alacritty terminal
ln -sf $SCRIPT_PWD_DIR\alacritty.yml $HOME/.alacritty.yml
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.alacritty.yml error create simlink${Reset}" 
	else echo -e "${BIGreen}.alacritty.yml create simlink${Reset}" 
fi

ln -sf $SCRIPT_PWD_DIR\face $HOME/.face
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.face error create simlink${Reset}" 
	else echo -e "${BIGreen}.face create simlink${Reset}" 
fi

#screen config file
ln -sf $SCRIPT_PWD_DIR\screenrc $HOME/.screenrc
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.screenrc error create simlink${Reset}" 
	else echo -e "${BIGreen}.screenrc create simlink${Reset}" 
fi

#vim config file
ln -sf $SCRIPT_PWD_DIR\vimrc $HOME/.vimrc
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.vimrc error create simlink${Reset}" 
	else echo -e "${BIGreen}.vimrc create simlink${Reset}" 
fi

