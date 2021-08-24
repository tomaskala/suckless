# suckless tools

## Setup

* Install dependencies.
  ```
  $ sudo dnf install libX11-devel libXft-devel libXinerama-devel libXrandr-devel
  ```
* Run the `setup.sh` installation script.


## st

* Install the `symbola` font to make `st` work with emoji characters. Needed
  due to the `black` Python formatter printing out a cake symbol when finished.
  * `$ sudo dnf install gdouros-symbola-fonts`


## slock

* If your system does not define the `nobody` user or the `nogroup` group,
  change the respective values of the `user` and `group` variables in the
  config file to the dummy user and/or group defined by your system.
* Put the following into the `/etc/X11/xorg.conf` file or inside the
  `/etc/X11/xorg.conf.d/` directory to make sure a locked screen cannot be
  bypassed by switching VTs or killing the X server.
  ```
  Section "ServerFlags"
          Option "DontVTSwitch" "True"
          Option "DontZap"      "True"
  EndSection
  ```


## pinentry-dmenu

* Install dependencies.
  ```
  $ sudo dnf install libassuan-devel libconfig-devel gpgme-devel
  ```
