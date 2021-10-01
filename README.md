# Suckless

My X-based environment setup.


## Setup

* Run the `setup.sh` installation script after installing the dependencies
  listed below.
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


## X

```
$ sudo pacman -S xorg-server xorg-xinit xorg-xprop xorg-util-macros xcompmgr
  
```
* [backlight_control](https://aur.archlinux.org/packages/backlight_control/)
* [libxft-bgra](https://aur.archlinux.org/packages/libxft-bgra/)


## Pulseaudio
```
$ sudo pacman -S pulseaudio pulseaudio-alsa pamixer
```


## Utilities

```
$ sudo pacman -S feh xorg-xrandr arandr libnotify dunst maim xclip
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


## pinentry-dmenu

```
$ sudo pacman -S libassuan libconfig gpgme
```


## Dotfiles

Add the following configuration to the following files.

* `~/.bash_profile`
  ```
  export TERMINAL='st'
  export XINITRC="${HOME}/.config/xinitrc"

  ### Start the X server on the user's tty if not already running.
  if [ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg > /dev/null; then
    exec startx "${XINITRC}"
  fi
    ```
* `~/.gnupg/gpg-agent.conf`
  ```
  pinentry-program /usr/local/bin/pinentry-dmenu
  ```
* `~/.config/tmux/tmux.conf`
  ```
  bind -T copy-mode-vi y   send -X copy-pipe-and-cancel "xclip -in -selection clipboard"
  ```
