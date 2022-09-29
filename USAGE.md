# Common Usage Docs

### Launch apps

`super + d` macro opens up an application menu

(`super` key is the `win` key on most keyboards)

### Wipe a drive

Scan disks with lsblk

```
lsblk
```

Wipe the desired drive

replace `sdX` with the desired device

```
wipefs -a /dev/sdX
```

<br/><br/><br/>



### Become root of an other drive 

mount the root system partition

```
mount /dev/sdX /mnt
```

change root to the mounted partition

```
arch-chroot /mnt
```


<br/><br/><br/>

### List connected devices (Hardware level)

```
lspci
```


<br/><br/><br/>

### Shutdown utils

shutdown
```
shutdown now
```

reboot
```
reboot
```

or use the `super + tab` macro to open a shutdown menu

<br/><br/><br/>

### Scan network

You can scan a network by providing an IP and a Range

```
nmap X.X.X.X/X
```

<br/><br/><br/>
