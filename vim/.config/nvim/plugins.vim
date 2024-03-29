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

" Sane defaults.
if !has('nvim')
  packadd! vim-neovim-defaults
endif

" maktaba and glaive needs to go before all other plugins if not at work
if !g:settings.at_work
  packadd! vim-codefmt
  packadd! vim-maktaba
  packadd! vim-glaive
  call glaive#Install()

  Glaive codefmt plugin[mappings]

  augroup autoformat_settings
    autocmd!
    autocmd FileType bzl AutoFormatBuffer buildifier
    autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
    autocmd FileType dart AutoFormatBuffer dartfmt
    autocmd FileType go AutoFormatBuffer gofmt
    autocmd FileType gn AutoFormatBuffer gn
    autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
    autocmd FileType java AutoFormatBuffer google-java-format
    autocmd FileType python AutoFormatBuffer yapf
    " Alternative: autocmd FileType python AutoFormatBuffer autopep8
    autocmd FileType rust AutoFormatBuffer rustfmt
    autocmd FileType vue AutoFormatBuffer prettier
  augroup END
endif

packadd! ack.vim
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

packadd! auto-pairs
packadd! conflict-marker.vim

packadd! gruvbox
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'

packadd! matchit.zip
let b:match_ignorecase = 1


" At work use syntastic instead of neomake
if !g:settings.at_work
  packadd! neomake
  call neomake#configure#automake('nrwi', 500)
  let g:neomake_open_list = 2
  let g:neomake_javascript_enabled_makers = ['eslint']
  let g:neomake_python_enabled_makers = ['pylint']
endif

packadd! numbers.vim
packadd! restore_view.vim
packadd! tabular
packadd! tmuxline.vim

packadd! undotree
nnoremap <Leader>u :UndotreeToggle<CR>
" If undotree is opened, it is likely one wants to interact with it
let g:undotree_SetFocusWhenToggle = 1

packadd! vim-airline
let g:airline_powerline_fonts = 1
let g:airline_colorscheme = g:settings.airline_colorscheme
let g:airline_theme = g:settings.airline_colorscheme

packadd! vim-bufferline
packadd! vim-closetag
packadd! vim-commentary

packadd! vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_size = 1
let g:indent_guides_enable_on_vim_startup = 1

packadd! vim-polyglot

packadd! vim-signify
packadd! vim-spirv
packadd! vim-surround
packadd! vim-tmux-navigator

packadd! wildfire.vim
let g:wildfire_objects = {
    \ "*" : ["i'", 'i"', "i)", "i]", "i}", "ip"],
    \ "html,xml" : ["at"],
    \ }
