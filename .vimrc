set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"-----------------------------------------
Plugin 'VundleVim/Vundle.vim' "插件管理
"-----------------------------------------
Plugin 'tpope/vim-fugitive' "git接口
"-----------------------------------------
Plugin 'octol/vim-cpp-enhanced-highlight' "c++语法高亮
"-----------------------------------------
Plugin 'kien/ctrlp.vim' "查找文件
"-----------------------------------------
Plugin 'dyng/ctrlsf.vim' "侧边栏显示关键字在不同文件的位置
"-----------------------------------------
Plugin 'terryma/vim-multiple-cursors' "多光标编辑
"-----------------------------------------
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
"-----------------------------------------
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '/Users/wuhuan/dotfile/.ycm_extra_conf.py' "全局配置文件路径  
let g:ycm_confirm_extra_conf = 0 "关闭每次导入配置文件前的询问  
let g:ycm_seed_identifiers_with_syntax = 1 " 开启语法关键字补全 
let g:ycm_enable_diagnostic_highlighting = 0 "关闭检查高亮
let g:ycm_use_ultisnips_completer = 0 "关闭ycm内置的ultisnips
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_auto_trigger = 1

autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口"

"跳转到定义处
nnoremap <leader>jd :YcmCompleter GoToDefinition<cr>
"跳转到定义或声明处
nnoremap <leader>jj :YcmCompleter GoToDefinitionElseDeclaration<cr>
"-----------------------------------------
" Plugin 'scrooloose/syntastic'
" let g:syntastic_always_populate_loc_list = 1 "方便使用syntastic进行语法检查  
"-----------------------------------------
Plugin 'easymotion/vim-easymotion'

" let g:EasyMotion_do_mapping=1

let g:EasyMotion_smartcase=1

map <leader><leader> <Plug>(easymotion-prefix)
" <leader>f{char} to move to {char}
map  <leader><leader>f <Plug>(easymotion-bd-f)
nmap <leader><leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <leader><leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <leader><leader>L <Plug>(easymotion-bd-jk)
nmap <leader><leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <leader><leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>w <Plug>(easymotion-overwin-w)

"-----------------------------------------
" Plugin 'holgado/minibufexpl.vim'
" " 显示/隐藏 MiniBufExplorer 窗口，minibuffer助记mb
" map <leader>mb :MBEToggle<cr>
" " buffer 切换快捷键
" map <leader><tab> :bn<cr>
" map <leader><S-tab> :bp<cr>
"-----------------------------------------
Plugin 'tpope/vim-surround' 
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
"-----------------------------------------
Plugin 'scrooloose/nerdtree' "浏览文件系统，file list缩写fl
nnoremap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" set modifiable
"-----------------------------------------
Plugin 'taglist.vim'    "列出文件中的类、函数变量
set tags=tags  "使用当前目录下的tags文件
set autochdir  "从当前目录向上直至找到tags文件" 
" let Tlist_Ctags_Cmd='/usr/bin/ctags'    "ctags可执行路径
let Tlist_Show_One_File=1   "只显示当前文件的tag
let Tlist_Exit_OnlyWindow=1 "若taglist是最后一个窗口，则退出vim
let Tlist_Auto_Open=1       "打开vim时自动打开taglist
"autocmd BufWritePost * call system("ctags -R")
"let Tlist_Process_File_Always=1
"let Tlist_Use_SingleClick=1
"-----------------------------------------
Plugin 'honza/vim-snippets'                 "代码片段
Plugin 'SirVer/ultisnips'                   "引擎
let g:UltiSnipsExpandTrigger="<tab>"        "使用tab键自动补全    
let g:UltiSnipsJumpForwardTrigger="<c-j>"   "向前遍历
let g:UltiSnipsJumpBackwardTrigger="<c-k>"  "向后遍历
let g:UltiSnipsSnippetDirectories=["mysnippets"]
"-----------------------------------------
"主题颜色
Plugin 'chriskempson/tomorrow-theme'    
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
" colorscheme Tomorrow-Night-Eighties
" colorscheme Tomorrow-Night
" colorscheme molokai
set background=dark
colorscheme solarized
"-----------------------------------------
Plugin 'Yggdroot/indentLine'    "对齐线段
let g:indentLine_color_term=100
let g:indentLine_char='¦'       "风格
" let g:indentLine_loaded=1   "颜色
" let g:indentLine_enabled=1
" let g:indentLine_color_term=5   "颜色
"-----------------------------------------
" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"-----------------------------------------
"           Leader前缀快捷键             |
"-----------------------------------------
"设置leader键
let mapleader="\<Space>"
" 退出
nnoremap <leader>q :q<cr>
" 修改配置文件
nnoremap <leader>c :vs ~/.vimrc<cr>25<c-w>>
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <leader>q :q<cr>
" 定义快捷键保存当前窗口内容
nmap <leader>w :w<cr>:source ~/.vimrc<cr>:<C-u>nohlsearch<cr><C-l>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <leader>WQ :wa<cr>:qa<cr>
" 不做任何保存，直接退出 vim
nmap <leader>Q :qa!<cr>
" 依次遍历子窗口
" nnoremap <leader>nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <leader>kw <C-W>k
" 跳转至下方的子窗口
" nnoremap <leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nnoremap <leader>M %
" 增加窗口宽度
nnoremap <leader>> 20<c-w>>
nnoremap <leader>< 20<c-w><
"在行尾添加分号
" inoremap <leader><leader>; <end>;

