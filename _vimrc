"========================================================================
"   FileName: _vimrc
"    Project: Vim
"     Author: YangYong , Department of Aerodynamics , NUAA
"      Email: yangyongnuaa@126.com
"    Created: 2013-04-04 15:04:30
" LastChange: 2013-04-06 14:57:38
"========================================================================

"-----------------------------------------需要的插件列表----------------------------------------
"neocomplcache
"neosnippet
"nerdtree
"taglist
"fencview
"load_template
"nerd_commenter
"authorinfo
"mark
"MiniBufExplorer
"
"-----------------------------------------------------------------------------------------------
"
"----------------------------------------常用命令、快捷键---------------------------------------
" <F2>                       --生成tags,在windows下需要把vim73加入环境变量path中。 
" <F3>                       --生成grep光标处字符串所在位置列表，默认搜索当前目录相同扩展名文件
" <F4>                       --编译 [支持Fortran]
" <F5>                       --运行 [支持Fortran,Python]
"
" a[小写]                    --正常模式下，进入插入模式，光标出现在右面
" i[小写]                    --正常模式下，进入插入模式，光标出现在左面
" u[小写]                    --正常模式下，撤销上一个编辑动作
" .                          --正常模式下，重复上一个编辑动作
" Ctrl + r[小写]             --正常模式下，还原撤销的编辑动作
" Ctrl + H                   --插入模式下，光标移行首
" Ctrl + J                   --插入模式下，光标移下一行行尾
" Ctrl + K                   --插入模式下，光标移上一行行尾
" Ctrl + L                   --插入模式下，光标移行尾
" Ctrl + Z                   --取代ESC模式键 [和部分软件的快捷键有冲突]
" Ctrl + S                   --保存文件,如果是F90文件，将自动加载作者、时间信息
" Ctrl + ]                   --转到函数定义
" Ctrl + T                   --返回调用函数
" Ctrl + E                   --一步加载语法模板和作者、时间信息
" Ctrl + Q                   --为代码注释/取消注释
"
" Tab键                      --插入模式下的全功能语法结构补全[neocomplcache和neosnippet插件]
" Shift + Insert             --向Vim中粘贴从别处复制的内容

" nt                         --打开NERDTree [非插入模式]
" tl                         --打开TagList [非插入模式]

" za                         --打开或关闭当前折叠
" zM                         --关闭所有折叠
" zR                         --打开所有折叠

" :set syntax=fortran        --手动选择语法高亮 [或 :set filetype=fortran]

" :%!xxd                     --转储二进制文件，以十六进制形式显示
" :%!xxd -r                  --还原二进制文件


" --主要插件详细用法说明

" :Tlist                     --呼出变量和函数列表 [TagList插件]
" :FencView                  --查看文件编码和更改文件编码 [FencView插件]
" :LoadTemplate              --呼出语法模板 [Load_Template插件]
" :AuthorInfoDetect          --添加作者、时间等信息 [NERD_commenter && authorinfo插件]

" --mark.vim [追踪高亮指定关键字]
"
" \m                         --normal模式下，在想要高亮的单词上面敲击\m即可高亮或取消高亮该单词
" :Mark                      --取消所有高亮
" :Mark abc                  --指定高亮单词 abc 或取消高亮 abc

" --NERDTree [智能文件浏览器]
"
" :NERDTree                  --启动NERDTree插件
" o [小写]                   --切换当前文件或目录的打开、关闭状态
" u                          --打开上层目录
" p [小写]                   --返回上层目录
" P [大写]                   --返回根目录
" K                          --转到当前目录第一个节点
" J                          --转到当前目录最后的节点
" m                          --显示文件系统菜单 [增、删、移]
" ?                          --弹出帮助菜单
" q                          --退出该插件
"-----------------------------------------------------------------------------------------------

"------------------------------------------配色方案---------------------------------------------
"配色方案为blackboard,文件位于vimfiles的colors，颜色更改需参考syntax下的语法文件，如fortran.vim
"-----------------------------------------------------------------------------------------------
"
"------------------------------------------字体设置---------------------------------------------
"设置gvim的字体与字号:
"在windows下格式为 set guifont=Monaco:h15 ,在linux下格式为 set guifont=Monaco\ 15
"如果没有字体需要安装，或换用其他字体
"-----------------------------------------------------------------------------------------------
"
"-----------------------------------自动加载作者、时间信息--------------------------------------
"plugin/authorinfo.vim 已经对其进行修改，原文件保存为authorinfo.vim.origin
"-----------------------------------------------------------------------------------------------
"


