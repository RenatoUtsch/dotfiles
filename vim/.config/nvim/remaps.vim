" Copyright 2017 Renato Utsch 
"
" This project is released under the Apache 2 license.
" Licensed under the Apache License, Version 2.0 (the "License"); 
" you may not use this file except in compliance with the License.
" You may obtain a copy of the License at
"
"     http://www.apache.org/licenses/LICENSE-2.0
"
" Unless required by applicable law or agreed to in writing, software
" distributed under the License is distributed on an "AS IS" BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" See the License for the specific language governing permissions and
" limitations under the License.

" Set leader key.
let &mapleader=g:settings.leader_key

" Wrapped lines goes down/up to next row, rather than next line in file.
noremap j gj
noremap k gk

" Change between splits without using C-w.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
if has('nvim')  " For Neovim's terminal.
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-h> <C-\><C-n><C-w>h
    tnoremap <C-j> <C-\><C-n><C-w>j
    tnoremap <C-k> <C-\><C-n><C-w>k
    tnoremap <C-l> <C-\><C-n><C-w>l
endif

" Toggle search highlight with /
nmap <silent> <leader>/ :set invhlsearch<CR>
