## My public dotfiles

### Prerequisites

* [Universal Ctags](https://github.com/universal-ctags/ctags) (recommended) or [Exuberant Ctags](http://ctags.sourceforge.net/)
* [fzf](https://github.com/junegunn/fzf)
* [ripgrep](https://github.com/BurntSushi/ripgrep)

### Maintenance

#### Vim

##### Clone with all the vim plugins
```sh
$ git clone --recursive https://github.com/Pashugan/dotfiles.git
```

##### Update all the vim plugins
```sh
$ git submodule update --init --recursive
```

##### Add a new vim plugin
```sh
$ git submodule add https://github.com/repo/foo.git vim/pack/bundle/start/foo
$ cd vim/pack/bundle/start/foo
$ git checkout v1.0-stable # not recommended as release tags are rarely up-to-date
```

##### Delete an existing vim plugin
```sh
$ git submodule deinit -f vim/pack/bundle/start/foo # remove the submodule entry from .git/config
$ rm -rf .git/modules/vim/pack/bundle/start/foo
$ git rm -f vim/pack/bundle/start/foo
# Remove the submodule entry from .gitmodules
```

##### Regenerate help for all the vim plugins
```vim
:helptags ALL
```

#### Not Vim

##### Run synergy client on boot
```sh
$ systemctl --user daemon-reload
$ systemctl --user enable synergyc
$ systemctl --user start synergyc
```

### Caveats
`ctags` needs to be symlinked to
* `~/.ctags` when using Exuberant Ctags
* `~/.ctags.d/my.ctags` when using [Universal Ctags](https://github.com/universal-ctags/ctags)
