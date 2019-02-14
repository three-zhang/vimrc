" .vimrc

"初始配置""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"加载插件""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

"显示插件""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 皮肤配色
Plug 'tomasr/molokai'

" 首页
Plug 'mhinz/vim-startify'

" vim中文文档
Plug 'yianwillis/vimcdoc'

" 方法、变量、常亮列表
Plug 'majutsushi/tagbar'

" NERDTree是一个用于浏览文件系统的树形资源管理外挂。
Plug 'scrooloose/nerdtree'

" NerdTree显示git状态
Plug 'Xuyuanp/nerdtree-git-plugin'

" NerdTree文件类型高亮
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" vim powerline
Plug 'vim-airline/vim-airline'

" vim-airline 皮肤
Plug 'vim-airline/vim-airline-themes'

" 代码缩进（开启影响性能）
" Plug 'Yggdroot/indentLine'

" nginx 配置语法高亮
Plug 'chr4/nginx.vim'

" 编辑Git状态
Plug 'mhinz/vim-signify'

" powerline git状态
Plug 'tpope/vim-fugitive'

" TODO list
Plug 'vim-scripts/TaskList.vim'

" 显示文件类型图标（开启影响性能）
" Plug 'ryanoasis/vim-devicons'

" markdown 语法高亮
Plug 'plasticboy/vim-markdown'

" markdown 数学符号预览
Plug 'iamcco/mathjax-support-for-mkdp'

" markdown 预览
Plug 'iamcco/markdown-preview.vim'

if has('win32')
    " gvim 透明dll
    Plug 'mattn/vimtweak'
    " gvim 透明插件
    Plug 'mattn/transparency-windows-vim'
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"检测插件""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 解决中文问题
Plug 'lilydjwg/fcitx.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"编辑插件""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim 中执行系统命令
Plug 'christoomey/vim-run-interactive'

" go插件
Plug 'fatih/vim-go'

" 代码补全
Plug 'Valloric/YouCompleteMe', {'do':'python3 install.py --clang-completer --go-completer'}

" ycm 配置文件
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" 补全引擎
Plug 'SirVer/ultisnips'

" 补全规则
Plug 'honza/vim-snippets'

" vim中重命名
Plug 'danro/rename.vim'

" 当你在Vim中新建文件的时候， 自动帮你创建不存在的目录。
Plug 'pbrisbin/vim-mkdir'

" 快速注释
Plug 'scrooloose/nerdcommenter'

" 快速的删除、修改和添加 括号、引号、XML标签等等。
Plug 'tpope/vim-surround'

" 文本对齐
Plug 'godlygeek/tabular'

" 快速跳行
Plug 'Lokaltog/vim-easymotion'

" 切换头文件 (e.g. ".h" and ".cpp" files)
Plug 'derekwyatt/vim-fswitch'

" 优化移动插件
Plug 'matze/vim-move'

" 智能选择
Plug 'gcmt/wildfire.vim'

" 快速选择文本
Plug 'terryma/vim-expand-region'

" 多光标操作
Plug 'terryma/vim-multiple-cursors'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"搜索插件""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 文本搜索工具
Plug 'rking/ag.vim'

" 文本搜索工具
Plug 'mileszs/ack.vim'

" 搜索插件grep
Plug 'vim-scripts/EasyGrep'

" 主要的功能是对文件进行模糊的查找。
Plug 'kien/ctrlp.vim'

" 全局所搜插件
Plug 'dyng/ctrlsf.vim'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Initialize plugin system
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"基础配置""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 判断系统
if has('win32')
    " 隐藏菜单栏
    set guioptions-=m
    " 隐藏工具栏
    set guioptions-=T
    " 设置字体
    set guifont=DroidSansMonoforPowerline:h9
else
    " 设置字体
    set guifont=DroidSansMono_Nerd_Font:h12
endif

" 不与 Vi 兼容（采用 Vim 自己的操作命令）。
set nocompatible

" 文件类型检测
filetype off

