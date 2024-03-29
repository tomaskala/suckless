#!/bin/sh
set -eu

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

sudo make -C ./st clean install

for dotfiles_source in .*; do
  if [ "${dotfiles_source}" = '.' ] \
    || [ "${dotfiles_source}" = '..' ] \
    || [ "${dotfiles_source#.git}" != "${dotfiles_source}" ]; then
    continue
  fi

  find "${dotfiles_source}" -type f | sort | while read -r dotfile; do
    install_dotfile "${dotfile}"
  done
done
