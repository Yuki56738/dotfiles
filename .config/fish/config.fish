if status is-interactive
    	# Commands to run in interactive sessions can go here
    	if [ (arch) = 'arm64' ]
    		set --global --export HOMEBREW_PREFIX "/opt/homebrew";
		set --global --export HOMEBREW_CELLAR "/opt/homebrew/Cellar";
		set --global --export HOMEBREW_REPOSITORY "/opt/homebrew";
		fish_add_path --global --move --path "/opt/homebrew/bin" "/opt/homebrew/sbin";
		if test -n "$MANPATH[1]"; set --global --export MANPATH '' $MANPATH; end;
		if not contains "/opt/homebrew/share/info" $INFOPATH; set --global --export INFOPATH "/opt/homebrew/share/info" $INFOPATH; end;
		fish_add_path /opt/homebrew/opt/gnu-tar/libexec/gnubin
		set -x JAVA_HOME /opt/homebrew/opt/openjdk@17
		fish_add_path /opt/homebrew/opt/openjdk@17/bin
		alias ls='gls --color=auto'
	end
	fish_add_path /Users/user/.local/bin
	alias la='ls -alG'
	alias lh='ls -alh'
	alias htop='sudo htop'
	alias clearcache='sudo rm -vrf /System/Library/Caches/* /Library/Caches/* ~/Library/Caches/*'
	set -x ANDROID_HOME /Users/user/Library/Android/sdk
	#fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin
	fish_add_path $ANDROID_HOME/platform-tools
	fish_add_path ~/go/bin
	alias cdd 'cd ~/Documents/dev'
	function useport
		set -xp PATH /opt/local/bin
	end

end

# Added by `rbenv init` on 2024年 8月 3日 土曜日 10時02分59秒 JST
status --is-interactive; and rbenv init - --no-rehash fish | source
