#!/usr/bin/bash
ORIGINAL_DIR=$(pwd)
read -p "Make sure that you have the SSH key installed on this machine before proceeding (in ~/.ssh)" -n1 -s
# mkdir -p $HOME/.bin
cd $HOME/Downloads
# sudo pkcon refresh && sudo pkcon update
# sudo apt install apt-transport-https curl gnupg
# curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
# echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
# sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# sudo echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo pkcon refresh && sudo pkcon update
# sudo apt-get install docker-ce docker-ce-cli containerd.io
# sudo groupadd docker
# sudo usermod -aG docker $USER
# sudo usermod -aG dialout $USER
# sudo apt-add-repository ppa:agornostal/ulauncher
# sudo add-apt-repository ppa:apandada1/foliate
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ACCAF35C
# sudo touch '/etc/apt/sources.list.d/insync.list'
# sudo echo 'deb http://apt.insync.io/ubuntu groovy non-free contrib' | sudo tee -a '/etc/apt/sources.list.d/insync.list'
# sudo echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
# wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
# wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
# sudo mv signal-desktop-keyring.gpg /usr/share/keyrings/
# sudo echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
# sudo add-apt-repository ppa:team-xbmc/ppa
# sudo pkcon refresh && sudo pkcon update
# sudo apt install brave-browser software-properties-common wget neovim xclip unzip unrar ranger  git ncdu tree tmux htop zsh i3 i3blocks thunar tumbler lxappearance blender gimp firefox build-essential avrdude gcc gdb llvm filezilla mpv ulauncher hexchat irssi weechat mpd ncmpcpp mpc libreoffice krita cmake kicad-doc-en kicad wine winetricks ulauncher hexedit feh neofetch openssh-server bleachbit filelight scrot ffmpeg vlc handbrake pandoc gcompris childsplay scratch darktable rawtherapee
# sudo apt install inkscape okular rsync filezilla audacity lmms clamav clamtk a52dec faac flac jasper lame wavpack x264 thunderbird p7zip unrar tar conky kodi arduino
#sudo apt install vsftpd sudo apt unclutter compton blueman rxvt-unicode fish parcellite nitrogen openbox obconf keychain adb fastboot node-typescript obs-studio fbreader flameshot remmina remmina-plugin-spice tigervnc-standalone-server kubuntu-driver-manager libreoffice-kde kubuntu-restricted-extras gufw ktorrent yakuake speedcrunch kfind redshift plasma-applet-redshift-control llvm lldb ripgrep docker-ctop signal-desktop kdenlive picard usb-creator-kde timeshift aria2 stacer wireshark aircrack-ng radare2 radare2-cutter nmap virt-manager openscad foliate dictd dict dict-gcide dict-wn dict-jargon dict-foldoc digikam artha insync golang plank 
#sudo apt install python python-setuptools python3-pandas python3-numpy python3-matplotlib python3-ipdb rtorrent python3-mpd python3-virtualenv python3-psycopg2 python3-pip python3-notebook python3-plotly python3-requests python3-postgresql jupyter
#sudo pip3 install youtube-dl 
# sudo apt install gerbv
# sudo snap install typora
# sudo snap install joplin-desktop
# sudo snap install dolphin-emulator
# sudo snap install bitwarden
#sudo snap install todoist
# sudo snap install --classic code
# mkdir -p $HOME/.mpd/playlists
# chsh -s $(which zsh)
# sudo snap install freecad 
# unset ZSH
# git clone git@github.com:fcourchesne/dotfiles $HOME/.dotfiles
# sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# mv $HOME/.zshrc $HOME/.zshrc.backup
# bash ~/.dotfiles/install.sh
# source $HOME/.zshrc
# WINEARCH=win32 WINEPREFIX=$HOME/.wine32 winetricks corefonts
# WINEARCH=win64 WINEPREFIX=$HOME/.wine64 winetricks corefonts
# if [ -d "$HOME/.vim" ]
# then
# 	mv $HOME/.vim $HOME/.vim.backup
# 	echo ".vim directory already existed, copied it to .vim.backup"
# fi
# git clone https://github.com/fcourchesne/vim.git $HOME/.vim
# mkdir -p $HOME/.vim/{backup,swap}
# ln -s $HOME/.vim/.vimrc.complete $HOME/.vimrc
# mkdir -p $HOME/.config/nvim
# ln -s $HOME/.vim/.vimrc.complete $HOME/.config/nvim/init.vim
# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# nvim -c "PlugInstall | quit | qa!"

