# Arch linux Setup

```
pacman -S --needed - < pkglist.txt
``` 
installs all the packages <br>
- https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Install_packages_from_a_list

# Suckless Software
all the suckless software is prepatched and preconfigured as minimally as posible with no uneccisary bloat

## patch list

| # dwm | # st | # dmenu |
| --- | --- | --- |
| fillgaps | alpha | center |
| statuscmd | scrollback |

- https://suckless.org

each program must be made using
```
sudo make install
```

## File locations
dwmblocks-async looks for the scripts in **~/.local/bar** and
<br>
the source directory is also meant to go in **~/.local/** but can go anywhere

## auto script/untested
running setup.sh automates this installing process but is untested currently

# Setup for Hp-Victus Laptop

* Nvidia problems with sleeping

Nvidia has issues with laptop sleeping on some models which can be fixed with putting the following <br>
```
options nvidia NVreg_PreserveVideoMemoryAllocations=1
options nvidia NVreg_TemporaryFilePath=/var/tmp
```
in **/etc/default/grub** or **/etc/modprobe.d** which solves the issue thanks to theese 2 links

- https://www.reddit.com/r/hyprland/comments/1cyb0h7/hibernate_on_nvidia/
- https://wiki.archlinux.org/title/NVIDIA/Tips_and_tricks#Preserve_video_memory_after_suspend

you can also just disable sleeping using nvidia
```
systemctl disable nvidia-suspend.service
systemctl disable nvidia-hibernate.service
systemctl disable nvidia-resume.service
```