" 使用 utf-8 编码。
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8

" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu


"显示配置""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 打开语法高亮。自动识别代码，使用多种颜色显示。
syntax on

" 开启文件类型检查，并且载入与该类型对应的缩进规则。
" 比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则~/.vim/indent/python.vim。
filetype indent on

" 启用256色。
set t_Co=256

" 深色系背景
set background=dark

" 在底部显示，当前处于命令模式还是插入模式。
set showmode

" 命令模式下，在底部显示，当前键入的指令。比如，键入的指令是2y3d，
" 那么底部就会显示2y3，当键入d的时候，操作完成，显示消失。
set showcmd

" 设置Tab长度为4空格
set tabstop=4
set ts=4

" 在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数。
set shiftwidth=4
set sw=4

" Tab 转为多少个空格。
set softtabstop=4

" 行号
set number

" 光标所在的当前行高亮。
set cursorline

" 设置行宽，即一行显示多少个字符。
set textwidth=120

" 自动折行，即太长的行分成几行显示。
" set wrap

" 关闭自动折行
set nowrap

" 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行。
set linebreak

" 指定折行处与编辑窗口的右边缘之间空出的字符数。
set wrapmargin=2

" 垂直滚动时，光标距离顶部/底部的位置（单位：行）。
set scrolloff=5

" 水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用。
set sidescrolloff=15

" 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set laststatus=2

" 在状态栏显示光标的当前位置（位于哪一行哪一列）。
set ruler

" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set showmatch

" 如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。
set listchars=tab:»■,trail:■
set list



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"操作配置""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 退格键bug
set backspace=indent,eol,start

" 启用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 设置粘贴模式
" 显示空格和tab键在Vim中通过鼠标右键粘贴时会在行首多出许多缩进和空格，
" 通过set paste可以在插入模式下粘贴内容时不会有任何格式变形、胡乱缩进等问题。
set paste

" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set incsearch

" 搜索时，高亮显示匹配结果。
set hlsearch

" 搜索时忽略大小写。
set ignorecase

" 如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。
" 比如，搜索Test时，将不匹配test；搜索test时，将匹配Test。
set smartcase

" 打开英语单词的拼写检查。
" set spell spelllang=en_us

" 不创建备份文件。默认情况下，文件保存时，会额外创建一个备份文件，
" 它的文件名是在原文件名的末尾，再添加一个波浪号（〜）。
set nobackup

" 不创建交换文件。交换文件主要用于系统崩溃时恢复文件，文件名的开头是.、结尾是.swp。
set noswapfile

" 保留撤销历史。
" Vim 会在编辑时保存操作历史，用来供用户撤消更改。默认情况下，
" 操作记录只在本次编辑时有效，一旦编辑结束、文件关闭，操作历史就消失了。
" 打开这个设置，可以在文件关闭后，操作记录保留在一个文件里面，继续存在。
" 这意味着，重新打开一个文件，可以撤销上一次编辑时的操作。
" 撤消文件是跟原文件保存在一起的隐藏文件，文件名以.un~开头。
set undofile

" 设置备份文件、交换文件、操作历史文件的保存位置。
" 结尾的//表示生成的文件名带有绝对路径，路径中用%替换目录分隔符，这样可以防止文件重名。
set backupdir=~/.vim/.backup//  
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//  

" 自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况，
" 默认的工作目录是打开的第一个文件的目录。
" 该配置可以将工作目录自动切换到，正在编辑的文件的目录。
set autochdir

" 出错时，不要发出响声。
set noerrorbells

" 出错时，发出视觉提示，通常是屏幕闪烁。
" set visualbell

" Vim 需要记住多少次历史操作。
set history=1000

" 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。
set autoread

" 命令模式下，底部操作指令按下 Tab 键自动补全。
" 第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
set wildmenu
set wildmode=longest:list,full

" 继承前一行的缩进方式，适用于多行注释
set autoindent

