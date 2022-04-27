#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "bat installer"

if [[ "$DOTFILES_TYPE" == "archlinux" ]]; then
  bash $__dir/install/pacman.sh
fi
