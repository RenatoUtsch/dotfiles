# Copyright 2017 Renato Utsch
#
# This project is released under the Apache 2 license.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Environment variables.
set -gx CC clang
set -gx EDITOR vim
set -gx PATH /usr/local/bin $PATH ~/go/bin ~/.npm-global/bin

if test -n "$TMUX"
  set -gx TERM screen-256color
else
  set -gx TERM xterm-256color
end

# Global aliases.
alias vim=nvim
alias vimdiff="nvim -d"

# OS-specific configuration.
switch (uname)
  case Linux
    source ~/.config/fish/config.linux.fish
end

# At most 6 characters per directory name in prompt.
set -g fish_prompt_pwd_dir_length 6

# Set the colorscheme.
sh ~/.config/base16-shell/scripts/base16-gruvbox-dark-hard.sh
