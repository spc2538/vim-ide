# Vim

## Debian 12 and Ubuntu clipboard support

### Dependencies

```sh
# install 
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

*** Make sure to setup the clipboard settings and install the vim-gtk3 in the remote server in question***

*** Sadly, root accounts do not work since you are ssh-ing with a user that is probably not root ***

## Install settings

```sh

```
