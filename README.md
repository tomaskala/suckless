# Suckless

My X-based environment setup.


## Setup

- Run the `setup.sh` installation script after installing the dependencies
  listed below.
- Put the following inside `/etc/X11/xorg.conf.d/90-touchpad.conf` to configure
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


## Environment

```
# pacman -S xorg-server xorg-xinit xorg-xprop i3-wm i3status i3lock
```
- [backlight_control](https://aur.archlinux.org/packages/backlight_control/)


## Pipewire
```
# pacman -S pipewire pipewire-pulse wireplumber
```


## Utilities

```
# pacman -S feh xorg-xrandr arandr libnotify dunst maim rofi xclip zathura zathura-djvu zathura-ps zathura-pdf-mupdf
```


## i3lock

- Put the following into the `/etc/X11/xorg.conf` file to make sure a locked
  screen cannot be bypassed by switching VTs or killing the X server, and to
  disable the annoying system beeps.
  ```
  Section "ServerFlags"
      Option "DontVTSwitch" "True"
      Option "DontZap"      "True"
      Option "NoBeep"       "True"
  EndSection
  ```
