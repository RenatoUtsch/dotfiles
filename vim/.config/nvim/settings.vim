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

" All settings should go to this object.
let g:settings = {}

" Leader key.
let g:settings.leader_key = ','

" Default indent. While you can change this indent on a per-file basis, this
" is the default when you open a new file.
let g:settings.default_indent = 2

" Column to be highlighted to show where lines should be split.
let g:settings.max_column = 81

" Default colorscheme.
let g:settings.colorscheme = 'gruvbox'

" Default airline colorscheme. Please note that if you change this, you'll
" need to regenerate the tmuxline snapshot and update it in tmux's config
" folder.
let g:settings.airline_colorscheme = 'gruvbox'

" Default font and font size for graphical vim.
let g:settings.gvim_font = 'Hack:h10'

" Folder where the cache, backups and undo history should be stored.
let g:settings.cache_dir = '~/.cache/nvim'

" Source file for the work vim config.
let g:settings.work_config = '~/.config/nvim/work.vim'

" If at work.
let g:settings.at_work = filereadable(expand(g:settings.work_config))

