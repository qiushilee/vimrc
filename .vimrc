" load vim bundles using vundle
source ~/.vimrc.bundles

"gvim字体设置
set guifont=Inconsolata:h14

"行高
set linespace=7

"配色
colorscheme vividchalk
"set background=light

"macvim {{{
if has('gui_macvim')
  map <D-f> <c-f>
  map <D-b> <c-b>
  map <D-o> <c-o><c-o>
  map <D-r> <c-r>
  map <D-k> <c-k>
  map <D-j> <c-j>

  "标签页管理
  map <D-1> :tabr<cr>
  map <D-2> :tabn 2<cr>
  map <D-3> :tabn 3<cr>
  map <D-4> :tabn 4<cr>
  map <D-5> :tabn 5<cr>
  map <D-5> :tabn 5<cr>
  map <D-6> :tabn 6<cr>
  map <D-7> :tabn 7<cr>
  map <D-8> :tabn 8<cr>
  map <D-9> :tabn 9<cr>
  map <D-0> :tabl<cr>
  let g:user_emmet_leader_key='<D-y>'

  "Tern for Vim
  "Rename the variable under the cursor.
  map <F6> :TernRename<cr>
  "Show all references to the variable or property under the cursor.
  map <F7> :TernRefs<cr>
  "Jump to the definition of the thing under the cursor.
  map <F8> :TernDef<cr>

  "透明
  "set transparency=15
endif
"}}}

"Search {{{
set hlsearch
map <F10> :CtrlSF 
"}}}

"切换分屏
map <D-w> <C-W><C-W>

".vimrc 保存后立即生效
autocmd! bufwritepost .vimrc source ~/.vimrc

"补全
set cpt=.,w

"代码片断补全 {{{
let g:xptemplate_key = '<D-\>'
let g:xptemplate_key_pum_only = '<D-r><D-r>'
let g:xptemplate_vars="$author=qiushilee&$email=showbei@gmail.com"
"let g:xptemplate_lib_filter = '~/.vim/customize'
"}}}

"ctrl+p {{{
let g:ctrlp_map = '<D-t>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_tabpage_position = 'a'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
"Speed up indexing
"By default, CtrlP uses globpath() to build its index. A faster alternative is to use ag (FYI: ag is just like ack, except faster).
"form: http://blog.patspam.com/2014/super-fast-ctrlp
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
"}}}

"Brief Mode
let g:SimpleJsIndenter_BriefMode = 1

"永久撤销
set undofile
set ul=9999

"不换行
set nowrap

"显示行号
set number

"缩进 {{{
set shiftwidth=2
set tabstop=2
set et
"}}}

"打开折叠
set foldmethod=marker

"帮助语言
set helplang=cn

"编码 {{{
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
"}}}

"记住文件上次打开的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"界面 {{{
set guioptions=
set laststatus=2
"}}}

"格式化代码
map <F5> :call JsBeautify()<cr>
