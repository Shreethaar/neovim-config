if exists('g:started_by_firenvim') || exists('g:vscode')
  finish
endif

scriptencoding utf-8

let g:lightline#bufferline#clickable = v:true
let g:lightline#bufferline#enable_nerdfont = v:true
let g:lightline#bufferline#unnamed = '[Нет имени]'
let g:lightline#bufferline#unicode_symbols = v:true
let g:lightline#bufferline#read_only = ' '
let g:lightline#bufferline#modified = ' '
let g:lightline#bufferline#show_number = 2

nmap <Leader>1 <Cmd>SwitchToNormalBuffer<CR><Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Cmd>SwitchToNormalBuffer<CR><Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Cmd>SwitchToNormalBuffer<CR><Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Cmd>SwitchToNormalBuffer<CR><Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Cmd>SwitchToNormalBuffer<CR><Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Cmd>SwitchToNormalBuffer<CR><Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Cmd>SwitchToNormalBuffer<CR><Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Cmd>SwitchToNormalBuffer<CR><Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Cmd>SwitchToNormalBuffer<CR><Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Cmd>SwitchToNormalBuffer<CR><Plug>lightline#bufferline#go(10)

nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)
