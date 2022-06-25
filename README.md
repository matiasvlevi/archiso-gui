# gArchiso

Graphical Arch Installation medium using i3wm
<br/>

![preview1](https://i.imgur.com/bEWuUUk.jpg)
![preview2](https://i.imgur.com/LlJLCoF.jpg)

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

<br/>

### Build
A pre-built `iso` file is provided [here](https://github.com/matiasvlevi/garchiso/releases)

This will create an `iso` file in the build directory
```
mkarchiso -v -w ./ -o ./build ./
```
for more information see the [Arch wiki](https://wiki.archlinux.org/title/archiso)'s page on the archiso

You can also find a prebuilt `iso` file in the releases
