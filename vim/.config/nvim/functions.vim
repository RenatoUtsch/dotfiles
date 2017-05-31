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

" Ensures a directory exists.
function! EnsureDirExists(path)
  if !isdirectory(expand(a:path))
    call mkdir(expand(a:path))
  endif
endfunction

" Returns the full path from a path relative to the cache dir.
function! GetCacheDir(path)
  return expand(g:settings.cache_dir . '/' . a:path)
endfunction

" Strips trailing whitespace from the entire file.
function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")

    " do the business:
    %s/\s\+$//e

    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
