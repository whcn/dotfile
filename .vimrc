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
Plugin 'alpertuna/vim-header' "作者信息、版本、时间
noremap <F4> :AddHeader<CR>
let g:header_field_author = 'WuHuan'
let g:header_field_email = '329722594@qq.com'
let g:header_field_timestamp_format = '%Y-%m-%d'
let g:header_field_intro = ' '
let g:header_field_usage = ' '
"-----------------------------------------
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" turns 'hlsearch' off automatically after searching-related motions
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
" fuzzy incremental search
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

"-----------------------------------------
" matchit插件可在配对关键字间跳转
filetype plugin on 
runtime macros/matchit.vim

"-----------------------------------------
" Plugin 'vim-scripts/a.vim'

"-----------------------------------------
Plugin 'kshenoy/vim-signature'
" m,           Place the next available mark
" m.           If no mark on line, place the next available mark. Otherwise, remove (first) existing mark.
" m<Space>     Delete all marks from the current buffer
" ]`           Jump to next mark
" [`           Jump to prev mark
" ]'           Jump to start of next line containing a mark
" ['           Jump to start of prev line containing a mark
" `]           Jump by alphabetical order to next mark
" `[           Jump by alphabetical order to prev mark
" ']           Jump by alphabetical order to start of next line having a mark
" '[           Jump by alphabetical order to start of prev line having a mark
" m/           Open location list and display marks from current buffer
" "-----------------------------------------
" Plugin 'ybian/smartim'
" function! Multiple_cursors_before()
"     let g:smartim_disable = 1
"   endfunction
" function! Multiple_cursors_after()
"     " let g:smartim_disable = 1
"     unlet g:smartim_disable
" endfunction
" -----------------------------------------
" Plugin 'lilydjwg/fcitx.vim'
" set ttimeoutlen=20
" -----------------------------------------
Plugin 'mileszs/ack.vim'
"-----------------------------------------
Plugin 'dyng/ctrlsf.vim' "侧边栏显示查找关键字
nnoremap <leader><leader>s :CtrlSF<CR>
"-----------------------------------------
Plugin 'vim-scripts/Align'
"-----------------------------------------
Plugin 'sjl/gundo.vim' "分支undo
nnoremap <leader>ud :GundoToggle<CR>
"-----------------------------------------
Plugin 'tpope/vim-fugitive' "git接口
"-----------------------------------------
Plugin 'tpope/vim-obsession' "保存vim当前布局
"-----------------------------------------
Plugin 'tpope/vim-abolish' "替换成各种单词形式
"-----------------------------------------
Plugin 'octol/vim-cpp-enhanced-highlight' "c++语法高亮
"-----------------------------------------
Plugin 'kien/ctrlp.vim' "模糊匹配查找文件
"-----------------------------------------
Plugin 'terryma/vim-multiple-cursors' "多光标编辑
"-----------------------------------------
Plugin 'rizzatti/dash.vim' "打开Dash查看文档
"-----------------------------------------
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
"-----------------------------------------
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '/Users/wuhuan/dotfile/.ycm_extra_conf.py' "全局配置文件路径  
" let g:ycm_server_python_interpreter = '/usr/local/bin/python3' "在python3的虚拟环境中指定python2作为该插件的解释器
let g:ycm_server_python_interpreter = '/usr/bin/python' "在python3的虚拟环境中指定python2作为该插件的解释器
" let g:ycm_server_python_interpreter = '/usr/local/bin/python' "在python3的虚拟环境中指定python2作为该插件的解释器
let g:ycm_confirm_extra_conf = 0 "关闭每次导入配置文件前的询问  
let g:ycm_seed_identifiers_with_syntax = 1 "开启语法关键字补全 
let g:ycm_enable_diagnostic_highlighting = 0 "关闭检查高亮
let g:ycm_enable_diagnostic_signs = 0 "关闭语法检查标记
let g:ycm_min_num_of_chars_for_completion = 1 "输入1个字符就开始补全
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1 "在注释中开启补全功能
let g:ycm_autoclose_preview_window_after_completion = 0 "补全后保留预览窗口直至离开插入模式
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口

