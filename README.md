# suckless tools

## Setup

* Run the `setup.sh` installation script after installing the dependencies
  listed below.


## x

```
$ sudo pacman -S xorg-server xorg-xinit xorg-xprop xorg-util-macros
```


## st

* Install [libxft-bgra](https://aur.archlinux.org/packages/libxft-bgra/) to
  correctly display color emoji (BGRA glyphs).


## slock

* If your system does not define the `nobody` user or the `nogroup` group,
  change the respective values of the `user` and `group` variables in the
  config file to the dummy user and/or group defined by your system.
* Put the following into the `/etc/X11/xorg.conf` file to make sure a locked
  screen cannot be bypassed by switching VTs or killing the X server.
  ```
  Section "ServerFlags"
          Option "DontVTSwitch" "True"
          Option "DontZap"      "True"
  EndSection
  ```


## pinentry-dmenu

* Install dependencies.
  ```
  $ sudo pacman -S libassuan libconfig gpgme
  ```
