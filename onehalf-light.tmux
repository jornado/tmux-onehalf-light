#!/usr/bin/env bash

main() {

  ## Colors
  current_tab_text='#fafafa'
  status_bar_bg='#e5c07b'
  inactive_tab_text='#c18401'
  current_tab_bg='#98c379'
  name_bg='#98c379'
  white='#ffffff'
  gray='colour236'

  ## Icons
  left_sep=''
  right_sep=''
  right_alt_sep=''

  tmux set-option -g status on
  tmux set-option -g status-left-length 100
  tmux set-option -g status-right-length 100
  tmux set-option -g status-bg "${status_bar_bg}"
  tmux set-option -g pane-active-border-fg "${name_bg}"
  tmux set-option -g pane-border-fg "${gray}"
  tmux set-option -g message-bg "${gray}"
  tmux set-option -g message-fg "${white}"
  tmux set-option -g message-command-bg "${gray}"
  tmux set-option -g message-command-fg "${white}"
  tmux set-option -g status-left " #I #[fg=${status_bar_bg},reverse]${right_sep} "
  tmux set-option -g status-left-style "fg=${white},bg=${name_bg},bold"
  tmux set-option -g status-right "${left_sep}#[bg=${current_tab_text},reverse] %Y-%m-%d %H:%M "
  tmux set-option -g status-right-style "fg=${current_tab_bg},bg=${status_bar_bg}"
  tmux set-window-option -g window-status-activity-style "fg=${white},bg=${gray}"
  tmux set-window-option -g window-status-separator ''
  tmux set-window-option -g window-status-format ' #I #W '
  tmux set-window-option -g window-status-style "fg=${inactive_tab_text},bg=${status_bar_bg}"
  tmux set-window-option -g window-status-current-format \
    "${right_sep}#[fg=${current_tab_text}] #I ${right_alt_sep} #W #[fg=${status_bar_bg},reverse]${right_sep}"
  tmux set-window-option -g window-status-current-style "fg=${status_bar_bg},bg=${current_tab_bg}"
}

main

# vim: set filetype=bash