"使用OmniCppComplete补全
" inoremap <leader>; <C-x><C-o>
"跳转到定义处
nnoremap <leader>gd :YcmCompleter GoToDefinition<cr>
"跳转到定义或声明处
nnoremap <leader>gj :YcmCompleter GoToDefinitionElseDeclaration<cr>
"-----------------------------------------
" Plugin 'scrooloose/syntastic'
" let g:syntastic_always_populate_loc_list = 1 "方便使用syntastic进行语法检查  
"-----------------------------------------
Plugin 'easymotion/vim-easymotion'
let g:EasyMotion_smartcase=1
map <leader> <Plug>(easymotion-prefix)
map <leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-overwin-f)
"-----------------------------------------
" Plugin 'holgado/minibufexpl.vim'
" " 显示/隐藏 MiniBufExplorer 窗口，minibuffer助记mb
" map <leader>mb :MBEToggle<cr>
" " buffer 切换快捷键
" map <leader><tab> :bn<cr>
" map <leader><S-tab> :bp<cr>
"-----------------------------------------
Plugin 'Shougo/vimshell.vim'
"-----------------------------------------
Plugin 'tpope/vim-surround' 
"-----------------------------------------
Plugin 'tpope/vim-commentary'
"-----------------------------------------
Plugin 'Raimondi/delimitMate'
"-----------------------------------------
Plugin 'scrooloose/nerdtree' "浏览文件系统，file list缩写fl
nnoremap <Leader>l :NERDTreeToggle<CR>
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
" Plugin 'taglist.vim'    "列出文件中的类、函数变量
" set tags=tags  "使用当前目录下的tags文件
" set autochdir  "从当前目录向上直至找到tags文件" 
" let Tlist_Ctags_Cmd='/usr/bin/ctags'    "ctags可执行路径
" let Tlist_Show_One_File=1   "只显示当前文件的tag
" let Tlist_Exit_OnlyWindow=1 "若taglist是最后一个窗口，则退出vim
" let Tlist_Auto_Open=1       "打开vim时自动打开taglist
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
" 主题颜色
Plugin 'chriskempson/tomorrow-theme'    
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
" colorscheme Tomorrow-Night-Eighties
" colorscheme Tomorrow-Night
" colorscheme molokai
" set background=light
set background=dark
colorscheme solarized
"-----------------------------------------
Plugin 'Yggdroot/indentLine'    "对齐线段,必须将tab转换为空格才能出现效果
let g:indentLine_color_term=100 "颜色
let g:indentLine_char='¦'       "类型
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
"               Leader Key               |
"-----------------------------------------
"设置leader键
let mapleader="\<Space>"
" 退出
nnoremap <leader>q :q<cr>
" 不做任何保存，直接退出 vim
nmap <leader>Q :qa!<cr>
" 修改配置文件
nnoremap <leader>c :vs ~/.vimrc<cr>25<c-w>>
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <leader>p "+p
" 定义快捷键保存当前窗口内容
nmap <leader>w :w<cr>
" 强制保存
nmap <leader>W :w !sudo tee % > /dev/null<cr>
" 重新加载.vimrc
nmap <leader>s :source ~/.vimrc<cr>
" 增加窗口宽度
nnoremap <leader>> 20<c-w>>
nnoremap <leader>< 20<c-w><
"-----------------------------------------
"                  F1~F9                 |
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
nnoremap <F10> :w<cr>:!clear<cr>:!g++ % -o %< `pkg-config --cflags --libs opencv`<cr>:!./t<cr>
" "F9 <cuda+opencv>
" map <F9> :!clear<cr>:w<cr>:!nvcc % -o a `pkg-config --libs opencv`<cr>:!./a<cr>
" map ,, :!clear<cr>:w<cr>:!nvcc --relaxed-constexpr -std=c++11 % -o a `pkg-config --libs opencv`<cr>:!./a<cr>

" nnoremap <F2> :wa<cr>:make<cr><cr>:!./main<cr>
" nnoremap <F2> :!rm -rf main<cr>:wa<cr>:make<cr>:cw<cr><cr>:!./main<cr>

