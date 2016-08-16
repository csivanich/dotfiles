dotfiles
========

![Screenshot](https://raw.githubusercontent.com/csivanich/dotfiles/master/libs/images/5_2.png)

I was tired of having a bunch of configurations across all my machines, especially when trying to keep all the plugins and extras up to date. So I got fed up and threw them on GitHub. It's not perfect (yet!), but it's a great starting point for any Linux config.

These configurations are based from an Arch Linux system running i3wm and compton + xterm/zsh, however most of the files should be usable without dependencies on the others.

Releases 2.0+ provide automated install support using my fork of [dotbot](https://github.com/anishathalye/dotbot). See **Install** for instructions.

Contents
-----

#### i3 Configuration

- $mod set to Win key
- Sauce Code for Powerline font - size 10 regular
- 1px borders
- Improved window movement between outputs (\$mod+\[ and \])
- Named/numbered workspaces, each with switch and move bindings
- Top hidden bar
- Optionally autostarts (if installed):
  - [Clipit](http://sourceforge.net/projects/gtkclipit/)
  - [Compton](https://github.com/chjj/compton)
  - [Connman-Notify](https://github.com/wavexx/connman-notify)
  - [Dunst](http://knopwob.org/dunst/index.html)
  - [Nitrogen](http://projects.l3ib.org/nitrogen/)
  - [Synsei](https://github.com/csivanich/synsei)
  - [Unclutter](http://ftp.x.org/contrib/utilities/unclutter-8.README)
  - [Xbindkeys](http://www.nongnu.org/xbindkeys/xbindkeys.html)

#### Tmux Configuration
 - Ctrl+a prefix
 - Enhanced clipboard support
 - Mouse support
 - Simplified split window bindings
 - Vim main keybindings

#### Vim Configuration
- 4 spaced tabs
- Autocompletion always on
- Case insensitive search
- Cursor crosshair
- Dark background
- Global config base
- Global highlighting of search matches
- Gruvbox theme
- Marks in gutter
- Mouse support
- NERDTree Configuration
- Numbered lines
- Rainbow Parentheses Configuration
- TAB toggles Taglist
- Tons of plugins through Pathogen
- Trailing whitespace highlighting

#### X11 Configuration

- Autostarts ssh-agent
- Caps Lock remapped to Escape
- DPI set to 96
- Default WM is `i3`
- Font antialiasing and rgb hinting
- Loads default screenlayout
- NVIDIA scrolling tweaks when nvidia-settings is installed
- Xbindkeys for volume and brightness controls

#### Xterm Configuration

- 256 color mode enabled
- 4096 lines saved
- Autostarts tmux with `dux` script
- Custom colorscheme
- Iconsolata for Powerline font - size 14 regular
- UTF8 enabled

#### Zsh Configuration

- $EDITOR is `vim`
- Aliases file
- Custom $PATH
- Custom prompt with git support
- Scripts folder (~/.zsh.d)
- `ssh-agent` auto start
- Syntax highlighting
- Work-in-progress

Optional Dependencies
-----

#### Vim:
- [ctags](http://ctags.sourceforge.net/)(>= 5.0)

#### Zsh:
- [ssh-agent](https://en.wikipedia.org/wiki/Ssh-agent)

Submodules
-----

#### General:
- [dotbot](https://github.com/anishathalye/dotbot)
- [glacier-cli](https://github.com/csivanich/glacier-cli)

#### Zsh:
- [dux](https://github.com/csivanich/dux)
- [z](https://github.com/rupa/z)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

#### Vim:
- [ack.vim](https://github.com/mileszs/ack.vim)
- [colorizer](https://github.com/lilydjwg/colorizer)
- [ctrlp.vim](https://github.com/kien/ctrlp.vim)
- [cup.vim](https://github.com/vim-scripts/cup.vim)
- [gruvbox](https://github.com/morhetz/gruvbox)
- [gundo.vim](https://github.com/sjl/gundo.vim/)
- [jflex.vim](jflex.de/vim.html)
- [molokai](https://github.com/tomasr/molokai)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [php.vim](https://github.com/StanAngeloff/php.vim)
- [powerline-fonts](https://github.com/Lokaltog/powerline-fonts)
- [rainbow_parentheses.vim](https://github.com/kien/rainbow_parentheses.vim)
- [rust.vim](https://github.com/wting/rust.vim)
- [syntastic](https://github.com/scrooloose/syntastic)
- [taglist.vim](https://github.com/vim-scripts/taglist.vim)
- [vim-airline](https://github.com/bling/vim-airline)
- [vim-ansible-yaml](https://github.com/vim-ansible-yaml)
- [vim-auto-save](https://github.com/vim-scripts/vim-auto-save)
- [vim-autoclose](https://github.com/Townk/vim-autoclose.git)
- [vim-automplpop](http://www.vim.org/scripts/script.php?script_id=1879)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-jinja2-syntax](https://github.com/Glench/Vim-Jinja2-Syntax)
- [vim-l9](https://github.com/eparreno/vim-l9)
- [vim-latex](https://github.com/lervag/vim-latex)
- [vim-markdown](https://github.com/tpope/vim-markdown)
- [vim-pathogen](https://github.com/tpope/vim-pathogen)
- [vim-ruby](https://github.com/vim-ruby/vim-ruby)
- [vim-sensible](https://github.com/tpope/vim-sensible)
- [vim-signature](https://github.com/kshenoy/vim-signature)
- [vim-signify](https://github.com/mhinz/vim-signify)
- [vim-unimpared](https://github.com/tpope/vim-unimpaired)

Install
-----
Clone the repo and its submodules, then install links.
The install **will not** override any configs by default.

```sh
git clone https://github.com/csivanich/dotfiles.git && \
cd dotfiles && \
git submodule update --init --recursive && \
./install.sh
```

If errors occur due to existing files, move them and try again:

```
mv <config file> <config file>.bak
```

The install can be retried with `./install.sh`

Update
-----

Included is an `./update.sh` script which fetches and rebases upstream changes, updates submodules and installs the new configs.

```sh
cd /path/to/dotfiles
./update.sh
```

Or if you don't trust my scripts (why should you?), you can update manually:

```sh
git fetch -vp # Update refs
git rebase origin/master # Bring in new changes
git submodule update --init --recursive # Update submodules
python2 libs/github/dotbot/bin/dotbot -d ./ -c install.conf.json # Install/clean links
```
