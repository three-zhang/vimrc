# vimrc

my .vimrc 

mac install
```shell
brew install go
brew install ag
brew install ctags
go get -u github.com/jstemmer/gotags

mkdir -p $GOPATH/src/golang.org/x
cd $GOPATH/src/golang.org/x
git clone git@github.com:golang/tools.git
git clone git@github.com:golang/lint.git
```

demo
```shell
go build golang.org/x/tools/cmd/guru
```

vim

```
PlugInstall
GoInstallBinaries
```

vim ./vim-go/ftplugin/go.vim

vim ./vim-go/ftplugin/asm.vim

注释
```
setlocal noexpandtab
```
