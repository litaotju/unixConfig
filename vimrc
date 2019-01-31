"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  Configuration for the vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'Valloric/YouCompleteMe'

" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'vim-syntastic/syntastic'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"Plugin 'OmniCppComplete' 
Plugin 'taglist.vim'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  End configuration for the vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

" 可用鼠标选中和移动光标
set mouse=a

" color设置
"colorscheme molokai

" 显示行号
set number

" 高亮当前行
set cursorline

" -- 状态行设置--
" 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
set laststatus=2

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

" -- 代码tags --
set tags=./tags "add current directory's generated tags file

set colorcolumn=80
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--mnicppcomplete setting --
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -- 自动补全--
set nocp
filetype on
filetype plugin on

" 按下F3自动补全代码，注意该映射语句后不能有其他字符，包括tab；否则按下F3会自动补全一些乱码
imap <F3> <C-X><C-O>
" 按下F2根据头文件内关键字补全
imap <F2> <C-X><C-I>
"set completeopt=menu,menuone " 关掉智能补全时的预览窗口
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
let OmniCpp_GlobalScopeSearch=1 " enable the global scope search
let OmniCpp_DisplayMode=1 " Class scope completion mode: always show all members
let OmniCpp_DefaultNamespaces=["std"]
let OmniCpp_ShowScopeInAbbr=1 " show scope in abbreviation and remove the last column
let OmniCpp_ShowAccess=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-- Taglist setting --
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置ctags路径
let Tlist_Ctags_Cmd = '/usr/bin/ctags --langmap=c++:+.cu.cuh'

"启动vim后自动打开taglist窗口
"let Tlist_Auto_Open = 1

"不同时显示多个文件的tag，仅显示一个
let Tlist_Show_One_File = 1

"taglist为最后一个窗口时，退出vim
let Tlist_Exit_OnlyWindow = 1

"taglist窗口显示在右侧，缺省为左侧
let Tlist_Use_Right_Window =1

"设置taglist窗口大小
"let Tlist_WinHeight = 100
"let Tlist_WinWidth = 40

""设置taglist打开关闭的快捷键F8
noremap <F5> :TlistToggle<CR>

" WAR for taglist to show cuda functions trees
au BufRead,BufNewFile *.cu set ft=cpp
au BufRead,BufNewFile *.cuh set ft=cpp


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""-----------NERD Tree Setting ---------------
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERD Tree快捷键
noremap <F9> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" 设置宽度
let NERDTreeWinSize=30
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=0
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp', 'tags']
" 显示书签列表
let NERDTreeShowBookmarks=1

let g:ycm_server_python_interpreter = '/usr/bin/python2'
let g:ycm_confirm_extra_conf = 0



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""-----------syntastic setting ---------------
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"" automaticlly fill the location-list after syntax check
let g:syntastic_always_populate_loc_list = 1
"" When set to 1 the error window will be automatically opened when errors are detected, and closed when none are detected. 
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1 

""TODO: configure the correct checker for tcl and cpp
"let g:syntastic_tcl_checkers = ["tclchecker"]
let g:syntastic_cpp_compiler_options = '-std=c++11'

"" make the error window smaller if fewer than 10 errors are found
function! SyntasticCheckHook(errors)
        if !empty(a:errors)
            let g:syntastic_loc_list_height = min([len(a:errors), 10])
        endif
endfunction

nmap <F10> :SyntasticCheck <CR>
imap <F10> <ESC>:SyntasticCheck <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ---- other key-map for vim built-in command and feature --- 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocomplete using the symbols in this file
imap <F4> <C-p>
" save the file
nmap <F8> :w <CR>
imap <F8> <ESC>:w <CR>

" highlight and nohighlight the current searching word
nmap <F6> *
nmap <F7> :nohlsearch<CR>
imap <F7> <ESC>:nohlsearch <CR>
" regenrate the TAGS file using CTAG
imap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
imap <F12> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
