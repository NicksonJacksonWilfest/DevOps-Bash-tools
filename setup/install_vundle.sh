#!/usr/bin/env bash
# shellcheck disable=SC2230
#
#  Author: Hari Sekhon
#  Date: 2020-01-03 12:14:36 +0000 (Fri, 03 Jan 2020)
#
#  https://github.com/harisekhon/devops-bash-tools
#
#  License: see accompanying LICENSE file
#
#  https://www.linkedin.com/in/harisekhon
#

# Installs Parquet Tools to local ~/bin
#
# add ~/bin/parquet-tools-* to $PATH (automatically detected and done via advanced bashrc in this repo)

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x

if ! type -P vim &>/dev/null; then
    echo "ViM not installed, aborting..."
    exit 1
fi

target=~/.vim/bundle/Vundle.vim

mkdir -pv "${target%/*}"

if ! [ -e "$target" ]; then
    git clone https://github.com/gmarik/Vundle.vim.git "$target"
fi

vim +PluginInstall +qall
