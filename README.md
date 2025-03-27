# Setup

1. Remove any existing vimrc or .vim directories first

```
rm -rf ~/.vim
rm ~/.vimrc
```

2. Install macvim and cmake if on mac

```
brew install macvim cmake
```
3. Copy paste this:

```
cd ~ && git clone https://github.com/meethkr/vim-config.git .vim/ && cd .vim && git submodule update --init --recursive && ln -sf ~/.vim/vimrc ~/.vimrc && cd ~/.vim/bundle/youcompleteme && python3 install.py --all && cd ~
```