" 由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格。
set expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"系统配置""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置<leader>
let mapleader=","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"高级配置""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 当新建 .h .c .hpp .cpp .mk .sh等文件时自动调用SetTitle 函数
autocmd BufNewFile *.[ch],*.hpp,*.cpp,Makefile exec ":call SetComment()" 
" 加入注释 
func SetComment()
    call setline(1,"")
    call append(line("."), "/*")
    call append(line(".")+1, " *   Copyright (C) Three Zhang")
    call append(line(".")+2, " *   Copyright (C) QuantMatrix, Inc.") 
    call append(line(".")+3, " */") 
    call append(line(".")+4, "")
    call append(line(".")+5, "")
endfunc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"插件配置""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"显示插件""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 皮肤配色
" Plug 'tomasr/molokai'

colorscheme molokai


" 首页
" Plug 'mhinz/vim-startify'
" 无配置


" vim中文文档
" Plug 'yianwillis/vimcdoc'
" 无配置


" 方法、变量、常亮列表
" Plug 'majutsushi/tagbar'

    "ctags程序的路径
let g:tagbar_ctags_bin="/usr/local/bin/ctags"
    "窗口宽度的设置
let g:tagbar_width=50
    " 自动对焦
let g:tagbar_autofocus = 1
    "如果是c语言的程序的话，tagbar自动开启
" autocmd BufReadPost *.cpp,*.c,*.h,*.py,*.hpp,*.cc,*.cxx call tagbar#autoopen()
    " F3开启关闭
nmap <silent> <F3> :Tagbar<cr>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


" NERDTree是一个用于浏览文件系统的树形资源管理外挂。
" Plug 'scrooloose/nerdtree'

    " 显示行号
let NERDTreeShowLineNumbers=1
    " 设置宽度
let NERDTreeWinSize=40
    " 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
    " 不显示隐藏文件
let g:NERDTreeHidden=0
    " 忽略一下文件的显示
let NERDTreeIgnore=['\.o','\~$','\.swp','\.gcda','\.gcno','\.log','Makefile','config.h.in','compile','config.guess','config.status','config.sub','configure','depcomp','install-sh','missing','aclocal.m4','stamp-h1']
    " 当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    " F2开启关闭
nmap <silent> <F2> :NERDTreeToggle<cr>


" NerdTree显示git状态
" Plug 'Xuyuanp/nerdtree-git-plugin'
" 无配置


" NerdTree文件类型高亮
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" 无配置


" vim powerline
" Plug 'vim-airline/vim-airline'

    "设置皮肤
let g:airline_theme="base16_monokai"
    "使用powerline打过补丁的字体。
let g:airline_powerline_fonts = 1 
    " 打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件。
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
    " 启动 git 状态(fugitive)
let g:airline#extensions#branch#enabled = 1
    " 在没有检测到分支时更改文本
let g:airline#extensions#branch#empty_message = ''
    " 定义不同vcs系统分支的顺序
let g:airline#extensions#branch#vcs_priority = ["git", "mercurial"]
    " 将长分支名称截断为固定长度
let g:airline#extensions#branch#displayed_head_limit = 20
    " 定义分支格式
let g:airline#extensions#branch#format = 1
    " 以这个数目提交清空sha1
let g:airline#extensions#branch#sha1_len = 10

    " 上下翻文件
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>


" vim-airline 皮肤
" Plug 'vim-airline/vim-airline-themes'
" 无配置


" 代码缩进
" Plug 'Yggdroot/indentLine'

" let g:indentLine_enabled = 1


" nginx 配置语法高亮
" Plug 'chr4/nginx.vim'
" 无配置


" 编辑Git状态
" Plug 'mhinz/vim-signify'
" 无配置


" powerline git状态
" Plug 'tpope/vim-fugitive'
" 无配置


" TODO list
" Plug 'vim-scripts/TaskList.vim'
    " 映射快捷键
map <leader>todo <Plug>TaskList


" 显示文件类型图标
" Plug 'ryanoasis/vim-devicons'
" 无配置


