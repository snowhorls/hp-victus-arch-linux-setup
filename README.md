# Arch linux Setup

uncomment the [multilib](https://wiki.archlinux.org/title/Multilib) section in
```
/etc/pacman.conf
```

# [installing-all-packages](https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Install_packages_from_a_list)
```
pacman -S --needed - < pkglist.txt
``` 

# suckless-software
all the suckless software is installed using git clone, prepatched, and preconfigured as minimally as posible with no uneccisary bloat
```
git clone https://git.suckless.org/dwm st dmenu
```

## patch list

| dwm | st | dmenu |
| --- | --- | --- |
| [fullgaps](https://dwm.suckless.org/patches/fullgaps/) | [alpha](https://st.suckless.org/patches/alpha/) | [center](https://tools.suckless.org/dmenu/patches/center/) |
| [statuscmd](https://dwm.suckless.org/patches/statuscmd/) | [scrollback](https://st.suckless.org/patches/scrollback/) |

## making-each-program
| dwm | st| dmenu | dwmblocks-async |
| --- | --- | --- | --- |
```
sudo make install
```

## file-locations
dwmblocks-async looks for the scripts in **~/.local/bar** and
<br>
the source directory is also meant to go in **~/.local/** but can go anywhere

# remapping esc and caps
[xorg/keyboard-configuration](https://wiki.archlinux.org/title/Xorg/Keyboard_configuration#Using_X_configuration_files)
```
setxkbmap -option caps:swapescape
```

## auto script/untested
running **setup.sh** automates this installing process for the [**HP-Victus**](#Setup-for-Hp-Victus-Laptop) but is untested currently

# Setup-for-Hp-Victus-Laptop

## Nvidia problems with sleeping

Nvidia has issues with laptop sleeping on some models which can be fixed with putting the following <br>
```
options nvidia NVreg_PreserveVideoMemoryAllocations=1
options nvidia NVreg_TemporaryFilePath=/var/tmp
```
in **/etc/default/grub** or **/etc/modprobe.d** which solves the issue thanks to a smart guy on reddit i found

- [Hybernate-on-Nvidia-reddit](https://www.reddit.com/r/hyprland/comments/1cyb0h7/hibernate_on_nvidia/)
- [Nvidia-Preserve-Video-Memmory-After-Suspend-archwiki](https://wiki.archlinux.org/title/NVIDIA/Tips_and_tricks#Preserve_video_memory_after_suspend)

you can also just disable sleeping using nvidia
```
systemctl disable nvidia-suspend.service
systemctl disable nvidia-hibernate.service
systemctl disable nvidia-resume.service
```
