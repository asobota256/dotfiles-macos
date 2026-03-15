#!/bin/sh

FILES=".zshrc
       .gitconfig
       .vimrc"

DIRS=".vim/after/ftplugin
      .vim/after/syntax"

REPO=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)

link() {
  file=$1
  ln -sfv "${REPO}/${file}" "${HOME}/${file}"
}

for file in ${FILES}; do
  link "${file}"
done

for dir in ${DIRS}; do
  mkdir -p "${HOME}/${dir}"
  #ln -sfv "${REPO}/${dir}/"* "${HOME}/${dir}/"
  for file in "${REPO}/${dir}/"*; do
    name=$(basename -- "${file}")
    link "${dir}/${name}"
  done
done
