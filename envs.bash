#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cd ${HOME}

sudo apt install -y \
    libffi-dev \
    zlib1g-dev \
    libreadline-dev \
    libbz2-dev \
    libsqlite3-dev \
    libssl-dev

git clone https://github.com/rbenv/rbenv.git .rbenv
git clone https://github.com/pyenv/pyenv.git .pyenv
git clone https://github.com/nodenv/nodenv.git .nodenv
git clone https://github.com/syndbg/goenv.git .goenv

. "${SCRIPT_DIR}/settings.sh"

git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build
