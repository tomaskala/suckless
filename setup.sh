#!/bin/sh
set -euf


die() {
  printf '%s\n' "$1" >&2
  exit 1
}


if ! command -v make > /dev/null; then
  die "Make is not installed."
fi

sudo make -C ./dwm clean install
sudo make -C ./dmenu clean install
sudo make -C ./slstatus clean install
sudo make -C ./st clean install
sudo make -C ./slock clean install
sudo make -C ./pinentry-dmenu clean install

ln -fs "$(pwd)/xprofile" ~/.config/xprofile
ln -fs "$(pwd)/xinitrc" ~/.config/xinitrc
