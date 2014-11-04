dotfiles
========

Configuration repository containing my configurations, many using Git submodules.

![Screenshot](https://imgur.com/TkOMF4v.png)

I was tired of having a bunch of configurations across all my machines, especially when trying to keep all the plugins and extras up to date. So I got fed up and threw them on GitHub. It's not perfect (yet!), but it's a great starting point for any Linux config.

These configurations are based from an Arch Linux system running i3wm and Compton + xterm/zsh, however most of the files should be usable on their own.

Releases 2.0+ provide automated install support using [dotbot](https://github.com/anishathalye/dotbot). See **Install** for instructions.

Contents
-----

#### i3 Configuration

- $mod set to Win key
- DejaVu Sans Mono 10 font
- 1px borders
- Autostarts (if installed):
  - [Compton](https://github.com/chjj/compton)
  - [Clipit](http://sourceforge.net/projects/gtkclipit/)
  - [Nitrogen](http://projects.l3ib.org/nitrogen/)
  - [Dunst](http://knopwob.org/dunst/index.html)
  - [Connman-Notify](https://github.com/wavexx/connman-notify)
  - [Synsei](https://github.com/csivanich/synsei)
  - [Xbindkeys](http://www.nongnu.org/xbindkeys/xbindkeys.html)
  - [Unclutter](http://ftp.x.org/contrib/utilities/unclutter-8.README)
  - (Disabled by default) Xautolock running `lock`
- Improved window movement between outputs (\$mod+j/k)
- Named/numbered workspaces, each with switch and move bindings
- Top hidden bar

#### X11 Configuration

- Caps Lock remapped to Escape
- Custom color scheme loosely based on solarized dark
- Default WM is `i3`
- Merges user configuration on top of solarized at startup
- NVIDIA scrolling tweaks when nvidia-settings is installed
- Xbindkeys for volume and brightness controls

#### Xterm Configuration

- Inconsolata for Powerline font - size 12 regular
- 256 color mode enabled
- UTF8 enabled
- 4096 lines saved
- Custom colors from [/u/vegetable_human](https://www.reddit.com/r/unixporn/comments/2kivlg/dwm_laptop_rice/)

#### Zshrc Configuration
- Oh-my-zsh plugin (see submodules)
    - Git plugin enabled
    - Agnoster theme
- Aliases file
- Completion waiting dots
- Custom $PATH
- $EDITOR is `vim`

#### Vim Configuration
- 4 spaced tabs
- Autocompletion always on
- Case insensitive search
- Dark background
- Global config base
- Global highlighting of search matches
- Molokai theme
- Mouse support
- NERDTree Configuration
- Numbered lines
- Rainbow Parentheses Configuration
- TAB toggles Taglist
- Tons of plugins through Pathogen
- Trailing whitespace highlighting

Dependencies
-----

#### Vim:
- [ctags](http://ctags.sourceforge.net/)(>= 5.0)

Submodules
-----

#### General:
- [dotbot](https://github.com/anishathalye/dotbot)

#### Zsh:
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

#### Vim:
- [ack.vim](https://github.com/mileszs/ack.vim)
- [automplpop](http://www.vim.org/scripts/script.php?script_id=1879)
- [ctrlp.vim](https://github.com/kien/ctrlp.vim)
- [cup.vim](https://github.com/vim-scripts/cup.vim)
- [gruvbox](https://github.com/morhetz/gruvbox)
- [jflex.vim](jflex.de/vim.html)
- [molokai](https://github.com/tomasr/molokai)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [php.vim](https://github.com/StanAngeloff/php.vim)
- [powerline-fonts](https://github.com/Lokaltog/powerline-fonts)
- [rainbow_parentheses.vim](https://github.com/kien/rainbow_parentheses.vim)
- [rust.vim](https://github.com/wting/rust.vim)
- [syntastic](https://github.com/scrooloose/syntastic)
- [taglist.vim](https://github.com/vim-scripts/taglist.vim.git)
- [vim-airline](https://github.com/bling/vim-airline)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-l9](https://github.com/eparreno/vim-l9)
- [vim-markdown](https://github.com/tpope/vim-markdown)
- [vim-pathogen](https://github.com/tpope/vim-pathogen)
- [vim-sensible](https://github.com/tpope/vim-sensible)
- [vim-signify](https://github.com/mhinz/vim-signify)

Install
-----
First clone the repo:
```
git clone https://github.com/csivanich/dotfiles.git --recursive

OR

git clone https://github.com/csivanich/dotfiles.git
cd dotfiles
git submodule init
git submodule update
```

With releases 2.0+ supporting [dotbot](https://github.com/anishathalye/dotbot) installs simply run `install.sh` from the **dotfiles** folder and resolve each issue until all the files have linked.

Moving the original files is recommended,

```
mv <config file> <config file>.bak
```

should do the trick.

Update
-----

Go into the dotfiles repo

```
cd path/to/dotfiles
```

Pull the newest files (can be done with rebase, fetch & merge as well)

```
git pull
```

Update the submodules, if necessary

```
git submodule update
```
