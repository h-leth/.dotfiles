# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestion
	dirhistory
	history
)

# source $ZSH/oh-my-zsh.sh

# User configuration

# History
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Find out which distribution we are running on
[[ -f ~/.zsh/starship.zsh  ]] && source ~/.zsh/starship.zsh

# User set aliases
# For a full list of active aliases, run `alias`.
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh

# Keybinds
[[ -f ~/.zsh/keybinds.zsh ]] && source ~/.zsh/keybinds.zsh

# Alacritty completions
fpath+=${ZDOTDIR:-~}/.zsh_functions

# Init Starship

eval "$(starship init zsh)" 
