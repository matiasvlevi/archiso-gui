# Archiso-GUI

Graphical Arch Installation medium using i3wm
<br/>

<p align="center">
<img src="https://i.imgur.com/ufqnB40.jpg" width="520px"/>
<img src="https://i.imgur.com/toDyXXI.jpg" width="520px"/>
</p>

<br/>

### i3wm Macros

| Macro                  | Function                       |
|------------------------|--------------------------------|
| Super + t              | Open a terminal emulator       |
| Super + d              | Open application launcher      |
| Super + f              | fullscreen window              |
| Super + Shift + Space  | Float window                   |
| Super + Arrows         | Change window focus            |
| Super + Shift + Arrows | Move windows                   |
| Super + r              | Resize windows with arrow keys |
| Super + Shift + x      | Close window                   |

##### The following packages were added

* neofetch
* git
* feh
* i3
* xorg-server
* xorg-xinit
* dmenu
* xterm
* firefox
* xfce4-terminal
* net-tools
* htop 
* picom
* ttf-fira-code

<br/>

### Build
A pre-built `iso` file is provided [here](https://github.com/matiasvlevi/garchiso/releases) however if you prefer building the file yourself, follow the next step.

This will create an `iso` file in the build directory
```
mkarchiso -v -w ./ -o ./build ./
```
for more information see the [Arch wiki](https://wiki.archlinux.org/title/archiso)'s page on the archiso

You can also find a prebuilt `iso` file in the releases
