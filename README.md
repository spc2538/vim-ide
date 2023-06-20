# Vim

# TODO
- [Finish the setup of some advanced plugins](https://www.makeuseof.com/best-vim-plugins/)

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

## Install settings

```sh

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git Vundle.vim
git clone https://github.com/spc2538/vim-ide.git /tmp/vim-ide
cp /tmp/vim-ide/.vimrc ~/.vimrc
cat ~/.vimrc

vim ~/.vimrc
: '
# In Vim
:PluginInstall
'
vim +PluginInstall +qall

```

