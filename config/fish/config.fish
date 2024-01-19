if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set TERM "xterm-256color"

theme_gruvbox dark medium

# Init Starship
starship init fish | source
