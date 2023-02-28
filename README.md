# Graphical Arch Repair Tool (G.A.R.T)

<br/>

Graphical Arch Installation medium using i3wm

This image is used in IT & Networking classes at College Montmorency, as an alternative to the previously thought `Hiren's Boot` 

<br/>


### Usage docs are provided [here](./USAGE.md)

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

* networkmanager
* neofetch
* net-tools
* git
* htop
* feh
* i3
* xorg-server
* xorg-xinit
* xterm
* dmenu
* firefox
* xfce4-terminal
* picom
* ttf-hack
* ddrescue
* wireshark-cli
* ffmpeg
* tree
* speedtest-cli
* base-devel
* unzip

<br/>

### Build
A pre-built `iso` file is provided [here](https://github.com/matiasvlevi/garchiso/releases) however if you prefer building the file yourself, follow the next step.

This will create an `iso` file in the build directory
```
mkarchiso -v -w ./ -o ./build ./
```
for more information see the [Arch wiki](https://wiki.archlinux.org/title/archiso)'s page on the archiso

You can also find a prebuilt `iso` file in the releases

### Adding a persistent storage partition

specify your archiso device

```
source ./make_storage.sh /dev/sdX
```

this will create a partition that will be mounted in `/run/archiso/storage` once the archiso boots up.

4G of cowspace is also mounted to allow for other packages to be installed.