nnoremap <F2> :!rm -rf main<cr>:wa<cr>:make<cr><cr>:cw<cr><cr>:!./main<cr>

nmap <F3> :call CompileAndRun()<CR>
func! CompileAndRun()
    exec "w"
    exec "!clear"
    if &filetype == 'c'
        " exec '!make'
        " exec '!./tr_float'
        exec '!gcc % -o %<'
        exec '!./%<'
    elseif &filetype == 'cpp'
        " exec '!clang++ -std=c++11 % -o %<'
        exec '!g++ -std=c++11 % -o %<'
        " exec '!icc % -o %<'
        exec "!./%<"
    elseif &filetype == 'python'
		exec "!python %"
    elseif &filetype == 'sh'
        exec "!sh %"
    endif
endfunc

"-----------------------------------------
"                 MacVim                 |
"-----------------------------------------
if has("gui_running")

	" 窗口尺寸
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
	" set imdisable
	" autocmd! InsertLeave * set imdisable
	" autocmd! InsertEnter * set noimdisable
endif

"-----------------------------------------
"               Basic Setting            |
"-----------------------------------------
" 在行尾插入;
inoremap ;; <esc>A;
" 插入花括号
inoremap {{ <esc>A {<cr>}<esc>O
" 插入花括号
inoremap {<cr> <end> {<cr>}<esc>O
" 使用>>或<<时缩进的宽度
set shiftwidth=4    
" 回退时删除的宽度
set softtabstop=4 
" tab缩进宽度
set tabstop=4      
" tab转化为空格
set expandtab     
" 自动缩进"
set autoindent      
" 行号
set number
" 相对行号
set relativenumber
" 高亮当前行/列
set cursorline
set cursorcolumn
" 命令行自动完成
set wildmenu
" 开启语法高亮
syntax enable
" 允许使用指定配色替换默认配色
syntax on
" 选中文本时的颜色
hi Visual term=reverse cterm=reverse guibg=Grey
" 查找高亮
set hlsearch
" 取消大小写敏感
set ignorecase
" 智能大小写敏感
set smartcase
" 递增查找
set incsearch
" 清除查找高亮
nnoremap <silent> <C-l> :<C-u>nohlsearch<cr><C-l> 
" 根据已输入文本过滤历史命令
cnoremap <c-p> <up> 
cnoremap <c-n> <down>
" 避免意外进入Ex模式
nnoremap Q <nop>
" 保存vimrc后自动载入
augroup reload_vimrc   "{
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
" 快速跳转到行首和行尾
nnoremap <leader>b ^
nnoremap <leader>e $

" za: 打开或关闭当前折叠
" zM: 关闭所有折叠
" zR: 打开所有折叠

" 基于缩进折叠代码
set foldmethod=indent
" vim启动时关闭折叠
set nofoldenable
" 垂直打开帮助文档
function! VerticalHelp(tag)
    execute 'vertical help '.a:tag
endfunction
command! -nargs=1 H call VerticalHelp(<f-args>)
" 跳回历史位置
function! GotoJump()
    jumps
    let j = input("Please select your jump: ")
    if j != ''
        let pattern = '\v\c^\+'
        if j =~ pattern
            let j = substitute(j, pattern, '', 'g')
            execute "normal " . j . "\<c-i>"
        else
            execute "normal " . j . "\<c-o>"
        endif
    endif
endfunction
nnoremap <leader><leader>j :call GotoJump()<CR>
" 利用*和#查找当前选中文本
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR> 
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch() 
    let temp = @s 
    norm! gv"sy 
    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g') 
    let @s = temp 
endfunction
" 复制到系统剪贴板
map <leader>y "+y
" 复制至行尾
nnoremap Y y$
" 向上递归查找tags文件
set autochdir
set tags=tags;
" 设置注释风格. 查看文件类型 :set filetype?
autocmd FileType c,cpp,asm  setlocal commentstring=//\ %s
" 当编译和切换文件时自动保存
set autowrite
" 返回normal模式的延迟时间
set ttimeout
set ttimeoutlen=0

