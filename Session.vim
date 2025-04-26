let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +17 lua/plugins/init.lua
badd +5 lua/plugins/whichkey.lua
badd +41 ~/.config/nvim/lua/lazy_nvim.lua
badd +2 lua/plugins/config/whichkey.lua
badd +1 init.lua
badd +16 lua/plugins/telescope.lua
badd +15 lua/plugins/config/telescope.lua
badd +32 lua/plugins/mason.lua
badd +11 lua/plugins/config/mason.lua
badd +1 ~/.config/nvim/lua/plugins/config/conform.lua
badd +9 lua/plugins/conform.lua
argglobal
%argdel
$argadd lua/plugins/init.lua
edit lua/plugins/conform.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 141 + 141) / 282)
exe '2resize ' . ((&lines * 33 + 34) / 69)
exe 'vert 2resize ' . ((&columns * 140 + 141) / 282)
exe '3resize ' . ((&lines * 33 + 34) / 69)
exe 'vert 3resize ' . ((&columns * 140 + 141) / 282)
argglobal
balt lua/plugins/mason.lua
setlocal foldmethod=manual
setlocal foldexpr=v:lua.vim.treesitter.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 16 - ((15 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 026|
wincmd w
argglobal
if bufexists(fnamemodify("~/.config/nvim/lua/plugins/config/conform.lua", ":p")) | buffer ~/.config/nvim/lua/plugins/config/conform.lua | else | edit ~/.config/nvim/lua/plugins/config/conform.lua | endif
if &buftype ==# 'terminal'
  silent file ~/.config/nvim/lua/plugins/config/conform.lua
endif
balt lua/plugins/config/mason.lua
setlocal foldmethod=manual
setlocal foldexpr=v:lua.vim.treesitter.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 17 - ((16 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 17
normal! 02|
wincmd w
argglobal
if bufexists(fnamemodify("lua/plugins/init.lua", ":p")) | buffer lua/plugins/init.lua | else | edit lua/plugins/init.lua | endif
if &buftype ==# 'terminal'
  silent file lua/plugins/init.lua
endif
balt ~/.config/nvim/lua/lazy_nvim.lua
setlocal foldmethod=manual
setlocal foldexpr=v:lua.vim.treesitter.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 53 - ((7 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 53
normal! 05|
wincmd w
exe 'vert 1resize ' . ((&columns * 141 + 141) / 282)
exe '2resize ' . ((&lines * 33 + 34) / 69)
exe 'vert 2resize ' . ((&columns * 140 + 141) / 282)
exe '3resize ' . ((&lines * 33 + 34) / 69)
exe 'vert 3resize ' . ((&columns * 140 + 141) / 282)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
