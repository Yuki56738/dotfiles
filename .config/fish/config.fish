if status is-interactive
	# Commands to run in interactive sessions can go here
	alias la 'ls -alG'
	alias gls 'gls --color=auto'
	alias lh 'ls -alh'
	alias htop 'sudo htop'
	fish_add_path /usr/local/bin
	set -gx HOMEBREW_PREFIX "/opt/homebrew";
	set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar";
	set -gx HOMEBREW_REPOSITORY "/opt/homebrew";
	fish_add_path -gP "/opt/homebrew/bin" "/opt/homebrew/sbin";
	! set -q MANPATH; and set MANPATH ''; set -gx MANPATH "/opt/homebrew/share/man" $MANPATH;
	! set -q INFOPATH; and set INFOPATH ''; set -gx INFOPATH "/opt/homebrew/share/info" $INFOPATH;
	function useport
		set -a PATH /opt/local/bin
	end
	fish_add_path -gP /opt/homebrew/opt/coreutils/libexec/gnubin
	fish_add_path /Users/user/Library/Application Support/JetBrains/Toolbox/scripts
	fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin
	status --is-interactive; and rbenv init - fish | source
end