" markdown 语法高亮
" Plug 'plasticboy/vim-markdown'

    " LaTex 数学公式
let g:vim_markdown_math = 1
    " YAML
let g:vim_markdown_frontmatter = 1
    " JSON
let g:vim_markdown_json_frontmatter = 1
    " TOML
let g:vim_markdown_toml_frontmatter = 1


" markdown 数学符号预览
" Plug 'iamcco/mathjax-support-for-mkdp'
" 无配置


" markdown 预览
" Plug 'iamcco/markdown-preview.vim'

    " 普通模式下 打开预览
nmap <silent> <F8> <Plug>MarkdownPreview
    " 插入模式下 关闭预览
imap <silent> <F8> <Plug>MarkdownPreview
    " 普通模式下 关闭预览
nmap <silent> <F9> <Plug>StopMarkdownPreview
    " 普通模式下 关闭预览
imap <silent> <F9> <Plug>StopMarkdownPreview


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"检测插件""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 解决中文问题
" Plug 'lilydjwg/fcitx.vim'
" 无配置

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"编辑插件""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim 中执行系统命令
" Plug 'christoomey/vim-run-interactive'

    " 设置快捷键
nnoremap <leader>ri :RunInInteractiveShell<space>


" go插件
" Plug 'fatih/vim-go'
    " 禁止自动下载
let g:go_disable_autoinstall = 0
    " 函数高亮
let g:go_highlight_functions = 1
    " 方法高亮
let g:go_highlight_methods = 1
    " 结构体高亮
let g:go_highlight_structs = 1
    " 高亮
let g:go_highlight_operators = 1
    " 高亮
let g:go_highlight_build_constraints = 1
    " 安装插件
let g:go_fmt_command = "goimports"
    " 关闭保存自动格式化
let g:go_fmt_autosave = 0
    " 关闭保存自动格式化
let g:go_asmfmt_autosave = 0


" 代码补全
" Plug 'Valloric/YouCompleteMe'

    " 每次打开文件都会提示是否载入YCM配置文件
let g:ycm_confirm_extra_conf = 0
    " 开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files = 1
    " python 解析器
let g:ycm_server_python_interpreter='/usr/local/bin/python3'
    " 配置文件路径
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
    " 此选项控制各种语义完成引擎的基于字符的触发器。
let g:ycm_semantic_triggers =  {'c': ['->', '.'], 'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'], 'ocaml': ['.', '#'], 'cpp,cuda,objcpp': ['->', '.', '::'] }
    " 智能关闭自动补全窗口
let g:ycm_autoclose_preview_window_after_completion = 1
    "注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
    " 输入第2个字符开始补全
let g:ycm_min_num_of_chars_for_completion = 2
    " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc = 0
    " 开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
    " 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
    " 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
    " 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {'tagbar' : 1, 'nerdtree' : 1}
    " youcompleteme  默认tab  s-tab 和 ultisnips 冲突
    " 弹出列表时选择第1项的快捷键
let g:ycm_key_list_select_completion = ['<Down>']
    " 弹出列表时选择前1项的快捷键
let g:ycm_key_list_previous_completion = ['<Up>']
    " 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = '<M-;>'
" let g:ycm_key_invoke_completion = ['<C-Space>']

    " 回车即选中补全菜单中的当前项
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"    
    " 该命令尝试执行它可以执行的“最明智的”GoTo操作。
nnoremap <leader>g :YcmCompleter GoTo<CR>
    " 查找当前行的头文件并跳转到它。
nnoremap <leader>gi :YcmCompleter GoToInclude<CR>
    " 查找光标下的标识符并跳转到其声明。
nnoremap <leader>gdl :YcmCompleter GoToDeclaration<CR>
    " 查找光标下的标识符并跳转到其定义。这仅适用于符号的定义位于当前翻译单元中时。
nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>
    " 跳转两者结合体
nnoremap <leader>gde :YcmCompleter GoToDefinitionElseDeclaration<CR>
    " 与GoTo命令相同，只是在AST中查找节点前，不会使用libclang重新编译文件。
