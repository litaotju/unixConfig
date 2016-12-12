syntax enable

" size of a hard tabstop
set tabstop=4

" size of an indent
set shiftwidth=4

" insert space for tab
set expandtab

set smarttab

" do smart indent for code, the details can been viewd by typing :help smartindent
" and :help autoindent in vim
set autoindent
set smartindent

" update 2016-12-12 by litao

" 可用鼠标选中和移动光标
set mouse=a

" 显示行号
set number

" -- 状态行设置--
" 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
"set laststatus=2

" 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。
set ruler

" -- 命令行设置--
set showcmd "命令行显示输入的命令
"set showmode "命令行显示vim处在的模式,默认开启，所以就注释掉了

" --find setting--
set incsearch "输入字符串就显示匹配点
set hlsearch  "高亮显示所有匹配点,可以使用 :nohlsearch 来暂时的关闭高亮，再次搜索就会再次高亮

" --代码折叠--
set foldmethod=syntax " 用语法高亮来定义折叠
set foldlevel=100  " 启动vim时不要自动折叠
set foldcolumn=5 " 设置折叠栏宽度