"-----------------------------------------
"              F1~F9快捷键               |
"-----------------------------------------
"F1 <c>
" map <F2> :!clear:w<cr>:!gcc % -o a<cr>:!./a<cr>
" "F3 <c++>
" map <F3> :!clear<cr>:w<cr>:!g++ -std=c++11 % -o a<cr>:!./a<cr>
" " map ,, :!clear<cr>:w<cr>:!g++ -std=c++11 % -o a<cr>:!./a<cr>
" "shell
" map <F4> :!clear:w<cr>:!bash %<cr>
" "F5 <python>
" nnoremap <F5> :w<cr>:!clear<cr>:!python %<cr>
" "F8 <cpp+opencv>
" nnoremap <F8> :w<cr>:!clear<cr>:!g++ % -o a `pkg-config --libs opencv`<cr>:!./a<cr>
" "F9 <cuda+opencv>
" map <F9> :!clear<cr>:w<cr>:!nvcc % -o a `pkg-config --libs opencv`<cr>:!./a<cr>
" map ,, :!clear<cr>:w<cr>:!nvcc --relaxed-constexpr -std=c++11 % -o a `pkg-config --libs opencv`<cr>:!./a<cr>

map <F3> :call CompileAndRun()<CR>
func! CompileAndRun()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ -std=c++11 % -o %<"
        exec "! ./%<"
    elseif &filetype == 'python'
		exec "!python %"
    elseif &filetype == 'sh'
        exec "!sh %"
    endif
endfunc

"-----------------------------------------
"               通用快捷键               |
"-----------------------------------------

"在行尾插入;
" inoremap ;<cr> <end>;<cr>
"插入花括号
inoremap {<cr> <end> {<cr>}<esc>O
"自动补全花括号
" inoremap {<cr> {<cr>}<esc>O
"跳到行首
" nmap LB 0
"跳到行尾
" nmap LE $
"使用>>或<<时缩进的宽度
set shiftwidth=4    
"tab缩进宽度
set tabstop=4       
"回退时删除的宽度
set softtabstop=4   
"tab转化为空格
" set expandtab     
"自动缩进"
set autoindent      
"行号
set number
"高亮当前行/列
set cursorline
" set cursorcolumn
"命令行自动完成
set wildmenu
"开启语法高亮
syntax enable
"允许使用指定配色替换默认配色
syntax on
"选中文本时的颜色
hi Visual term=reverse cterm=reverse guibg=Grey
"查找高亮
set hlsearch
"查找时忽略大小写
set smartcase
"递增查找
set incsearch
"清除查找高亮
nnoremap <silent> <C-l> :<C-u>nohlsearch<cr><C-l>
"-----------------------------------------
"切换窗口
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
"-----------------------------------------
"cuda语法高亮
au BufNewFile,BufRead *.cu set ft=cuda.cpp.c
au BufNewFile,BufRead *.cuh set ft=cuda.cpp.c
" autocmd FileType cuda set ft=c

"-----------------------------------------
"                 MacVim                 |
"-----------------------------------------

"窗口尺寸
set lines=50
set columns=130

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"光标
highlight Cursor guibg=#ecac44
highlight iCursor guibg=#6acb25
set guicursor=n-v-c:block-Cursor "块状光标
set guicursor+=i:ver20-iCursor "横杠光标
set guicursor+=a:blinkwait0 "禁止闪烁

" 字体大小
set guifont=Consolas:h15

" 窗口分割线
set fillchars+=vert:¦
highlight vertsplit guibg=bg guifg=grey

" 中文输入法切换
" set noimdisable
" autocmd! InsertLeave * set imdisable
" autocmd! InsertEnter * set noimdisable



