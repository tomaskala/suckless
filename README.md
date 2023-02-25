# Suckless

My X-based environment setup.


## Setup

* Run the `setup.sh` installation script after installing the dependencies
  listed below.


## Environment

```
# pacman -S xorg-server xorg-xinit xorg-xprop xorg-util-macros xcompmgr
```
* [backlight_control](https://aur.archlinux.org/packages/backlight_control/)
* Put the following inside `/etc/X11/xorg.conf.d/90-touchpad.conf` to configure
  the touchpad.
  ```
  Section "InputClass"
      Identifier "touchpad"
      MatchIsTouchpad "on"
      Driver "libinput"
      Option "Tapping" "on"
      Option "NaturalScrolling" "on"
  EndSection
  ```


## Pipewire
```
# pacman -S pipewire pipewire-pulse pamixer
```


## Utilities

```
# pacman -S feh xorg-xrandr arandr libnotify dunst maim xclip
```


## slock

* Put the following into the `/etc/X11/xorg.conf` file to make sure a locked
  screen cannot be bypassed by switching VTs or killing the X server.
  ```
  Section "ServerFlags"
      Option "DontVTSwitch" "True"
      Option "DontZap"      "True"
  EndSection
  ```
