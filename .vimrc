set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ----------------------------------
" Vundle 开始
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'                                                         " git 封装
Plugin 'scrooloose/nerdtree'                                                        " 文件浏览
Plugin 'bling/vim-airline'                                                    		" airliner
Plugin 'vim-airline/vim-airline-themes'                                             " airliner 主题
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'                                           " 主题 F5 切换风格
Plugin 'osyo-manga/vim-brightest'                                                   " 高亮关键词
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }                 " fuzy file finder 模糊文件搜索
Plugin 'junegunn/fzf.vim'
Plugin 'godlygeek/tabular'                                                          " tab
Plugin 'plasticboy/vim-markdown'                                                    " markdown
Plugin 'ShowPairs'
Plugin 'yggdroot/indentline'
Plugin 'pseewald/anyfold'
Plugin 'tpope/vim-surround'
Plugin 'townk/vim-autoclose'														" 自动插入括号类符号
"Plugin 'python-mode/python-mode'													" python mode
call vundle#end()
" Vundle 结束
" ----------------------------------

" 常用
" ----------------------------------
set nocompatible
filetype off
filetype plugin indent on
syntax enable
set tabstop=4
set shiftwidth=4
set softtabstop=2
set nu
set noswapfile
set autoindent
set expandtab
set backspace=indent,eol,start
set wrap                                                                            " 不自动换行
set ruler
set cursorline                                                                      " 高亮当前行号
let mapleader = ","                                                                 " leader key 设为逗号

" 可视化设置
" ----------------------------------
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"let g:airline_theme='simple'

" 图形化界面的vim
if has("gui_running")
	set guioptions-=T																" Gvim隐藏工具栏
	" Macvim 的字体设定
	if has("gui_macvim")
		set guifont=Fira\ Code:h22
	end
	
    set guifont=Fira\ Code:h20	        											" Gvim 的字体设定

    highlight lineNr guifg=#888888 guibg=bg
    highlight VertSplit guifg=#DEDEDE guibg=#888888
    highlight IncSearch guibg=#16181A
    highlight Cursor guibg=#DDDDDD
    highlight Search guibg=#16181A guifg=NONE
    highlight MatchParen guibg=#DDDDDD guifg=#000000
endif

if !has('gui_running')
    highlight VertSplit ctermfg=white ctermfg=white
    highlight LineNr ctermfg=grey ctermbg=bg										" 行号的颜色设置
endif

" 搜索
" ----------------------------------
set hlsearch
set incsearch

" 分屏管理
" ----------------------------------
set splitbelow
set splitright

" 键盘映射
" ----------------------------------
nmap <leader>ev :tabedit $MYVIMRC<cr>
nmap <leader><space> :nohlsearch<cr>
nmap <C-T> :NERDTreeToggle<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <D-p> :CtrlP<cr>
nmap <D-e> :CtrlPMRUFiles<cr>
nmap <leader>l :set list!<CR>                                                       " 显示换行

" 分屏快捷键
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" 前后的tab切换
nnoremap <leader><left> :tabprevious<CR>
nnoremap <leader><right> :tabnext<CR>
" 插件设定
" ----------------------------------
" fzf 键位设定
nnoremap <C-w> :FZF<CR>
nnoremap <C-f> :Ag<CR>
nnoremap <C-b> :Buffers<CR>
let g:fzf_action = {
      \ 'ctrl-o': 'open' }
let g:fzf_layout = { 'down': '~25%' }

let g:ctrlp_custom_ignore = "node_modules\DS_Store\|git"                            " ctrlp 忽略文件

call togglebg#map("<F5>")                                                           " 主题背景切换 

let g:indentLine_char = '▶'                                                         " 将tab显示为三角符号
set listchars=eol:⬎                                                                 " 换行符的显示

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline#extensions#tabline#enabled = 1										" 打开tabline

" Markdown
let g:vim_markdown_folding_disabled = 1                                             " 取消markdown默认折叠内容
let g:vim_markdown_toc_autofit = 1                                                  " markdown目录自适应
nnoremap <leader>t :Toc<CR>                                                         " 打开markdown目录

" pymode
"let g:pymode_python = 'python' " 语法检查设置为python3,默认为python2


" autocmd 自动执行的命令
" ----------------------------------
augroup autosourcing																" vimrc 文件有改动时自动载入该文件
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
