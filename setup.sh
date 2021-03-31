#!/usr/bin/bash
#sudo apt update
#sudo apt install apt-transport-https curl gnupg
#curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
#echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
#sudo echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#sudo apt update
#sudo apt-get install docker-ce docker-ce-cli containerd.io
#sudo groupadd docker
#sudo usermod -aG docker $USER
#sudo usermod -aG dialout $USER
#sudo apt install brave-browser
#sudo apt-add-repository ppa:agornostal/ulauncher
#sudo apt install neovim xclip firefox unzip unrar ranger  git ncdu tree tmux htop zsh i3 i3blocks thunar tumbler lxappearance blender gimp firefox build-essential avrdude gcc gdb llvm filezilla mpv ulauncher hexchat irssi baobab mpd ncmpcpp mpc libreoffice krita kicad kicad-doc-en kicad wine winetricks ulauncher hexedit feh neofetch openssh-server bleachbit baobab scrot ffmpeg vlc handbrake pandoc gcompris childsplay scratch darktable rawtherapee inkscape rsync filezilla audacity clamav a52dec faac flac jasper lame wavpack x264 thunderbird p7zip unrar tar conky transmission kodi arduino python3-pandas python3-numpy python3-matplotlib python3-ipdb rtorrent python3-mpd 
#sudo apt install cura unclutter compton blueman rxvt-unicode fish parcellite nitrogen openbox obconf
#mkdir -p $HOME/mpd/playlists
#chsh -s $(which zsh)
#sudo snap install freecad
#unset ZSH
#git clone https://github.com/fcourchesne/dotfiles $HOME/.dotfiles
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
mv $HOME/.zshrc $HOME/.zshrc.backup
ln -s $HOME/.dotfiles/.zshrc.main $HOME/.zshrc
source $HOME/.zshrc
export WINEARCH=win32
export WINEPREFIX=$HOME/.wine32
winetricks corefonts gecko
#if [ -d "$HOME/.vim" ]
#then
#	mv $HOME/.vim $HOME/.vim.backup
#	echo ".vim directory already existed, copied it to .vim.backup"
#fi
#git clone https://github.com/fcourchesne/vim.git $HOME/.vim
#mkdir -p $HOME/.vim/{backup,swap}
#ln -s $HOME/.vim/.vimrc.complete $HOME/.vimrc
#mkdir -p $HOME/.config/nvim
#ln -s $HOME/.vim/.vimrc.complete $HOME/.config/nvim/init.vim
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
#nvim -c "PlugInstall | quit | qa!"

read -p "Is this a VM? (y/N)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	# A VM
	read -p "Is this a qemu VM? (y/N)" -n 1 -r
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt install qemu-guest-agent
	else
		read -p "Is this a Virtualbo VM? (y/N)" -n 1 -r
		echo
		if [[ $REPLY =~ ^[Yy]$ ]]
		then
			sudo apt install virtualbox-guest-utils
		else
			echo "Unsupported virtualization guest utilities"
		fi
	fi
else
	# Not a VM
	echo "This is not a VM"
	sudo apt install virtualbox virtualbox-guest-utils
fi


read -p "Is this a NVIDIA gpu? (y/N)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo apt install nvidia-driver-460 #Keep up to date manually... Up to date as of 2021-04-01
fi

#vlc &
#ulauncher &
#docker build -t basic_python .
#docker run basic_python
#sudo apt install node-typescript python3-pip obs-studio
#sudo pip3 install youtube-dl 
wget https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-20210310.flatpak $HOME/Downloads/
TODO:.... run flatpack



echo "There is a bug, run winetricks..."


#wget https://ltspice.analog.com/software/LTspiceXVII.exe ltspice.exe
#WINEARCH=win32 WINEPREFIX=~/.WIN32 wine ltspice.exe
#rm ltspice.exe
#LTSpice & # alias in zshrc
# TODO: sudo snap install --edge calibre
# TODO: python-plotly
# TODO: python-request
# TODO: install bitwarden
# TODO: Jupyterlab
# TODO: Topor
# TODO: Enspire
# TODO: Audiobook player
# TODO: Best ebook reader
# TODO: Best pdf reader
# TODO: brave
# TODO: nordvpn
# TODO: chirp https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-20210310.flatpak
# TODO: KDE Edu suite
# TODO: Gnome-dictionary
# TODO: Milton
#netstat 
#prezentare 
#obs-studio
#cinelerra 
#python3-postgres
#insync
#plank
# https://www.youtube.com/watch?v=fnnXa-nV-jc
# https://www.youtube.com/watch?v=ClrSp36GSho
# https://www.youtube.com/watch?v=6chA0L_AT6k
# https://www.youtube.com/watch?v=a5cvg9XKEL8
# https://www.youtube.com/watch?v=j3koOJRUWCc&t=350s
# straberry
# zsnes
# kdenlive
# signal
