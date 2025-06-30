# install

git clone this repository

# usage
link your config path

Change to the dotfiles directory and run the following commands:

```
ln -s "$(pwd)/fish_prompt.fish" ~/.config/fish/functions/fish_prompt.fish
ln -s "$(pwd)/ide" ~/.shellscript/ide
ln -s "$(pwd)/dein_lazy.toml" ~/.config/nvim/dein_lazy.toml
ln -s "$(pwd)/dein.toml" ~/.config/nvim/dein.toml
ln -s "$(pwd)/init.vim" ~/.config/nvim/init.vim
ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf
ln -s "$(pwd)/.hyper.js" ~/.hyper.js
ln -s "$(pwd)/config.fish" ~/.config/fish/config.fish
```

Or simply run `./link.sh`.
