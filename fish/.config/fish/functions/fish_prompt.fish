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

function fish_prompt
  set_color yellow
  printf '%s' (whoami)

  set_color $fish_color_cwd
  printf ' %s' (prompt_pwd)

  # Line 2
  echo
  echo -n '-> '
  set_color normal
end
