"========================================================================
"   FileName: blackboard.vim
"    Project: colors
"     Author: YangYong , Department of Aerodynamics , NUAA
"      Email: yangyongnuaa@126.com
"    Created: 2013-04-06 21:09:59
" LastChange: 2013-04-06 21:10:09
"========================================================================
" Vim color scheme
"
" Name:         blackboard.vim
" Maintainer:   Ben Wyrosdick <ben.wyrosdick@gmail.com> 
" Last Change:  20 August 2009
" License:      public domain
" Version:      1.4

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "blackboard"

if has("gui_running")
  "GUI Colors
  highlight Normal guifg=grey80 guibg=#0B1022 
  highlight Cursor guifg=Black   guibg=Green 
  highlight CursorLine guibg=#191E2F 
  highlight LineNr guibg=#323232 guifg=#888888 
  highlight Folded guifg=#f1f3e8 guibg=#444444 
  highlight Pmenusel guibg=#84A7C1
  highlight Pmenu guibg=grey40

  "General Colors
  highlight Comment gui=bold guifg=grey50 "#AEAEAE
  highlight Constant guifg=Green "#CAFE1E
  highlight Keyword guifg=#FF6600
  highlight String guifg=#00D42D
  highlight Type guifg=#84A7C1
  highlight Identifier guifg=#00D42D gui=NONE
  highlight Function guifg=cyan gui=NONE
  highlight clear Search
  highlight Search guibg=#1C3B79
  highlight PreProc gui=bold guifg=lightMagenta "#AA55AA
  highlight Todo guifg=darkCyan guibg=#0B1022


 ""HTML Colors
 "highlight link htmlTag Type
 "highlight link htmlEndTag htmlTag
 "highlight link htmlTagName htmlTag

 ""Ruby Colors
 "highlight link rubyClass Keyword
 "highlight link rubyDefine Keyword
 "highlight link rubyConstant Type
 "highlight link rubySymbol Constant
 "highlight link rubyStringDelimiter rubyString
 "highlight link rubyInclude Keyword
 "highlight link rubyAttribute Keyword
 "highlight link rubyInstanceVariable Normal

 ""Rails Colors
 "highlight link railsMethod Type
else
  "Cterm Colors
  highlight Normal ctermfg=gray ctermbg=black cterm=none
  highlight Cursor ctermfg=Black   ctermbg=Green 
  highlight CursorLine ctermbg=gray 
  highlight LineNr ctermbg=black ctermfg=darkGreen 
  highlight Folded ctermfg=white  ctermbg=gray 
  highlight Pmenu ctermbg=darkCyan 

  "General Colors
  highlight Comment ctermfg=blue
  highlight Constant ctermfg=Green 
  highlight Keyword ctermfg=yellow
  highlight String ctermfg=green
  highlight Type ctermfg=lightCyan
  highlight Identifier ctermfg=green
  highlight Function ctermfg=Cyan
  highlight clear Search
  highlight Search ctermbg=darkBlue
  highlight PreProc ctermfg=darkMagenta "#AA55AA
  highlight Todo ctermfg=darkCyan ctermbg=black
end
