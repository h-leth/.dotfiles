bindkey \^F forward-word
bindkey \^B backward-word

if [[ "$OSTYPE" == "darwin"* ]] then 
	bindkey \^U backward-kill-line
fi
