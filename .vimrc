"macvim
if has('gui_macvim')
  map <D-f> <c-f>
  map <D-b> <c-b>
  map <D-o> <c-o><c-o>
  map <D-r> <c-r>
  let g:user_emmet_leader_key='<D-y>'

  "͸��
  set transparency=30
endif

".vimrc �����������Ч
autocmd! bufwritepost .vimrc source ~/.vimrc

"��ȫ
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

"���ó���
set undofile
set ul=9999

"������
set nowrap

"��ʾ�к�
set nu!

"�ر�gvim������
set guioptions=

"gvim��������
set guifont=Inconsolata:h15

"��ɫ
colorscheme vividchalk

"����
set shiftwidth=2
set tabstop=2
set et
filetype plugin indent on

"���۵�
set foldmethod=marker

"��������
"set helplang=cn

"֧��DOM�ؼ���
let javascript_enable_domhtmlcss=1

"����
"fileencoding:
"    Vim �е�ǰ�༭���ļ����ַ����뷽ʽ��Vim �����ļ�ʱҲ�Ὣ�ļ�����Ϊ�����ַ����뷽ʽ (�����Ƿ����ļ������)
"fileencodings:
"    Vim�Զ�̽��fileencoding��˳���б� ����ʱ�ᰴ�������г����ַ����뷽ʽ��һ̽�⼴���򿪵��ļ����ַ����뷽ʽ��
"    ���ҽ� fileencoding ����Ϊ����̽�⵽���ַ����뷽ʽ�������ý�Unicode ���뷽ʽ�ŵ�����б����ǰ�棬
"    ��������ϵ���뷽ʽ latin1 �ŵ������
set fileencodings=utf-8,gb2312,gbk,gb18030
"termencoding:
"    Vim ���������ն� (���� Windows �� Console ����) ���ַ����뷽ʽ�����vim���ڵ�term��vim������ͬ�����������á�
"    ���䲻Ȼ���������vim��termencodingѡ��Զ�ת����term�ı���.���ѡ���� Windows �¶����ǳ��õ� GUI ģʽ�� gVim ��Ч��
"    ���� Console ģʽ��Vim ���Ծ��� Windows ����̨�Ĵ���ҳ������ͨ�����ǲ���Ҫ�ı���
set termencoding=utf-8
set fileformats=unix
"encoding:
"     Vim �ڲ�ʹ�õ��ַ����뷽ʽ������ Vim �� buffer (������)���˵��ı�����Ϣ�ı��ȡ�Ĭ���Ǹ������localeѡ��
"     �û��ֲ��Ͻ���ֻ�� .vimrc �иı�����ֵ����ʵ���ƺ�Ҳֻ����.vimrc �иı�����ֵ�������塣
"     �����������һ�ֱ������༭�ͱ����ļ��������vim��encodingΪutf-8�����༭���ļ�����cp936���룬
"     vim���Զ���������ļ�ת��utf-8(vim���ܶ����ķ�ʽ����������д���ļ�ʱ,�ֻ��Զ�ת�س�cp936���ļ��ı������)
set encoding=utf-8

"��ס�ļ��ϴδ򿪵�λ��
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"�л�����
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
