dotfiles
========

Configuration repository containing most customized home folder dotfiles.

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
