# mReschke Custom VIM

All new custom and OS agnostic vim configuration with vim-plug


## Installation

If you are part of the mreschke family, then simply use `manup install vimrc`...you'll know what that means.

Everyone else, just clone this repo into your ~/.vim folder, open vim and run `:PlugInstall`, done!


## Manup Sources

This is for mreschke only while packaging manup sources.

All of the vim-plug plugins in `plugged` directory are git submodules, so they are not included when you clone git.  For manup I want the `plugged` directory fully populated which means after I `git pull` I need to open actual vim with this actual manup vim folder and run `:PlugInstall`, then do a manup `./package`.  Thus my `linstore` `~/.vim` is a symlink into the actual manup sources.  So simply `git pull` form the manup source dir then open vim on `linstore` and run `:PlugInstall`, then './package'...

