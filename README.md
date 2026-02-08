# Arch linux Setup for HP-Victus

```
pacman -S --needed - < pkglist.txt
``` 
installs all the packages <br>
- https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Install_packages_from_a_list

# Nvidia problems with sleeping
Nvidia has issues with laptop sleeping on some laptop models which can be fixed with putting the following <br>
```
options nvidia NVreg_PreserveVideoMemoryAllocations=1
options nvidia NVreg_TemporaryFilePath=/var/tmp
```
in **/etc/default/grub** or **/etc/modprobe.d** which solves the issue thanks to theese 2 links

- https://www.reddit.com/r/hyprland/comments/1cyb0h7/hibernate_on_nvidia/
- https://wiki.archlinux.org/title/NVIDIA/Tips_and_tricks#Preserve_video_memory_after_suspend
