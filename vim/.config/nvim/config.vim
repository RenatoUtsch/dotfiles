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

" Use + register when possible for copy-paste, or * if + is not available.
if has("unnamedplus")  
  set clipboard=unnamed,unnamedplus
else
  set clipboard=unnamed
endif

set autochdir  " Automatically switch to the current file directory.
set background=dark  " Assume dark background.
set hidden  " Allow buffer switching without saving.
set iskeyword-=.  " '.' is an end of word designator.
set iskeyword-=#  " '#' is an end of word designator.
set iskeyword-=-  " '-' is an end of word designator.
set shortmess+=filmnrxoOtT  " Show abbrev. of messages (avoids 'hit enter').
set spell  " Enable spell checking.
set viewoptions=folds,options,cursor,unix,slash  " Unix / Windows compatibility.
set virtualedit=onemore  " Allow the cursor to go after the last character.

" Instead of reverting the cursor to the last position in the buffer, we
" set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

set backup  " Enable backups.
let &backupdir = g:get_cache_dir('backup')  " Backup folder.

set undofile  " Enable persistent undo.
set undolevels=1000  " Number of changes that can be undone.
set undoreload=10000  " Number lines to save for undo on a buffer reload.
let &undodir=g:get_cache_dir('undo')  " Undo folder.

let &directory=g:get_cache_dir('swap')  " Swap folder.

" Ensure the cache dirs all exist.
call g:ensure_dir_exists(g:get_cache_dir(''))
call g:ensure_dir_exists(&undodir)
call g:ensure_dir_exists(&backupdir)
call g:ensure_dir_exists(&directory)

let &colorscheme=g:settings.colorscheme  " Set the colorscheme.

set showmode  " Display the current mode
set cursorline  " Highlight current line
let &colorcolumn=g:settings.max_column  " Highlight max_column.

highlight clear SignColumn  " SignColumn should match background.
highlight clear LineNr  " Use same background color in relative mode for LineNr.

" Whitespace settings.
set linespace=0  " No extra spaces between rows.
set number  " Line numbers on.
set showmatch  " Show matching brackets/parenthesis.
set winminheight=0  " Windows can be 0 line high.
set ignorecase  " Case insensitive search.
set smartcase  " Case sensitive when uppercase characters are present.
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]  " Backspace and cursor keys wrap too.
set scrolljump=5  " Lines to scroll when cursor leaves screen.
set scrolloff=3  " Minimum lines to keep above and below cursor.
set foldenable  " Auto fold code.
set list  " Show difference between tabs and spaces and show trailing blanks.

" Formatting settings.
set wrap  " Wrap long lines.
let &shiftwidth=g:settings.default_indent  " Number of spaces when indenting.
let &tabstop=g:settings.default_indent  " Number of spaces per tab for display.
let &softtabstop=g:settings.default_indent  " Number of spaces per tab in insert mode.
set expandtab  " Tabs are spaces, not tabs.
set nojoinspaces  " Prevents inserting two spaces after punctuation on a join (J).
set splitright  " Puts new vsplit windows to the right of the current.
set splitbelow  " Puts new split windows to the bottom of the current.
set pastetoggle=<F12>  " pastetoggle (sane indentation on pastes).

" Remove trailing whitespaces and ^M chars.
autocmd! FileType * autocmd BufWritePre <buffer> call g:strip_trailing_whitespace()

" Do not enforce PEP8.
let g:python_recommended_style = 0
