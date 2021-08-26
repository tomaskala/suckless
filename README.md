# suckless tools

My build of the suckless tools.

## Setup

* Run the `setup.sh` installation script after installing the dependencies
  listed below.


## x

```
$ sudo pacman -S xorg-server xorg-xinit xorg-xprop xorg-util-macros
```
* [backlight_control](https://aur.archlinux.org/packages/backlight_control/)
* [libxft-bgra](https://aur.archlinux.org/packages/libxft-bgra/)


## slock

* Put the following into the `/etc/X11/xorg.conf` file to make sure a locked
  screen cannot be bypassed by switching VTs or killing the X server.
  ```
  Section "ServerFlags"
      Option "DontVTSwitch" "True"
      Option "DontZap"      "True"
  EndSection
  ```


## pinentry-dmenu

```
$ sudo pacman -S libassuan libconfig gpgme
```
