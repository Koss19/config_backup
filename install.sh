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

#install packages
PACKAGES="bash-completion neofetch alacritty kitty conky polybar ranger screen scrot vim"

sudo pacman -S $PACKAGES

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

#bashrc file
ln -sf $SCRIPT_PWD_DIR\bashrc $HOME/.bashrc
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.bashrc error create simlink${Reset}" 
	else echo -e "${BIGreen}.bashrc create simlink${Reset}" 
fi

#bash_aliases file
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

#face icon
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

#i3 config file
if [[ -d $HOME/.config ]]; then
	echo -e "${BIBlue}.config is exist${Reset}"

	if [[ -d $HOME/.config/i3 ]]; then
		echo -e "${BIBlue}.config/i3 is exist${Reset}"
	else
		mkdir $HOME/.config/i3
		if [[ $? -ne 0 ]]
			then echo -e "${BIRed}Error .config/i3 was not created${Reset}" 
			else echo -e "${BIGreen}.config/i3 successfully created${Reset}" 
		fi
	fi
	
	if [[ -d $HOME/.config/i3_locker ]]; then
		echo -e "${BIBlue}.config/i3_locker is exist${Reset}"
	else
		mkdir $HOME/.config/i3_locker
		if [[ $? -ne 0 ]]
			then echo -e "${BIRed}Error .config/i3_locker was not created${Reset}" 
			else echo -e "${BIGreen}.config/i3_locker successfully created${Reset}" 
		fi
	fi

	if [[ -d $HOME/.config/kitty ]]; then
		echo -e "${BIBlue}.config/kitty is exist${Reset}"
	else
		mkdir $HOME/.config/kitty
		if [[ $? -ne 0 ]]
			then echo -e "${BIRed}Error .config/kitty was not created${Reset}" 
			else echo -e "${BIGreen}.config/kitty successfully created${Reset}" 
		fi
	fi

	if [[ -d $HOME/.config/neofetch ]]; then
		echo -e "${BIBlue}.config/neofetch is exist${Reset}"
	else
		mkdir $HOME/.config/neofetch
		if [[ $? -ne 0 ]]
			then echo -e "${BIRed}Error .config/neofetch was not created${Reset}" 
			else echo -e "${BIGreen}.config/neofetch successfully created${Reset}" 
		fi
	fi

	if [[ -d $HOME/.config/polybar ]]; then
		echo -e "${BIBlue}.config/polybar is exist${Reset}"
	else
		mkdir $HOME/.config/polybar
		if [[ $? -ne 0 ]]
			then echo -e "${BIRed}Error .config/polybar was not created${Reset}" 
			else echo -e "${BIGreen}.config/polybar successfully created${Reset}" 
		fi
	fi

	if [[ -d $HOME/.config/ranger ]]; then
		echo -e "${BIBlue}.config/ranger is exist${Reset}"
	else
		mkdir $HOME/.config/ranger
		if [[ $? -ne 0 ]]
			then echo -e "${BIRed}Error .config/ranger was not created${Reset}" 
			else echo -e "${BIGreen}.config/ranger successfully created${Reset}" 
		fi
	fi

else
	mkdir $HOME/.config
	if [[ $? -ne 0 ]]
		then echo -e "${BIRed}Error .config was not created${Reset}" 
		else echo -e "${BIGreen}.config successfully created${Reset}" 
	fi

	mkdir $HOME/.config/i3	
	if [[ $? -ne 0 ]]
		then echo -e "${BIRed}Error .config/i3 was not created${Reset}" 
		else echo -e "${BIGreen}.config/i3 successfully created${Reset}" 
	fi
	
	mkdir $HOME/.config/i3_locker
	if [[ $? -ne 0 ]]
		then echo -e "${BIRed}Error .config/i3_locker was not created${Reset}" 
		else echo -e "${BIGreen}.config/i3_locker successfully created${Reset}" 
	fi
	
	mkdir $HOME/.config/kitty
	if [[ $? -ne 0 ]]
		then echo -e "${BIRed}Error .config/kitty was not created${Reset}" 
		else echo -e "${BIGreen}.config/kitty successfully created${Reset}" 
	fi

	mkdir $HOME/.config/neofetch
	if [[ $? -ne 0 ]]
		then echo -e "${BIRed}Error .config/neofetch was not created${Reset}" 
		else echo -e "${BIGreen}.config/neofetch successfully created${Reset}" 
	fi

	mkdir $HOME/.config/polybar
	if [[ $? -ne 0 ]]
		then echo -e "${BIRed}Error .config/polybar was not created${Reset}" 
		else echo -e "${BIGreen}.config/polybar successfully created${Reset}" 
	fi

	mkdir $HOME/.config/ranger
	if [[ $? -ne 0 ]]
		then echo -e "${BIRed}Error .config/ranger was not created${Reset}" 
		else echo -e "${BIGreen}.config/ranger successfully created${Reset}" 
	fi

