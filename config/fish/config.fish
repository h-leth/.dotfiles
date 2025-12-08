if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set TERM "xterm-256color"
export MANPAGER="sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | batcat -p -lman'"

theme_gruvbox dark medium

# Init Starship
starship init fish | source
