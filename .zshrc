ARCH=$(uname -m)
if [[ $ARCH == arm64 ]]; then
	eval $(/opt/homebrew/bin/brew shellenv)
	source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
	PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
	if type brew &>/dev/null; then
	    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
	
	    autoload -Uz compinit
	    compinit
	fi
	export PATH=~/.local/flutter/bin:$PATH
	source ~/.zsh/flutter.sh
	FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
	autoload -Uz compinit
	compinit
	PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"
	export SDKMAN_DIR="$HOME/.sdkman"
	[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
	export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
else
	#eval $(/usr/local/bin/brew shellenv)
	source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
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


alias ls='ls --color=auto'
export LSCOLORS=cxfxcxdxbxegedabagacad
alias ll='ls -lGF'
#alias ls='ls -GF'
autoload -U +X bashcompinit && bashcompinit
alias getip="curl ipinfo.io"
alias la='ls -lGFa'


