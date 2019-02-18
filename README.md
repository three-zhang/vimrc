# vimrc

mac install
```shell
brew install go
brew install ag
brew install ctags
go get -u github.com/jstemmer/gotags
```

vim
```
PlugInstall
GoInstallBinaries
```

## 功能键
###F1

###F2
开启NERDTree

###F3
开启tagbar

###F4


###F5
编译语法检测

###F6

###F7

###F8
打开 MarkDown 预览

###F9
关闭 MarkDown 预览

###F10

###F11

###F12
生成ycm配置文件


### leader

leader is ,

####vim-airline/vim-airline
```
,bn 向上翻页
,bp 向下翻页
:b1 跳转至1号buffer
```

####vim-scripts/TaskList.vim
```
,todo 打开todo list
```

####Valloric/YouCompleteMe
```
,g 该命令尝试执行它可以执行的“最明智的”GoTo操作。
,gi 查找当前行的头文件并跳转到它。
,gdl 查找光标下的标识符并跳转到其声明。
,gdf 查找光标下的标识符并跳转到其定义。这仅适用于符号的定义位于当前翻译单元中时。
,gde 跳转两者结合体
,gt 显示光标下的变量或方法的类型，以及父类型。
```

####SirVer/ultisnips
```
tab 生成代码块
```

####danro/rename.vim
```
:rename[!] {newname}
```