colorscheme blackboard       " 着色模式
set guifont=Monaco\ 16       " 字体 && 字号
set tabstop=4                " 设置tab键的宽度
set shiftwidth=4             " 换行时行间交错使用4个空格
set autoindent               " 自动对齐
set backspace=2              " 设置退格键可用
set cindent shiftwidth=4     " 自动缩进4空格
set smartindent              " 智能自动缩进
set ai!                      " 设置自动缩进
set nu!                      " 显示行号
"set showmatch               " 显示括号配对情况
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set incsearch                " 开启实时搜索功能
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
"set cursorline              " 突出显示当前行
set hidden                   " 允许在有未保存的修改时切换缓冲区
set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

if has("gui_running")
    au GUIEnter * simalt ~x  " 窗口启动时自动最大化
    "winpos 20 20            " 指定窗口出现的位置，坐标原点在屏幕左上角
    "set lines=20 columns=90 " 指定窗口大小，lines为高度，columns为宽度
	set guioptions-=m        " 隐藏菜单栏
    set guioptions-=T        " 隐藏工具栏
    "set guioptions-=L       " 隐藏左侧滚动条
    "set guioptions-=r       " 隐藏右侧滚动条
    "set guioptions-=b       " 隐藏底部滚动条
    "set showtabline=0       " 隐藏Tab栏
endif

set writebackup              " 设置无备份文件
set nobackup
set autochdir                " 设定文件浏览器目录为当前目录
"set nowrap                  " 设置不自动换行
set foldmethod=indent        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠

set laststatus=2             " 开启状态栏信息
set cmdheight=1              " 命令行的高度，默认为1

" 每行超过95个的字符用下划线标示
au BufRead,BufNewFile *.f90,*.c,*.cpp,*.java,*.cs,*.sh,*.py,*.vim 2match Underlined /.\%96v/


" 设置编码
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 解决consle输出乱码
language messages zh_CN.utf-8



" 引号 && 括号自动匹配

:inoremap ( ()<ESC>i

:inoremap ) <c-r>=ClosePair(')')<CR>

:inoremap { {}<ESC>i

:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i

:inoremap ] <c-r>=ClosePair(']')<CR>

":inoremap < <><ESC>i

":inoremap > <c-r>=ClosePair('>')<CR>

:inoremap " ""<ESC>i

:inoremap ' ''<ESC>i

