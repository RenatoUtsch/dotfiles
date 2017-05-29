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

" Essential settings: nocompatible, 24-bit True Color.
set nocompatible
set termguicolors

" Constants used throughout the entire configuration.
source ~/.config/nvim/settings.vim

" Functions used throughout the entire configuration.
source ~/.config/nvim/functions.vim

" Windows portability.
if has("win32") || has("win64")
  source ~/.config/nvim/windows.vim
endif

" gvim-specific settings.
if has("gui_running")
  source ~/.config/nvim/gvim.vim
endif

" Plugs.
call plug#begin('~/.config/nvim/plugged')
source ~/.config/nvim/plugs.vim
call plug#end()

" Plug configuration.
source ~/.config/nvim/plugs.config.vim

" Editor configuration.
source ~/.config/nvim/config.vim

" Remaps.
source ~/.config/nvim/remaps.vim
