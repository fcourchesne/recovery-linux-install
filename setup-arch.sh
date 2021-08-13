#!/usr/bin/bash
ORIGINAL_DIR=$(pwd)
read -p "Make sure that you have the SSH key installed on this machine before proceeding (in ~/.ssh)" -n1 -s
mkdir -p $HOME/.bin
mkdir -p $HOME/.mpd/playlists

cd $HOME/Downloads
sudo pacman -S git jshon
git clone https://github.com/keenerd/packer
sudo mv packer/packer /usr/bin/packer
sudo chmod +x /usr/bin/packer
sudo rm -rf packer
packer -Syyu
packer -S brave nfs-utils base-devel wget neovim gvim xclip unzip unrar ranger
packer -S git ncdu tree tmux htop zsh i3 i3blocks thunar tumbler lxappearance 
packer -S blender gimp firefox avrdude gcc gdb llvm filezilla mpv ulauncher 
packer -S hexchat irssi weechat mpd ncmpcpp mpc krita cmake kicad wine winetricks 
packer -S ulauncher hexedit feh neofetch openssh bleachbit filelight scrot ffmpeg 
packer -S vlc handbrake pandoc gcompris-qt scratch darktable rawtherapee inkscape 
packer -S okular rsync filezilla audacity lmms clamav clamtk a52dec faac flac jasper
packer -S lame wavpack x264 thunderbird p7zip unrar tar conky kodi-x11 arduino 
packer -S vsftpd unclutter picom blueman rxvt-unicode fish parcellite nitrogen 
packer -S openbox obconf keychain android-tools typescript obs-studio fbreader 
packer -S flameshot remmina libreoffice-fresh gufw ktorrent yakuake speedcrunch 
packer -S kfind redshift llvm lldb ripgrep ctop signal-desktop kdenlive picard
packer -S timeshift aria2 stacer wireshark-qt aircrack-ng radare2 nmap virt-manager 
packer -S openscad foliate dictd digikam artha insync go strawberry zsnes python 
packer -S python-setuptools python-pandas python-numpy python-matplotlib python-ipdb 
packer -S rtorrent python-mpd2 python-virtualenv python-psycopg2 python-pip python-plotly 
packer -S python-requests jupyter gerbv bpytop mupen64plus-qt dgen-sdl freecad 
packer -S visual-studio-code-bin bitwarden dolphin-emu joplin-desktop typora 
packer -S xorg-drivers xf86-input-wacom darktable chirp calibre
packer -S delve ttf-font-awesome plank freetube lbry-desktop-git docker

####### ZSH #######
chsh -s $(which zsh)
unset ZSH
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
git clone git@github.com:fcourchesne/dotfiles $HOME/.dotfiles
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
mv $HOME/.zshrc $HOME/.zshrc.backup
bash ~/.dotfiles/install.sh
source $HOME/.zshrc

####### VIM #######
if [ -d "$HOME/.vim" ]; then
    mv $HOME/.vim $HOME/.vim.backup
    echo ".vim directory already existed, copied it to .vim.backup"
fi
git clone https://github.com/fcourchesne/vim.git $HOME/.vim
mkdir -p $HOME/.vim/{backup,swap}
mkdir -p $HOME/.config/nvim
ln -s $HOME/.vim/.vimrc.complete $HOME/.vimrc
ln -s $HOME/.vim/.vimrc.complete $HOME/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim -c "PlugInstall | quit | qa!"
#####################

read -p "Is this a VM? (y/N)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
	# A VM
	read -p "Is this a qemu VM? (y/N)" -n 1 -r
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		packer -S qemu-guest-agent
        sudo systemctl enable qemu-guest-agent.service
        sudo systemctl start qemu-guest-agent.service
	else
		read -p "Is this a Virtualbo VM? (y/N)" -n 1 -r
		echo
		if [[ $REPLY =~ ^[Yy]$ ]]; then
		    packer -S virtualbox-guest-utils
		else
			echo "Unsupported virtualization guest utilities"
		fi
	fi
	packer -S virt-manager
    echo "TODO install qemu host utils"
else
	# Not a VM
	echo "This is not a VM"
	packer -S virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso
fi


read -p "Is this a NVIDIA gpu? (y/N)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "TODO Implement getting nvidia driver" #Keep up to date manually... Up to date as of 2021-04-01
fi

vlc &
ulauncher &
docker build -t basic_python .
docker run basic_python
docker pull postgres
docker pull dpage/pgadmin4
#docker pull nextcloud
#docker pull homeassistant/home-assistant:stable

#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
packer -S cargo-watch
cd $ORIGINAL_DIR/vscode_samples/rust/
code .
cd $ORIGINAL_DIR/vscode_samples/python/
code .
cd $ORIGINAL_DIR/vscode_samples/html/
code .
cd $ORIGINAL_DIR/vscode_samples/go/src/test/
code .
echo ''
echo ''
read -p "Now install the Sync extension for Vscode...Load extensions, and relaunch. Then hit a key to continue" -n1 -s

cd $HOME/Downloads
packer -S nordvpn-bin
sudo nordvpn set dns 1.1.1.1 1.0.0.1
sudo nordvpn whitelist add subnet 192.168.0.0/16
sudo nordvpn set notify on
sudo nordvpn login
sudo nordvpn whitelist add port 22
sudo usermod -aG nordvpn $USER


packer -S exa bat

curl https://cht.sh/:cht.sh > $HOME/.bin/cht.sh
chmod +x ~/.bin/cht.sh
cht.sh --standalone-install
wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso
wget https://www.spice-space.org/download/windows/spice-guest-tools/spice-guest-tools-latest.exe
wget https://www.spice-space.org/download/windows/spice-webdavd/spice-webdavd-x86-latest.msi
packer -S nomachine
printf "TODO: Add on USB key with this VM image: nomachine, iso drivers for qemu, nvidia driver, amd driver\n"

insync start &
flameshot&
plank& 
echo ''
firefox &
read -p "Log in Firefox and install desired addons" -n1 -s
echo ''
echo ''
signal-desktop &
read -p "Now log in signal and close after" -n1 -s
echo ''
digikam
read -p "Now start Digikam and finish the setup; it will download engines for image detection" -n1 -s
echo ''
echo ''
gcompris-qt
read -p "Gcompris will now download some assets" -n1 -s
echo ''
kodi
read -p "Setup Kodi now; install necessary plugins" -n1 -s
echo ''
echo ''
bitwarden-desktop
read -p "Log into Bitwarden now" -n1 -s
echo ''

packer -S bandwhich procs topgrade
cargo install ytop

docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

fc-cache -vf

WINEARCH=win32 WINEPREFIX=$HOME/.wine32 winetricks corefonts vcrun2005 vcrun2008

wget https://ltspice.analog.com/software/LTspiceXVII.exe
WINEARCH=win32 WINEPREFIX=$HOME/.wine32 wine LTspiceXVII.exe
rm LTspiceXVII.exe

wget https://www.saturnpcb.com/wp-content/Toolkit/Saturn_PCB_Toolkit_V8.04_Setup.exe
WINEARCH=win32 WINEPREFIX=$HOME/.wine32 wine Saturn_PCB_Toolkit_V8.04_Setup.exe
rm Saturn_PCB_Toolkit_V8.04_Setup.exe

packer -S libssl-dev gparted
packer -S pyside2
packer -S python-pyqt5
