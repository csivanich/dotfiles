dotfiles
========

My personal configuration repository containing most customized home folder dotfiles.
As of right now, this is a proof of concept. The colors/configs aren't complete yet, but will be soon!

Contents
-----

### General:
- [solarized](https://github.com/altercation/solarized)

### Zsh:
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### Vim:
- [gruvbox](https://github.com/morhetz/gruvbox)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [syntastic](https://github.com/scrooloose/syntastic)
- [vim-airline](https://github.com/bling/vim-airline)
- [powerline-fonts](https://github.com/Lokaltog/powerline-fonts)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-pathogen](https://github.com/tpope/vim-pathogen)
- [vim-sensible](https://github.com/tpope/vim-sensible)
- [vim-signify](https://github.com/mhinz/vim-signify)
- [php.vim](https://github.com/StanAngeloff/php.vim)

Install
-----

First clone the repo:
```
git clone https://github.com/csivanich/dotfiles.git --recursive

OR

git clone https://github.com/csivanich/dotfiles.git
cd dotfiles
git submodules init
git submodules update

```

The easiest way to install everything is to move the dotfiles you wish to replace and link in the new versions:

```
mv <config> <config>.old
ln -sv path/to/dotfiles/user/.* . 
```

There will be a helpful tool for this eventually, however, it's not quite ready for prime time.
