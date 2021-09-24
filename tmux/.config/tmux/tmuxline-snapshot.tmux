# This tmux statusbar config was created by tmuxline.vim
# on Sun, 28 May 2017

set -g status-justify "left"
set -g status "on"
set -g status-style "none"
set -g message-command-style bg="#504945"
set -g status-left-length "100"
set -g pane-active-border-style fg="#a89984"
set -g status-style bg="#3c3836"
set -g message-command-style fg="#a89984"
set -g pane-border-style fg="#504945"
set -g message-style bg="#504945"
set -g status-left-style "none"
set -g status-right-style "none"
set -g status-right-length "100"
set -g message-style fg="#a89984"
setw -g window-status-style fg="#a89984"
setw -g window-status-style bg="#3c3836","none"
setw -g window-status-activity-style bg="#3c3836",fg="#a89984","none"
setw -g window-status-separator ""
set -g status-left "#[fg=#1d2021,bg=#a89984] #S #[fg=#a89984,bg=#3c3836,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#504945,bg=#3c3836,nobold,nounderscore,noitalics]#[fg=#a89984,bg=#504945] %Y-%m-%d  %H:%M #[fg=#a89984,bg=#504945,nobold,nounderscore,noitalics]#[fg=#1d2021,bg=#a89984] #h "
setw -g window-status-format "#[fg=#a89984,bg=#3c3836] #I #[fg=#a89984,bg=#3c3836] #W "
setw -g window-status-current-format "#[fg=#3c3836,bg=#504945,nobold,nounderscore,noitalics]#[fg=#a89984,bg=#504945] #I #[fg=#a89984,bg=#504945] #W #[fg=#504945,bg=#3c3836,nobold,nounderscore,noitalics]"
