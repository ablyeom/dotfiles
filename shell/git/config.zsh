if [[ "$TERM" != "dumb" ]]; then
  zplugin ice wait"2" lucid as"program" pick"bin/git-dsf"; zpl light zdharma/zsh-diff-so-fancy
  zplugin ice wait"2" lucid as"program" pick"bin/git-*"; zpl light tj/git-extras
fi