fi

ln -sf $SCRIPT_PWD_DIR\config/i3/config $HOME/.config/i3/config
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.config/i3/config error create simlink${Reset}" 
	else echo -e "${BIGreen}.config/i3/config create simlink${Reset}" 
fi

#i3 lock scripts
ln -sf $SCRIPT_PWD_DIR\config/i3_locker/lock.sh $HOME/.config/i3_locker/lock.sh
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.config/i3_locker/lock.sh error create simlink${Reset}" 
	else echo -e "${BIGreen}.config/i3_locker/lock.sh create simlink${Reset}" 
fi
ln -sf $SCRIPT_PWD_DIR\config/i3_locker/locker.sh $HOME/.config/i3_locker/locker.sh
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.config/i3_locker/locker.sh error create simlink${Reset}" 
	else echo -e "${BIGreen}.config/i3_locker/locker.sh create simlink${Reset}" 
fi

#kitty config file
ln -sf $SCRIPT_PWD_DIR\config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.config/kitty/kitty.conf error create simlink${Reset}" 
	else echo -e "${BIGreen}.config/kitty/kitty.conf create simlink${Reset}" 
fi

#neofetch config file
ln -sf $SCRIPT_PWD_DIR\config/neofetch/config.conf $HOME/.config/neofetch/config.conf
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.config/neofetch/config.conf error create simlink${Reset}" 
	else echo -e "${BIGreen}.config/neofetch/config.conf create simlink${Reset}" 
fi

#polybar config files

ln -sf $SCRIPT_PWD_DIR\config/polybar/config $HOME/.config/polybar/config
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.config/polybar/config error create simlink${Reset}" 
	else echo -e "${BIGreen}.config/polybar/config create simlink${Reset}" 
fi
ln -sf $SCRIPT_PWD_DIR\config/polybar/launch.sh $HOME/.config/polybar/launch.sh
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.config/polybar/launch.sh error create simlink${Reset}" 
	else echo -e "${BIGreen}.config/polybar/launch.sh create simlink${Reset}" 
fi

#ranger config file
ln -sf $SCRIPT_PWD_DIR\config/ranger/rc.conf $HOME/.config/ranger/rc.conf
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.config/ranger/rc.conf error create simlink${Reset}" 
	else echo -e "${BIGreen}.config/ranger/rc.conf create simlink${Reset}" 
fi

#conky config file
ln -sf $SCRIPT_PWD_DIR\conky $HOME/.conky
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.conky error create simlink${Reset}" 
	else echo -e "${BIGreen}.conky create simlink${Reset}" 
fi

#startup files
ln -sf $SCRIPT_PWD_DIR\conky/startup.sh $HOME/.local/bin/startup-conky
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.local/bin/startup-conky error create simlink${Reset}" 
	else echo -e "${BIGreen}.local/bin/startup-conky create simlink${Reset}" 
fi

ln -sf $SCRIPT_PWD_DIR\config/polybar/launch.sh $HOME/.local/bin/statusbar
if [[ $? -ne 0 ]]
	then echo -e "${BIRed}.config/polybar/launch.sh error create simlink${Reset}" 
	else echo -e "${BIGreen}.config/polybar/launch.sh create simlink${Reset}" 
fi