" :YcmCompleter GoToImprecise
    " 显示光标下的变量或方法的类型，以及父类型。
nnoremap <leader>gt :YcmCompleter GetType<CR>
    " force recomile with syntastic
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>
    " 上下左右键的行为 会显示其他信息,inoremap由i 插入模式和noremap不重映射组成，只映射一层，不会映射到映射的映射
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
    " 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	


" ycm 配置文件
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
    " 生成项目 .ycm_extra_conf.py 文件
nnoremap <F12> :YcmGenerateConfig<CR>


" 补全引擎
" Plug 'SirVer/ultisnips'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
    " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" 补全规则
" Plug 'honza/vim-snippets'
" 无配置


" vim中重命名
" Plug 'danro/rename.vim'
" 无配置


" 当你在Vim中新建文件的时候， 自动帮你创建不存在的目录。
" Plug 'pbrisbin/vim-mkdir'
" 无配置


" 快速注释
" Plug 'scrooloose/nerdcommenter'

    " Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
    " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
    " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
    " Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
    " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
    " Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
    " Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" 快速的删除、修改和添加 括号、引号、XML标签等等。
" Plug 'tpope/vim-surround'
" 无配置


" 文本对齐
" Plug 'godlygeek/tabular'
" 无配置


" 快速跳行
" Plug 'Lokaltog/vim-easymotion'


" 切换头文件 (e.g. ".h" and ".cpp" files)
" Plug 'derekwyatt/vim-fswitch'

    " ,sw 就能在实现 cpp 文件和 h文件间切换
nmap <silent> <Leader>sw :FSHere<cr>


" 优化移动插件
" Plug 'matze/vim-move'
    
    " 自定义修饰符
let g:move_key_modifier = 'C'


" 智能选择
" Plug 'gcmt/wildfire.vim'


" 快速选择文本
" Plug 'terryma/vim-expand-region'

vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)


" 多光标操作
" Plug 'terryma/vim-multiple-cursors'
    " 自定义按钮
let g:multi_cursor_use_default_mapping = 0
    " 
let g:multi_cursor_start_word_key = '<C-n>'
    " 
let g:multi_cursor_select_all_word_key = '<A-n>'
    " 
let g:multi_cursor_start_key = 'g<C-n>'
    " 选中全部
let g:multi_cursor_select_all_key = 'g<A-n>'
    " 选择下一个
let g:multi_cursor_next_key = '<C-n>'
    " 放弃一个, 回到上一个
let g:multi_cursor_prev_key = '<C-;>'
    " 跳过当前选中, 选中下一个
let g:multi_cursor_skip_key = '<C-x>'
    " 退出
let g:multi_cursor_quit_key = '<Esc>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"搜索插件""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 文本搜索工具
" Plug 'rking/ag.vim'

    " Use Ag over Grep
set grepprg=ag\ --nogroup\ --nocolor


" 文本搜索工具
" Plug 'mileszs/ack.vim'

    " 替换ACK
let g:ackprg = 'ag --vimgrep'


" 搜索插件grep
" Plug 'vim-scripts/EasyGrep'


" 主要的功能是对文件进行模糊的查找。
" Plug 'kien/ctrlp.vim'

let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

if has('win32')
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
else
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip
endif

let g:ctrlp_custom_ignore = {'dir': '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$', 'link': 'some_bad_symbolic_links'}
let g:ctrlp_user_command = 'ag %s -l –nocolor –hidden -g ""'
    " Ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0


" 在没有显式起始目录的情况下调用时，ctrl lp将根据这个变量设置它的本地工作目录
let g:ctrlp_working_path_mode = 'ra'


" 全局所搜插件
" Plug 'dyng/ctrlsf.vim'

    " 设置搜索引擎
let g:ctrlsf_ackprg = 'ag' 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"其他设置""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 背景透明
hi Normal  ctermfg=252 ctermbg=none

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
