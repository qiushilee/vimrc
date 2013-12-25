"macvim
if has('gui_macvim')
  map <D-f> <c-f>
  map <D-b> <c-b>
  map <D-o> <c-o><c-o>
  map <D-r> <c-r>
  let g:user_emmet_leader_key='<D-y>'

  "透明
  set transparency=30
endif

".vimrc 保存后立即生效
autocmd! bufwritepost .vimrc source ~/.vimrc

"补全
set cpt=.,w

"ctrl+p
let g:ctrlp_map = '<D-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_tabpage_position = 'a'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

"JSHint
map <F7> :JSHint<CR>

"Brief Mode
let g:SimpleJsIndenter_BriefMode = 1

"永久撤销
set undofile
set ul=9999

"不换行
set nowrap

"显示行号
set nu!

"关闭gvim工具条
set guioptions=

"gvim字体设置
set guifont=Inconsolata:h15

"配色
colorscheme vividchalk

"缩进
set shiftwidth=2
set tabstop=2
set et
filetype plugin indent on

"打开折叠
set foldmethod=marker

"帮助语言
"set helplang=cn

"支持DOM关键字
let javascript_enable_domhtmlcss=1

"编码
"fileencoding:
"    Vim 中当前编辑的文件的字符编码方式，Vim 保存文件时也会将文件保存为这种字符编码方式 (不管是否新文件都如此)
"fileencodings:
"    Vim自动探测fileencoding的顺序列表， 启动时会按照它所列出的字符编码方式逐一探测即将打开的文件的字符编码方式，
"    并且将 fileencoding 设置为最终探测到的字符编码方式。因此最好将Unicode 编码方式放到这个列表的最前面，
"    将拉丁语系编码方式 latin1 放到最后面
set fileencodings=utf-8,gb2312,gbk,gb18030
"termencoding:
"    Vim 所工作的终端 (或者 Windows 的 Console 窗口) 的字符编码方式。如果vim所在的term与vim编码相同，则无需设置。
"    如其不然，你可以用vim的termencoding选项将自动转换成term的编码.这个选项在 Windows 下对我们常用的 GUI 模式的 gVim 无效，
"    而对 Console 模式的Vim 而言就是 Windows 控制台的代码页，并且通常我们不需要改变它
set termencoding=utf-8
set fileformats=unix
"encoding:
"     Vim 内部使用的字符编码方式，包括 Vim 的 buffer (缓冲区)、菜单文本、消息文本等。默认是根据你的locale选择。
"     用户手册上建议只在 .vimrc 中改变它的值，事实上似乎也只有在.vimrc 中改变它的值才有意义。
"     你可以用另外一种编码来编辑和保存文件，如你的vim的encoding为utf-8，所编辑的文件采用cp936编码，
"     vim会自动将读入的文件转成utf-8(vim的能读懂的方式），而当你写入文件时,又会自动转回成cp936（文件的保存编码)
set encoding=utf-8

"记住文件上次打开的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"切换分屏
map <D-w> <C-W><C-W>

"Vundle
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'walm/jshint.vim'
Bundle 'tpope/vim-surround'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-vividchalk'
Bundle 'vim-scripts/tir_black'
Bundle 'drmingdrmer/xptemplate'
let g:xptemplate_key = '<D-\>'
let g:xptemplate_key_pum_only = '<D-r><D-r>'
let g:xptemplate_vars="$author=qiushilee&$email=qiushi@taotaosou.com"
