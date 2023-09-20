# Vim

# TODO
- [Finish the setup of some advanced plugins](https://www.makeuseof.com/best-vim-plugins/)

## Update settings

```sh
rm -rf /tmp/vim-ide
git clone https://github.com/spc2538/vim-ide.git /tmp/vim-ide
cp /tmp/vim-ide/.vimrc ~/.vimrc
vim +PluginInstall +qall
```

## Install settings

```sh
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git Vundle.vim
git clone https://github.com/spc2538/vim-ide.git /tmp/vim-ide
cp /tmp/vim-ide/.vimrc ~/.vimrc
vim +PluginInstall +qall

```

### Alias vimx to vi (X11 Only)

```sh
echo 'alias vi=vimx' >> ~/.bashrc
source ~/.bashrc
```


## Fedora Wayland Clipboard

```sh
sudo dnf install vim gvim xclip vim-X11
```

### Run vim with x clipboard support

```sh
vimx

```


## SSH Support

```sh
# Host name alias
Host ip
    ...
	ForwardX11 yes
    ForwardX11Trusted yes
```

**Make sure to setup the clipboard settings and install the vim-gtk3 in the remote server in question**

**Sadly, root accounts do not work since you are ssh-ing with a user that is probably not root**



## Debian 12 and Ubuntu clipboard support

### Dependencies

```sh
# install
sudo apt install vim
sudo apt-get install vim-gtk3 -y
sudo apt-get install xclip -y
sudo apt-get install fzf -y
# Configure
vim ~/.vimrc
:'
set clipboard=unnamedplus
'
```

## Windows WSL 2 Ubuntu Clipboard

```sh
" Add these settings after installing vim-ide"

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

```
