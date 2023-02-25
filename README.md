# Suckless

My X-based environment setup.


## Setup

* Run the `setup.sh` installation script after installing the dependencies
  listed below.


## Environment

```
# pacman -S xorg-server xorg-xinit xorg-xprop i3-wm i3lock
```
* [backlight_control](https://aur.archlinux.org/packages/backlight_control/)


## Pipewire
```
# pacman -S pipewire pipewire-pulse pamixer
```


## Utilities

```
# pacman -S feh xorg-xrandr arandr libnotify dunst maim xclip
```


## i3lock

* Put the following into the `/etc/X11/xorg.conf` file to make sure a locked
  screen cannot be bypassed by switching VTs or killing the X server.
  ```
  Section "ServerFlags"
      Option "DontVTSwitch" "True"
      Option "DontZap"      "True"
  EndSection
  ```
