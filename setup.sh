#!/bin/bash
#
# HP-victus arch setup
#
# please run as root
#
# installs programs
pacman -S --noconfirm --needed - < pkglist.txt
git clone https://github.com/MultiMC/multimc-pkgbuild.git
cd multimc-pkgbuild
makepkg --noconfirm -si

# move files to correct locations and make them
mkdir ~/.local/source ~/.local/bar
mv source/dwm source/dmenu source/st source/dwmblocks-async ~/.local/source
cd ~/.local/source/dwm
make install
cd ~/.local/source/dmenu
make install
cd ~/.local/source/st
make install
cd ~/.local/source/dwmblocks-async
make install

# fix nvidia sleep not working
echo "options nvidia NVreg_PreserveVideoMemoryAllocations=1" >> /etc/default/grub
echo "options nvidia NVreg_TemporaryFilePath=/var/tmp" >> /etc/default/grub
