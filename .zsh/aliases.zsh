if [[ "$OSTYPE" == "linux-gnu"* ]] then
	if [ -x /usr/bin/dircolors  ]; then
		test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
		alias ls='ls --color=auto'
		alias la='ls -lAh --color=auto'
		alias ll='ls -alF --color=auto'
	
		alias grep='grep --color=auto'
		alias fgrep='fgrep --color=auto'
		alias egrep='egrep --color=auto'
	fi
elif [[ "$OSTYPE" == "darwin"* ]] then
	alias ls='ls -G'
	alias la='ls -lAh -G'
	alias ll='ls -alF -G'
fi
