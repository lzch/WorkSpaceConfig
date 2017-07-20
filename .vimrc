set nocompatible              " be iMproved, required

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/lizc/.vim/bundle/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

set nu
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif 		"光标指在上次退出位置

filetype on
"在输入部分查找模式时显示相应的匹配点
set incsearch 

"显示 TAB 键
set listchars=tab:>-,trail:-
set list
set cursorline   
set hlsearch

"状态栏
"使得状态栏和命令行分开
set laststatus=2
"文件名、文件格式、文件类型、光标所在字符的ASCII值、16进制值、所在行、列、文件总行数。
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=/%03.3b]\ [HEX=/%02.2B]\ [POS=%04l,%04v]\ [LEN=%L]

set tabstop=8
set shiftwidth=4
set expandtab
set autoindent
set mouse=a

set tags=tags;
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


let Tlist_Show_One_File=1
let Tlist_WinWidt =28
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Left_Windo =1
let Tlist_Auto_Open=1

let g:DoxygenToolkit_authorName="Li.Zhengchun" 

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
