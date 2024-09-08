if status is-interactive
    # Commands to run in interactive sessions can go here
	fish_add_path /opt/homebrew/bin
	fish_add_path /opt/homebrew/sbin
    	fish_add_path /usr/local/bin
	fish_add_path /opt/homebrew/opt/gnu-tar/libexec/gnubin
	alias la 'ls -alG'
	alias gls 'gls --color=auto'
	alias lh 'ls -alh'
	alias htop 'sudo htop'
	alias ls 'ls -G'
	set -x ANDROID_HOME /Users/user/Library/Android/sdk
	#fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin
	fish_add_path $ANDROID_HOME/platform-tools
	fish_add_path /opt/homebrew/opt/openjdk@17/bin
	fish_add_path ~/go/bin
	alias cdd 'cd ~/Documents/dev'
	function useport
		set -xp PATH /opt/local/bin
	end
end

# Added by `rbenv init` on 2024年 8月 3日 土曜日 10時02分59秒 JST
status --is-interactive; and rbenv init - --no-rehash fish | source
