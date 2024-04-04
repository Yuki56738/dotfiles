ARCH=$(uname -m)
if [[ $ARCH == arm64 ]]; then
	export HOMEBREW_PREFIX="/opt/homebrew";
	export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
	export HOMEBREW_REPOSITORY="/opt/homebrew";
	export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
	export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
	export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
	source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	if type brew &>/dev/null; then
	    FPATH=$/opt/homebrew/share/zsh-completions:$FPATH
	
	    autoload -Uz compinit
	    compinit
	fi
	export PATH=~/.local/flutter/bin:$PATH
	source ~/.zsh/flutter.sh
	FPATH="$/opt/homebrew/share/zsh/site-functions:${FPATH}"
	autoload -Uz compinit
	compinit
	#PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
	#PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"
	export SDKMAN_DIR="$HOME/.sdkman"
	[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
	#export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
	eval "$(gh completion -s zsh)"
	#eval "$(rbenv init - zsh)"
	source ~/.zsh/rbenv.sh
	export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
	
	
	export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home"
	export PATH=~/.nodenv/shims:$PATH
	source ~/.zsh/git-flow-completion.plugin.zsh
	export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

else
	#source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	#export HOMEBREW_PREFIX="/usr/local";
	#export HOMEBREW_CELLAR="/usr/local/Cellar";
	#export HOMEBREW_REPOSITORY="/usr/local/Homebrew";
	#export PATH="/usr/local/bin:/usr/local/sbin${PATH+:$PATH}";
	#export MANPATH="/usr/local/share/man${MANPATH+:$MANPATH}:";
	#export INFOPATH="/usr/local/share/info:${INFOPATH:-}";
fi

useport(){
	export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
}
source ~/.zsh/git-prompt.sh
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit -u
GIT_PS1_SHOWDIRTYSTATE=true
setopt PROMPT_SUBST
PS1='%F{cyan}%n:%c%f%F{red}$(__git_ps1 "(%s)")%f\$ '
ZSH_GIT_PROMPT_SHOW_UPSTREAM="no"

ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="] "
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_DETACHED="%{$fg_bold[cyan]%}:"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_UPSTREAM_SYMBOL="%{$fg_bold[yellow]%}⟳ "
ZSH_THEME_GIT_PROMPT_UPSTREAM_PREFIX="%{$fg[red]%}(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_UPSTREAM_SUFFIX="%{$fg[red]%})"
ZSH_THEME_GIT_PROMPT_BEHIND="↓"
ZSH_THEME_GIT_PROMPT_AHEAD="↑"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}●"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg[red]%}✚"
ZSH_THEME_GIT_PROMPT_UNTRACKED="…"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[blue]%}⚑"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"


setopt SHARE_HISTORY

PROMPT='${HOST}: %B%40<..<%~ %b$(__git_ps1)'
PROMPT+='%(?.%(!.%F{white}❯%F{yellow}❯%F{red}.%F{blue}❯%F{cyan}❯%F{green})❯.%F{red}❯❯❯)%f '
RPROMPT=''


#alias ls='ls --color=auto'
alias ls='ls -G'
export LSCOLORS=cxfxcxdxbxegedabagacad
alias ll='ls -lGF'
#alias ls='ls -GF'
autoload -U +X bashcompinit && bashcompinit
alias getip="curl ipinfo.io"
alias la='ls -lGFa'
alias enableaptx='sudo defaults write bluetoothaudiod "Enable AptX codec" -bool true'
alias lla='ls -a'



export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools




# Herd injected NVM configuration
export NVM_DIR="/Users/user/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/user/Library/Application Support/Herd/config/php/82/"


# Herd injected PHP binary.
export PATH="/Users/user/Library/Application Support/Herd/bin/":$PATH
export LIBRARY_PATH=$LIBRARY_PATH:/opt/homebrew/lib
#export PATH=~/Qt/6.6.2/macos/bin:$PATH
#export PATH=/usr/local/bin:$PATH
#PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"


