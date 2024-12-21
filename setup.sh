#!/user/bin/env bash

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do         
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

git clone --recurse-submodules https://github.com/belak/prezto-contrib $ZPREZTODIR/contrib
git clone https://github.com/Aloxaf/fzf-tab $ZPREZTODIR/contrib/fzf-tab 