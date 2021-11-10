#!/bin/sh
set -eu

GLOBIGNORE=".:..:.git:.gitignore"

die() {
  printf '%s\n' "$1" >&2
  exit 1
}

install_dotfile() {
  dotfile="$1"
  dest="${HOME}/${dotfile}"

  printf 'Installing %s\n' "${dotfile}"
  mkdir -p "$(dirname "${dest}")"

  chmod go-rwx "${dotfile}"
  ln -fs "$(pwd)/${dotfile}" "${dest}"
}

if ! command -v make > /dev/null; then
  die "Make is not installed."
fi

sudo make -C ./dwm clean install
sudo make -C ./dmenu clean install
sudo make -C ./slstatus clean install
sudo make -C ./st clean install
sudo make -C ./slock clean install

for dotfiles_source in .*; do
  find "${dotfiles_source}" -type f | sort | while read -r dotfile; do
    install_dotfile "${dotfile}"
  done
done

ln -fs "$(pwd)/xprofile" ~/.config/xprofile
ln -fs "$(pwd)/xinitrc" ~/.config/xinitrc
