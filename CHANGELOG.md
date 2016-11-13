Changelog
-----

#### 6.0 - Prompt customization, dracula colorscheme

- Add rvm.sh to zsh.d
- Added Dracula colorscheme and installs for X/vim/i3 (#9)
- Added _p_battery to prompt
- Added _p_benchmark to prompt
- Added _p_ruby to prompt
- Added ack alias to page output
- Added background jobs indicator to prompt
- Added bgrep alias
- Added cleanroom submodule and script
- Added creating required directories in install.sh
- Added new default prompt color file
- Added optional hostname shortening
- Added ssh-agent starter (ssh-reload.sh)
- Added success/failure messages to update.sh
- Added temps alias
- Added vim-elixir
- Removed gitconfig from dotfiles
- Retabbed Xresources
- Set TERMINAL env to xterm
- Update default xterm font size 14 -> 16
- Updated _p_git_diffs
- Updated _p_location
- Updated screenshot for 6.0
- Updated submodules
- Updated zsh exports

#### 5.2 - Prompt optimization, color update

- Added escp function (PR #4)
- Added i3 $mod+Shift+s to toggle stickyness
- Added jinja2 filetype detection
- Added new prompt (PR #5)
- Added override ability for prompt, changed to ':'
- Added play alias for running ansible playbooks
- Added ridiculous cache for generated space string
- Fixed whitespace on ls alias
- Remapped i3 arrow keys
- Renamed i3 VPN workspace to VM
- Updated CHANGELOG README image
- Updated color scheme
- Updated github libraries
- Updated zsh to exit after dux exits
- Updated zsh-syntax-highlighting for v5.2+ support

#### 5.1 - Vim LaTeX mappings, config optimizations

- Added glacier-cli scripts
- Added helper xinitrc functions
- Added json alias
- Added LaTeX support to CTags
- Added <leader><leader> LaTeX to insert new \item
- Added listchars configuration to vim
- Added Vim-Jinja2-Syntax
- Added vim-signature
- Changed redshift to redshift-gtk
- Fixed incorrect tmux conf format
- Fixed issue with linking of dux.py
- Improved i3 startup format, added VPN workspace
- Made zshrc executable
- Remapped <Leader>t to open CTags
- Updated all github libraries to newest commits
- Updated Ctrlp to only search for files below the working directory
- Updated divider to not automatically reset
- Updated dstat alias to use better IO stats
- Updated tmux mouse config for ver 2.1+
- Updated tmux right corner time format
- Updated vim <leader> to <space>, better LaTeX cmds
- Updated vimrc to make links more obvious
- Updated vimrc with better organization and folding
- Updated YAML indentation to use 2 spaces

#### 5.0 - Major new color scheme, Dux integration

- **MAJOR NEW COLOR SCHEME**
- Added dstat alias
- Added Dux note to README
- Added Dux support
- Added gundo.vim and assigned to TAB
- Added images of different tags
- Added tclip alias to copy tmux buffer to clipboard
- Added vim-ruby and correct spacing for Ruby in vim
- Added vim-unimpaired and arrow up/down line movements
- Updated libraries to most current versions
- Updated screenshot, tweaked green, fixed prompt bug
- Updated submodules
- Updated vimrc set statements to be sorted

#### 4.6 - Xinit additions, tmux tweaks

 - Added arandr screen setting at X start
 - Added crosshair to vim
 - Added emmet-vim plugin
 - Added local ruby bin to the PATH if found
 - Added vim-ansible-yaml plugin
 - Fixed contradictory statement
 - Fixed duplicate taglist.vim link
 - Fixed xinitrc check for default screenlayout and xscreensaver command
 - Removed extra whitespace
 - Updated base font size to 12pt
 - Updated font back to Inconsolata
 - Updated ssh-agent to check for install before run
 - Updated tmux split pane to _ so it requires a shift like |

#### 4.5 - Xscreensaver/ssh-agent support, workspace tweaks, module fix

 - Added colorization to the man pages
 - Added i3 workspace 4 as Okta
 - Added i3 workspace 8 for steam
 - Added tmux sessions and attach aliases
 - Fixed vim-auto-save git module
 - Removed external IP checking in tmux statusbar
 - Updated dunst browser to chromium, close and context shortcuts
 - Updated tmux prefix to Ctrl-w
 - Updated vim config to use 'relativenumber' for sidebar line numbers
 - Updated xinitrc to enable xscreensaver and start ssh-agent

#### 4.4 - Vim plugins and workspace tweaks

- Added new i3 aliases
- Added vim-auto-save (auto saving)
- Added vim-autoclose (auto bracket closing)
- Fixed whitespace in bindings
- Removed some broken xkeybindings
- Updated compton configuration to disable window fading
- Updated i3 workplace names
- Updated vim .gitignore to ignore 'spell' folder and custom dict

#### 4.3 - Zsh modularization and improved configuration

- Added dh alias
- Added improved keybindings to zsh
- Added tmux configuration
- Added update script
- Added vim-autocomplpop as a submodule
- Added working history and better key bindings
- Fixed incorrectly quoted string
- Modularized zsh configuration, removed and integrated ze-best-zsh
- Removed feh from floating whitelist
- Updated image
- Updated many files with small tweaks. See body.
- Updated README to have sorted categories
- Updated update script to work better with non master branches
- Updated zshrc for prompt customization and small optimization

#### 4.2 - ~/.zsh.d/\* script support

- Added full ~/.zsh.d/\* script support and added syntax highlighting
- Added optional "$nick" section to zsh prompt
- Added zsh-syntax-highlighting and updated submodules
- Added zsh-syntax-highlighting plugin and added DOTFILES_DIR
- Removed dead link

#### 4.1 - Tweaks and vim colorscheme change

- Added $home/bin support
- Added pigz alias for parallel gzip if installed
- Added vim-latex
- Altered ls alias
- Changed theme back to Gruvbox
- Fixed leftover omz install configuration
- Fixed vim keybindings in resize mode
- Removed netrwhist
- Updated xterm fonts to size 14

#### 4.0 - Zsh configuration rebuild

- Minor changes
- Rebuilt zshrc
- Removed oh-my-zsh
- Set projector key to blank screen
- Updated VIM-like keybindings in i3

#### 3.1 - i3 colorscheme and keybinding update

- Added VIM keybindings to window movement
- Added colorizer.git for vim
- Added git annex aliases
- Added gitconfig
- Added unclutter support - mouse disappears after 1 second
- Remapped Caps Lock to Esc, sorted changes to X
- Removed 80 line marker and auto return
- Removed old solarized references
- Updated README fixed link
- Updated github libraries
- Updated i3 colors to new blue theme

#### 3.0 - Vim and X colorscheme updated

- Added CHANGELOG
- Added ls alias
- Added rust.vim
- Added rust.vim and updated README
- Added vim-autocomplpop
- Added vim.cup, molokai.git, sorted lists in README
- Added xbindkeys support
- Changed default colorscheme to Molokai
- Finalized new colors, removed old colors
- Fixed install to reflect zsh_update removal
- Removed hardcoded PATH
- Removed nonsubmodule rust.vim
- Removed unused solarized library
- Update README.md
- Updated README for vim-autocomplpop and vim-l9
- Updated README for xbindkeys
- Updated autostarts in README
- Updated dotbot and added broken symlink cleaning
- Updated submodules
- Updated xterm and i3 colors- source in body

#### 2.3 - Minor update

- Added Dunst notification support
- Added Nitrogen wallpaper support
- Added connman-notify support
- Added jflex.vim
- Added map for personal email
- Changed brightness alias to use light binary
- Fixed jflex.vim and added required script
- Fixed path variable usage with two forward slashes
- Removed zsh-update file
- Updated gitignore for zsh-update removal
- Updated submodules

#### 2.2 - Minor update

- Added NVIDIA tweaks
- Added metadata, s and b aliases and xinitrc tweaks for NVIDIA cards
- Added update instructions
- Update README.md
- Updated rsync alias
- Updated submodule references

#### 2.1 - Minor update

- Switched dotbot to personal fork csivanich/dotbot
- Updated all submodules
- Updated i3 colors

#### 2.0 - Addition of Dotbot

- Added X resources to dotbot
- Added boilerplate gitignore
- Added compton configuration
- Added dotbot binaries and base install file
- Added fonts to dotbot configuration
- Added remaining configurations to dotbot
- Made xautolock command opt-in
- Merge pull request #1 from csivanich/release-2
- Move of vim and zsh resources to dotbot management
- Moved i3 config to dotbot
- README tweaks and credit addition for dotbot
- Updated README for dotbot integration
- Updated automated installer to use correct python binary

#### 1.0 - Initial Release

- Added 'war' alias and begun work on Xresources theme
- Added 2 new colors and changed color6
- Added NVIDIA flashplayer bluescreen fix to zshrc
- Added Xclock configuration
- Added ack.vim to README
- Added aliases file
- Added color settings
- Added compton configuration
- Added ctrlp.vim
- Added in X screen locking settings, if present
- Added oh-my-zsh submodule
- Added perl utilities to PATH if installed
- Added php.vim and updated solarized
- Added rainbow_parentheses.vim
- Added rsync alias
- Added taglist.vim
- Added vim trailing whitespace highlighting
- Added vim-markdown
- Added y workspace for Youtube, added compton autostart
- Create README.md
- File tweaks
- Fixed Agnoster theme not showing user@host string
- Fixed NERDTree arrow rendering with patched fonts
- Fixed i3 floating modifier
- Fixed incorrect symlink and updated .zsh-update epoch date
- Fixed path issue for aliases
- Fixed phplint alias to only run 1 process at a time
- Renamed i3 workspace 3 to 3: Virtualbox
- Set <TAB> to open taglist
- Set vim to expandtab
- Stopping empty promises
- Turned on xterm scrolling and tweaked colors
- Update README.md
- Update zsh update date
- Updated all submodules
- Updated i3 configuration to allow compton to configure itself
- Updated oh-my-zsh and installed ack.vim
- Updated solarized submodule to valid commit
- Updated submodules
- i3 config addition
