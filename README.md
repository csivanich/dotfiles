dotfiles
========

Configuration repository containing my configurations, many using Git submodules.

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
  - (Disabled by default) Xautolock running `lock`
- Improved window movement between workspaces (\$mod+j/k)
- Named/numbered workspaces, each with switch and move bindings
- Top hidden bar
- WIP colors

#### X11 Configuration

- Merges user configuration on top of solarized at startup
- Default WM is `i3`
- Custom color scheme loosely based on solarized dark
- Xclock tweaks because why not?

#### Xterm Configuration

- Sauce Code Powerline font (see submodules) - size 10 regular
- 256 color mode enabled
- UTF8 enabled
- 4096 lines saved
- Nothing else that special

#### Zshrc Configuration
- Oh-my-zsh plugin (see submodules)
    - Git plugin enabled
    - Agnoster theme
- Aliases file
- Completion waiting dots
- Custom $PATH
- \$EDITOR is `vim`

#### Vim Configuration
- Global config base
- Tons of plugins through Pathogen
- Gruvbox theme
- Dark background
- 4 spaced tabs
- Numbered lines
- Global highlighting of search matches
- Case insensitive search
- Mouse support
- 80 line marker and auto line breaks
- TAB toggles Taglist
- Trailing whitespace highlighting
- Airline Configuration
    - Powerline font support
    - UTF-8 encoding enabled
    - Status line always shown
- NERDTree Configuration
    - Removed arrows which have issues with Powerline fonts
- Rainbow Parentheses Configuration
    - Auto starts

Submodules
-----

#### General:
- [solarized](https://github.com/altercation/solarized)

#### Zsh:
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

#### Vim:
- [gruvbox](https://github.com/morhetz/gruvbox)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [syntastic](https://github.com/scrooloose/syntastic)
- [vim-airline](https://github.com/bling/vim-airline)
  - [powerline-fonts](https://github.com/Lokaltog/powerline-fonts)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-pathogen](https://github.com/tpope/vim-pathogen)
- [vim-sensible](https://github.com/tpope/vim-sensible)
- [vim-signify](https://github.com/mhinz/vim-signify)
- [vim-markdown](https://github.com/tpope/vim-markdown)
- [php.vim](https://github.com/StanAngeloff/php.vim)
- [ack.vim](https://github.com/mileszs/ack.vim)
- [ctrlp.vim](https://github.com/kien/ctrlp.vim)
- [rainbow_parentheses.vim](https://github.com/kien/rainbow_parentheses.vim)
- [taglist.vim](https://github.com/vim-scripts/taglist.vim.git)
  - [ctags](http://ctags.sourceforge.net/)(>= 5.0)

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

With releases 2.0+ supporting [dotbot](https://github.com/anishathalye/dotbot) installs simply run `install.sh` from the **dotfiles** folder and resolve each issue until all the files have linked. Moving the original files is recommended, `mv <config file> <config file>.bak` will do the trick.
