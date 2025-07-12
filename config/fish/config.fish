if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set TERM "xterm-256color"

theme_gruvbox dark medium

if test -e $HOME/.local/bin
  export PATH="$PATH:$HOME/.local/bin/"
end

# Init Starship
starship init fish | source
