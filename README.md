dotfiles
========

Configuration repository containing my configurations, many using Git submodules.

![Screenshot](https://i.imgur.com/PSfDDXv.png)

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
- Improved window movement between outputs (\$mod+j/k)
- Named/numbered workspaces, each with switch and move bindings
- Top hidden bar

#### X11 Configuration

- Caps Lock remapped to Escape
- Default WM is `i3`
- NVIDIA scrolling tweaks when nvidia-settings is installed
- Xbindkeys for volume and brightness controls

#### Xterm Configuration

- 256 color mode enabled
- 4096 lines saved
- Custom colorscheme
- Inconsolata for Powerline font - size 14 regular
- UTF8 enabled

#### Zsh Configuration

- $EDITOR is `vim`
- Aliases file
- Custom $PATH
- Custom prompt with git support
- Scripts folder (~/.zsh.d)
- Syntax highlighting
- Work-in-progress

#### Vim Configuration
- 4 spaced tabs
- Autocompletion always on
- Case insensitive search
- Dark background
- Global config base
- Global highlighting of search matches
- Gruvbox theme
- Mouse support
- NERDTree Configuration
- Numbered lines
- Rainbow Parentheses Configuration
- TAB toggles Taglist
- Tons of plugins through Pathogen
- Trailing whitespace highlighting

#### Tmux Configuration
 - Enhanced clipboard support
 - Mouse support
 - Ctrl+a prefix
 - Simplified split window bindings
 - Vim main keybindings

Dependencies
-----

#### Vim:
- [ctags](http://ctags.sourceforge.net/)(>= 5.0)

Submodules
-----

#### General:
- [dotbot](https://github.com/anishathalye/dotbot)

#### Zsh:
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [ze-best-zsh-config](https://github.com/spicycode/ze-best-zsh-config)

#### Vim:
- [ack.vim](https://github.com/mileszs/ack.vim)
- [aglist.vim]()
- [colorizer](https://github.com/lilydjwg/colorizer)
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
- [vim-automplpop](http://www.vim.org/scripts/script.php?script_id=1879)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-l9](https://github.com/eparreno/vim-l9)
- [vim-latex](https://github.com/lervag/vim-latex)
- [vim-markdown](https://github.com/tpope/vim-markdown)
- [vim-pathogen](https://github.com/tpope/vim-pathogen)
- [vim-sensible](https://github.com/tpope/vim-sensible)
- [vim-signify](https://github.com/mhinz/vim-signify)

Install
-----
First clone the repo and its submodules:

```
git clone https://github.com/csivanich/dotfiles.git
cd dotfiles
git submodule update --init --recursive
```

With releases 2.0+ supporting [dotbot](https://github.com/anishathalye/dotbot) installs simply run `install.sh` from the **dotfiles** folder and resolve each issue until all the files have linked.

Backing up your original files is recommended,

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
git submodule update --init --recursive
```

Update any dotbot symlinks

```
./install.sh
```
