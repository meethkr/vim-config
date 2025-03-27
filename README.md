# Setup

1. Remove any existing vimrc or .vim directories first

```
rm -rf ~/.vim && rm ~/.vimrc
```

2. Install cmake, go and macvim if on mac

```
brew install macvim cmake go
```
3. Copy paste this:

```
cd ~ && git clone https://github.com/meethkr/vim-config.git .vim/ && cd .vim && git submodule update --init --recursive && ln -sf ~/.vim/vimrc ~/.vimrc cd ~
```

4. Install YouCompleteMe requirements
   
```
cd ~/.vim/bundle/youcompleteme && python3 -m venv .venv && source .venv/bin/activate && pip3 install setuptools && python3 install.py --all && deactivate && cd ~
```