#  read -p "Is this a VM? (y/N)" -n 1 -r
#  echo
#  if [[ $REPLY =~ ^[Yy]$ ]]
#  then
#  	# A VM
#  	read -p "Is this a qemu VM? (y/N)" -n 1 -r
#  	echo
#  	if [[ $REPLY =~ ^[Yy]$ ]]
#  	then
#  		sudo apt install qemu-guest-agent
#  	else
#  		read -p "Is this a Virtualbo VM? (y/N)" -n 1 -r
#  		echo
#  		if [[ $REPLY =~ ^[Yy]$ ]]
#  		then
#  			sudo apt install virtualbox-guest-utils
#  		else
#  			echo "Unsupported virtualization guest utilities"
#  		fi
#  	fi
#  	sudo apt install virt-manager
# 	echo "todo install qemu host utils"
#  else
#  	# Not a VM
#  	echo "This is not a VM"
#  	sudo apt install virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso
#  fi


#  read -p "Is this a NVIDIA gpu? (y/N)" -n 1 -r
#  echo
#  if [[ $REPLY =~ ^[Yy]$ ]]
#  then
#  	sudo apt install nvidia-driver-460 #Keep up to date manually... Up to date as of 2021-04-01
#  fi

# vlc &
# ulauncher &
# docker build -t basic_python .
# docker run basic_python
# docker pull postgres
# docker pull dpage/pgadmin4
# docker pull nextcloud
# docker pull homeassistant/home-assistant:stable

# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# cargo install cargo-watch
# cd $ORIGINAL_DIR/vscode_samples/rust/
# code .
# cd $ORIGINAL_DIR/vscode_samples/python/
# code .
# cd $ORIGINAL_DIR/vscode_samples/html/
echo "TODO: configure vscode for GO"
# code .
# echo ''
# echo ''
# read -p "Now install the Sync extension for Vscode...Load extensions, and relaunch. Then hit a key to continue" -n1 -s

# cd $HOME/Downloads
# sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
# sudo nordvpn set dns 1.1.1.1 1.0.0.1
# sudo nordvpn whitelist add subnet 192.168.0.0/16
# sudo nordvpn set notify on
# sudo nordvpn login
# sudo nordvpn whitelist add port 22
# sudo usermod -aG nordvpn $USER

# wget https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip
# unzip exa-linux-x86_64-0.9.0.zip
# sudo mv $HOME/Downloads/exa-linux-x86_64 /usr/bin/exa
# sudo chmod +x /usr/bin/exa
# rm $HOME/Downloads/exa-linux-x86_64*

# wget https://github.com/sharkdp/bat/releases/download/v0.18.0/bat-musl_0.18.0_amd64.deb
# sudo dpkg -i bat-musl_0.18.0_amd64.deb
# rm bat-musl_0.18.0_amd64.deb

# sudo pkcon refresh
# sudo systemctl disable vsftpd
# sudo systemctl stop vsftpd
# curl https://cht.sh/:cht.sh > $HOME/.bin/cht.sh
# chmod +x ~/.bin/cht.sh
# cht.sh --standalone-install
# wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso
# wget https://www.spice-space.org/download/windows/spice-guest-tools/spice-guest-tools-latest.exe
# wget https://www.spice-space.org/download/windows/spice-webdavd/spice-webdavd-x86-latest.msi

# wget https://download.nomachine.com/download/7.4/Linux/nomachine_7.4.1_1_amd64.deb
# sudo dpkg -i $HOME/Downloads/nomachine_7.4.1_1_amd64.deb
printf "TODO: Add on USB key with this VM image: nomachine, iso drivers for qemu, nvidia driver, amd driver\n"

# insync start &
# flameshot&
# ubuntu-drivers &
# echo ''
# read -p "Log in Firefox and install desired addons" -n1 -s
# echo ''
# firefox &
# echo ''
# read -p "Now log in signal and close after" -n1 -s
# echo ''
# signal-desktop &
# echo ''
# read -p "Now start Digikam and finish the setup; it will download engines for image detection" -n1 -s
# echo ''
# digikam
# echo ''
# read -p "Gcompris will now download some assets" -n1 -s
# echo ''
# gcompris-qt
# read -p "Setup Kodi now; install necessary plugins" -n1 -s
# echo ''
# kodi
# echo ''
# read -p "Log into Bitwarden now" -n1 -s
# echo ''
# bitwarden

# wget https://trac.chirp.danplanet.com/chirp_daily/daily-20210406/chirp-daily-20210406.flatpak
# flatpak install chirp-daily-20210406.flatpak




# docker portainer
# straberry
# zsnes
# fc-cache
# jupyter
#golang & delve
# gvim
# freetube
# signal
# sudo apt install calibre-bin
# ssh keys
# ytop
# bandwhich
# procs
# dust
# starship.rs

echo "TODO: removed dunst, test i3 is ok"
echo "TODO: Install ltspice and saturn pcb on a windows VM"