:inoremap ` ``<ESC>i

function ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf


" MiniBufExplorer     多个文件切换
" 可使用鼠标双击相应文件名进行切换,<c-tab>切换，d关闭
"let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

" :Tlist              调用TagList
let Tlist_Show_One_File=1                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠

" TxtBrowser          高亮TXT文本文件
au BufRead,BufNewFile *.txt setlocal ft=txt

" :FencView           查看文件编码和更改文件编码
let g:fencview_autodetect=1

" :LoadTemplate       根据文件后缀自动加载模板
let g:template_path='D:\Program Files\Vim\vimfiles\template\'

" :AuthorInfoDetect   自动添加作者、时间等信息，本质是NERD_commenter && authorinfo的结合
let g:vimrc_author='YangYong , Department of Aerodynamics , NUAA'
let g:vimrc_email='yangyongnuaa@126.com'

" Ctrl + H            将光标移到行首
imap <c-h> <ESC>I

" Ctrl + J            将光标移到下一行的行尾
imap <c-j> <ESC>jA

" Ctrl + K            将光标移到上一行的末尾
imap <c-k> <ESC>kA

" Ctrl + L            将光标移到行尾
imap <c-l> <ESC>A

" Ctrl + Z            取代ESC模式键
imap <c-z> <ESC>

" Ctrl + S            保存文件
map <c-s> :call Save()<CR>
imap <c-s> <ESC>:call Save()<CR>i
vmap <c-s> :call Save()<CR>
function Save()
	if &filetype == "fortran" || &filetype == "vim"
		exec "AuthorInfoDetect"
		exec "w"
	else
		exec "w"
	endif
endfunction

" Ctrl + E            一步加载语法模板和作者、时间信息 [非插入模式]
map <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
imap <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
vmap <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi

" nt                  打开NERDTree [非插入模式]
map nt :NERDTree<CR>

" tl                  打开Taglist [非插入模式]
map tl :Tlist<CR><c-l>


"编译 && 运行"
"PGI workstation set environment variables,参考PGI的bat文件
function PgiEnv()
	let $PGI='d:\PROGRA~1\PGI'
	let $PATH=$PATH.';C:\Program Files\Java\jre6\bin'
	let $PATH=$PATH.';d:\Program Files\PGI\flexlm'
	let $CYGROOT='C:\cygwin'
	let $PATH=$CYGROOT.'\bin;'.$PATH
	let $PATH=$PGI.'\win32\2010\cuda\2.3\bin;'.$PATH
	let $PATH=$PGI.'\win32\2010\cuda\3.0\bin;'.$PATH
	let $PATH=$PGI.'\win32\2010\cuda\3.1\bin;'.$PATH
	let $PATH='d:\Program Files\PGI\Microsoft Open Tools 10\bin;'.$PATH
	let $PATH=$PGI.'\win32\10.9\bin;'.$PATH
	let $FLEXLM_BATCH=1
	let $TMP='C:\temp'
	let $PS1='PGI$' 
	"echo PGI Workstation 10.9
	let $PATH='.;'.$PATH
	let $MANPATH=$PGI.'\win32\10.9\man\man1::'
	let $MAKE_MODE='unix'
	let $MAN_CONF=$CYGROOT.'\usr\share\misc\man.conf'
	let $GROFF_FONT_PATH=$CYGROOT.'\usr\share\groff\1.18.1\font'
	let $GROFF_TMAC_PATH=$CYGROOT.'\usr\share\groff\1.18.1\tmac'
	let $MAGIC=$CYGROOT.'\usr\share\file\magic'
	let $TERMCAP=$CYGROOT.'\etc\termcap'
	let $TERM='ansi'
endfunction


" 编译Fortran90源文件
func! CompileF90()
    exec "w"
    "let compilecmd="!gfortran -Wall -pedantic"
    "let compileflag="-o %<"
    "exec compilecmd." % ".compileflag
	call PgiEnv()
	set errorformat=%m(%f:\ %l),%m(%f)
	set makeprg=pgf90\ -r8\ -O2\ -fast\ %\ -o\ %<.exe
	execute "silent make"
	set makeprg=make
	execute "cw 3"
endfunc


" 根据文件类型自动选择相应的编译函数
func! CompileCode()
        exec "w"
        if &filetype == "fortran"
			exec "call CompileF90()"
		elseif &filetype == "python"
			exec "!python %<.py"
		endif
endfunc

" 运行可执行文件
func! RunResult()
        exec "w"
        if &filetype == "fortran"
			exec "! %<"
		elseif &filetype == "python"
			exec "!python %<.py"
        endif
endfunc

" <F4> 一键保存、编译
map <F4> :call CompileCode()<CR>
imap <F4> <ESC>:call CompileCode()<CR>i
vmap <F4> <ESC>:call CompileCode()<CR>

" <F5> 一键保存、运行
map <F5> :call RunResult()<CR>
imap <F5> <ESC>:call RunResult()<CR>i
vmap <F5> <ESC>:call RunResult()<CR>


"Fortran 的相关配置
 let s:extfname = expand("%:e")
 if s:extfname ==? "f90"
     let fortran_free_source=1
     unlet! fortran_fixed_source
 else
     let fortran_fixed_source=1
     unlet! fortran_free_source
 endif
 let fortran_more_precise=1
 let fortran_do_enddo=1
 "去掉固定格式每行开头的红色填充
 let fortran_have_tabs=1

"设置工程Tags，这里X:\Project\tags是假设的刚刚生成的Tags所在具体位置，你需要根据自己的文件位置替代,
"ctags.exe在vim73目录下，需要将vim73添加到环境变量
map <F2> :call Get_tags()<CR>
imap <F2> <ESC> :call Get_tags()<CR>
function Get_tags()
	let location=getcwd()
	exe "silent !ctags -R"
	set tags+=location\tags
	"execute "copen"
endfunction

"对NERD_commenter的设置，Ctrl+q为代码注释/取消注释
map <c-q> \c<space>
imap <c-q> <ESC>\c<space><CR>ki

"自动补全
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select =1

" Plugin key-mappings.
imap <C-w>     <Plug>(neosnippet_expand_or_jump)
smap <C-w>     <Plug>(neosnippet_expand_or_jump)
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" Tell Neosnippet about the other snippets
"let g:neosnippet#snippets_directory='$VIM/vimfiles/snippets'

"vimgrep
"<F3>生成grep光标处字符串所在位置列表，默认搜索当前目录相同扩展名文件
map  <F3> :vim /<c-r>=expand("<cword>")<cr>/gj ./*.<c-r>=expand("%:e")<cr><cr>:cw<cr>
imap <F3> <ESC> :vim /<c-r>=expand("<cword>")<cr>/gj ./*.<c-r>=expand("%:e")<cr><cr>:cw<cr>
vmap <F3> <ESC> :vim /<c-r>=@<cr>/gj ./*.<c-r>=expand("%:e")<cr><cr>:cw<cr>

