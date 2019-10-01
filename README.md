# Dotfiles

The intention was to put together a relatively minimal set of dotfiles. Here's how that was done:

2019-04-19

## Install Alacritty
### Configuration
The Alacritty configuration lives in `~/.config/alacritty/alacritty.yml`

It looks quite nice to have a buttonless window:
```yml
window:
	padding:
		x: 0
		y: 0
	dynamic_padding: true
	decorations: buttonless
```

### Theming
Theming Alacritty is done in it’s configuration file, the 16 terminal colors are defined there. Updating themes can be automated, though.

- [ ] **ALTERNATIVE: CAN’T THIS FILE REFERENCE MORE CONFIG FILES?**

This method removes all comments from the .yml config file. Consider backing it up first:
```
cp ~/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml.bak
```

The base16 themes for Alacritty are already in the right format, this makes the process somewhat easier. They’re available on Github. Clone the repo with:
```
git clone https://github.com/aaron-williamson/base16-alacritty.git ~/.config/alacritty/base16-alacritty
```

.yml files can be updated with a bash command using yq. Install it with:
```
brew install yq
```

Base 16 themes can be applied to Alacritty while preserving existing settings (not comments) as follows:
```
yq w -i -s ~/.config/alacritty/base16-alacritty/colors/base16-tomorrow ~/.config/alacritty/alacritty.yml
```

See: `yq w -i --help` for details. Quick answer:
* `w` is for “write”, this updates a yml file and prints it to stdout
* `-i` is for “inplace”, which causes `w` to write to the file itself instead of stdout
* `-s` allows the user to specify a script (another yml file) of  values that will be written into the target file.


## Base16 Shell
Install base-16 shell  [GitHub - chriskempson/base16-shell: Base16 for Shells](https://github.com/chriskempson/base16-shell)
This has the power to change the terminal color scheme. Keep in mind that Alacritty won’t be perfectly themed by this, so specifying a theme in its config file is still required.

The Base16 Shell scripts re available on Github. Clone them like so:
```bash
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```

After cloning the Base16 Shell repo, add the following to `~/.bash_profile` to make them available:
```bash
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
```

Base16 Shell provides many commands to switch between themes in the terminal:
```bash
base16_3024
base16_apathy
base16_ashes
base16_atelier-cave
base16_atelier-cave-light
base16_atelier-dune
base16_atelier-dune-light
base16_atelier-estuary
base16_atelier-estuary-light
base16_atelier-forest
base16_atelier-forest-light
base16_atelier-heath
base16_atelier-heath-light
base16_atelier-lakeside
base16_atelier-lakeside-light
base16_atelier-plateau
base16_atelier-plateau-light
# etc...
```

## Configure Vim
The following Vim settings are pretty much required:
```vim
set encoding=utf-8
filetype plugin indent on
syntax enable
set number
set nowrap
set nocompatible

" REMOVE TRAILING WHITESPACE WHEN SAVING
let filetypes_not_to_remove_whitespace_from=['vim']
augroup neccesities
  autocmd!
  autocmd BufWritePre * if index(filetypes_not_to_remove_whitespace_from, &ft) < 0 | autocmd BufWritePre <buffer> %s/\s\+$//e
augroup END

" IRRESPONSIBLE
" prevents writing ~other~ files
set nobackup
set nowritebackup
set noswapfile
set noundofile

" CLIPBOARD FIX
if has('mac')
	set clipboard=unnamed
elseif has('unix')
	"more might be required
	set clipboard=unnamedplus
end

" GIT
augroup git_settings
  autocmd!
  autocmd FileType gitcommit set spell
augroup END

" MISC
set hlsearch

" INDENTATION
set tabstop=2
set shiftwidth=2
set expandtab
```

### Install Plug
[GitHub - junegunn/vim-plug: Minimalist Vim Plugin Manager](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Install VimSensible
Update `~/.vimrc` to include:
```vim
call plug#begin()
  Plug 'tpope/vim-sensible'
call plug#end()
```
Restart Vim, call `:PlugInstall` and restart Vim again.

### Install Base16 Vim
Update `~/.vimrc` to include:
```vim
call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'chriskempson/base16-vim'
call plug#end()
```
Restart Vim, call `:PlugInstall` and restart Vim again.

### Install NERDTree
Update `~/.vimrc` to include:
```vim
call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'chriskempson/base16-vim'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()
```
Restart Vim and call `:PlugInstall`

NERDTree sets  `cursorline` in its buffer, some themes, specifically the base16 ones, highlight the cursor line by underlying it. I dislike this. Change it by adding this to `.vimrc`.
```vim
hi CursorLine gui=NONE cterm=NONE guibg=Gray ctermbg=Gray
```

### Install FZF and Ag
- use brew, also install https://github.com/junegunn/fzf.vim
