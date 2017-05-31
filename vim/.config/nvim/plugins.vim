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

" glaive - needs to go before all other plugins {
  call glaive#Install()
" }

" airline {
  let g:airline_powerline_fonts = 1
  let g:airline_colorscheme = g:settings.airline_colorscheme
" }

" gruvbox {
  let g:gruvbox_italic = 1
  let g:gruvbox_contrast_dark = 'hard'
" }

" vim-codefmt {
  Glaive codefmt plugin[mappings]

  augroup autoformat_settings
    autocmd!  " Clear the autocommand list before adding autocommands.
    autocmd FileType bzl AutoFormatBuffer buildifier
    autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
    autocmd FileType dart AutoFormatBuffer dartfmt
    autocmd FileType go AutoFormatBuffer gofmt
    autocmd FileType gn AutoFormatBuffer gn
    autocmd FileType html,css,json AutoFormatBuffer js-beautify
    autocmd FileType java AutoFormatBuffer google-java-format
    autocmd FileType python AutoFormatBuffer yapf
  augroup END
" }

" neomake {
  autocmd! BufWritePost * Neomake
  let g:neomake_javascript_enabled_makers = ['eslint']
" }

" matchit.zip {
  let b:match_ignorecase = 1
" }

" wildfire {
  let g:wildfire_objects = {
      \ "*" : ["i'", 'i"', "i)", "i]", "i}", "ip"],
      \ "html,xml" : ["at"],
      \ }
" }

" undotree {
  nnoremap <Leader>u :UndotreeToggle<CR>
  " If undotree is opened, it is likely one wants to interact with it
  let g:undotree_SetFocusWhenToggle = 1
" }

" vim-indent-guides {
  let g:indent_guides_start_level = 2
  let g:indent_guides_size = 1
  let g:indent_guides_enable_on_vim_startup = 1
" }

" vim-polyglot {
  " Default python highlighting is better than polyglot's.
  let g:polyglot_disabled = ['python']
" }
