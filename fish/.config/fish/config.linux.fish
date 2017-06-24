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

# Fix web-component-tester chrome tests.
set -gx LAUNCHPAD_CHROME /usr/bin/google-chrome-stable

alias chrome=google-chrome-stable
alias pacman=pacmatic
alias pbcopy="xclip -sel clip"
alias pbpaste="xclip -sel clip -o"

# Start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end
