# vimrc

mac install
```shell
brew install ag
brew install ctags
```

vim
```
PlugInstall
GoInstallBinaries
```

## 功能键
### F1

### F2
开启NERDTree

### F3
开启tagbar

### F4


### F5
编译语法检测

### F6

### F7

### F8

### F9

### F10

### F11

### F12
生成ycm配置文件


### leader

leader is ,

#### vim-airline/vim-airline
```
,bn 向上翻页
,bp 向下翻页
:b1 跳转至1号buffer
```

#### vim-scripts/TaskList.vim
```
,todo 打开todo list
```

#### Valloric/YouCompleteMe
```
<leader>g   该命令尝试执行它可以执行的“最明智的”GoTo操作。
<leader>gi  查找当前行的头文件并跳转到它。
<leader>gdl 查找光标下的标识符并跳转到其声明。
<leader>gdf 查找光标下的标识符并跳转到其定义。这仅适用于符号的定义位于当前翻译单元中时。
<leader>gde 跳转两者结合体
<leader>gt  显示光标下的变量或方法的类型，以及父类型。
```

#### danro/rename.vim
```
:rename[!] {newname}
```


#### pbrisbin/vim-mkdir
```
:e this/does/not/exist/file.txt
:w
```

#### scrooloose/nerdcommenter
```
[count]<leader>cc   行数 注释
[count]<leader>cl   左对齐注释
[count]<leader>cb   右对齐注释
[count]<leader>cn   与CC相同 强制嵌套
[count]<leader>cu   取消注释
```

#### tpope/vim-surround
```
ds 删除包围符号的命令是ds,后面加的字符表示要删除的符号
"Hello world!"           ds"         Hello world!

cs 替换包围符号的命令是cs,命令后跟两个参数，分别是被替换的符号和需要使用的符号
"Hello world!"           cs"'        'Hello world!'

cst 撤销替换
'Hello world!'           cst"        "Hello world!"

ys 添加包围符号的命令是ys(ys可以记为you surround)，命令后同样跟两个参数，第一个是一个vim“动作”（motion）或者是一个文本对象,其中motion即vim动作，比如说w向后一个单词。文本对象简单的来说主要是来通过一些分隔符来标识一段文本，比如iw就是一个文本对象，即光标下的单词。
yss 命令可以用于整行操作，忽略中间的空格,yS 和 ySS 还能让包围内容单独一行并且加上缩进。 
Hello world!             ysiw)       Hello (world)!
添加包围符号还有个非常好用的方式：在可视模式v下，按下S后即可添加想要添加的包围符号了。再说一个小技巧：在包围符号为括时，输入左括号 (或者{ ,则会留一个空格
Hello w*orld!             ysiw(       Hello ( world )
```

#### godlygeek/tabular
```
<leader>a= 按等号格式化
<leader>a: 按冒号格式化
<leader>a" 按双引号格式化
```

#### Lokaltog/vim-easymotion
```
<leader><leader>w(即,,w)和<leader><leader>b(即,,b)          跳转到当前光标前后的位置(w/b)
<leader><leader>s(即,,s)然后输入要搜索的字母, 这个跳转是双向的   搜索跳转(s)
<leader><leader>j和<leader><leader>k(即,,j和,,k)            行级跳转(jk)
<leader><leader>h和<leader><leader>l(即,,h和,,l)            行内跳转(hl)
<leader><leader>.                                          重复上一次动作(.)
```


#### matze/vim-move
```
<C-k>   向上移动
<C-j>   向下移动
```

#### gcmt/wildfire.vim
```
<SPACE>     选择最近的文本对象
<C-SPACE>   选择上一个最近的文本对象
<leader>s   快速选择设置默认映射
```

#### terryma/vim-expand-region
```
v 快速选择文本
```

#### terryma/vim-multiple-cursors
```
<C-n>  启动
```

