![](https://github.com/abhishekjiitr/dotfiles/workflows/CI/badge.svg)

# dotfiles
+ [.vimrc](vim/.vimrc)
+ [.zshrc](zsh/.zshrc)
+ [.tmux.conf](tmux/.tmux.conf)
+ [.mongorc.js](mongodb/.mongorc.js)
+ [.gitconfig](git/.gitconfig)

## Usage
Pull the repository, and then create symlinks using [GNU Stow](https://www.gnu.org/software/stow/stow.html)

```bash
$ git clone https://github.com/abhishekjiitr/dotfiles ~/.dotfiles
$ cd ~/.dotfiles
$ stow vim # similar for others
```