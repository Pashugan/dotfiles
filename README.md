## My public dotfiles

### Cheatsheets

#### Clone with all the vim plugins
```sh
$ git clone --recursive https://github.com/Pashugan/dotfiles.git
```

#### Add a new vim plugin
```sh
$ git submodule add https://github.com/repo/foo.git vim/pack/bundle/start/foo
$ cd vim/pack/bundle/start/foo
$ git checkout v1.0-stable
```

#### Regenerate help for all the vim plugins
```vim
:helptags ALL
```

#### Caveat
The ctags file should be symlinked to
* `~/.ctags` when using Exuberant Ctags
* `~/.ctags.d/my.ctags` when using [Universal Ctags](https://github.com/universal-ctags/ctags)
