# nvim-dotfiles
Duk's Configuration for NeoVim (Nightly)

## Prerequisites

1. NeoVim Nightly
2. Node.js
3. Unix based system (Windows isn't compatible a lot of the plugins)
4. LuaJit (optional)

## Commands to run before pasting config 

First of all, you need **vim-plug** installed. To install it run this command:

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

```

To install NeoVim nightly, head over to [this link](https://github.com/neovim/neovim) and follow the instructions given on the page.

## How to use the config

1. Download the .zip file from the releases tab
2. Extract all of it, and make a directory called `.config` and `nvim`. The path should look like this: `~/.config/nvim`
3. Move all the files and folders inside the `nvim` directory.

## Post pasting config instructions

1. On the command line, run `nvim`. Ignore any errors it throws up
2. After you have entered the environment, run `:PlugInstall`
3. After all plugins have been installed, use `:q` to exit
4. Run `nvim` again, and run `:TSUpdate`
5. Now, check if there are any extra errors popping up. If there are some unintended errors, make a pull request
6. Enjoy!

## Adding features

You can add features by your own by modifying the `.rc.vim` or `.vim` files. An in-depth **wiki** will be made soon!
Till then, you can make a pull request for adding more language servers/plugins.


