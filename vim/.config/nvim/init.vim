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

" Add ~/.config/nvim to the runtimepath if not in neovim.
if !has('nvim')
  set runtimepath=~/.config/nvim,$VIMRUNTIME
endif

" Constants used throughout the entire configuration.
source ~/.config/nvim/settings.vim

" Functions used throughout the entire configuration.
source ~/.config/nvim/functions.vim

" Windows portability.
if has('win32') || has('win64')
  source ~/.config/nvim/windows.vim
endif

" gvim-specific settings.
if has('gui_running')
  source ~/.config/nvim/gvim.vim
endif

" Plugin configuration.
source ~/.config/nvim/plugins.vim

" Editor configuration.
source ~/.config/nvim/config.vim

" Remaps.
source ~/.config/nvim/remaps.vim
