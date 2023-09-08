export PATH="/opt/homebrew/bin:$PATH"
#export PATH=/opt/local/bin:$PATH

#eval "$(starship init zsh)"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

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
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"


alias ls='ls --color=auto'
alias df="gdf -h"

#source ~/.zsh/flutter-comp.sh

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/user/.local/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/user/.local/google-cloud-sdk/completion.zsh.inc'; fi

#if type brew &>/dev/null
#then
#  #F#PATH="$(brew --prefix)/share/zsh/site-functions:${F#PATH}"
#
#  autoload -Uz compinit
#  compinit
#fi

#eval "$(flutter bash-completion)"
#PATH=~/.local/bin:$#PATH
#export #PATH="/opt/homebrew/opt/openjdk@11/bin:$#PATH"
#export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"
#PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$#PATH"
#source <(kubectl completion zsh)
#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || #export #PATH="$PYENV_ROOT/bin:$#PATH"
#eval "$(pyenv init -)"

#export DOTNET_ROOT="/opt/homebrew/opt/dotnet@6/libexec"
#export #PATH="/opt/homebrew/opt/dotnet@6/bin:$#PATH"
#PATH=~/.cargo/bin:$#PATH
autoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /opt/homebrew/bin/bit bit
#export #PATH="/opt/homebrew/opt/openssl@3/bin:$#PATH"
#
# brew-command-not-found script for macOS
#
# Usage: Source it somewhere in your .bashrc (bash) or .zshrc (zsh)
#
# Author: Baptiste Fontaine
# URL: https://github.com/Homebrew/homebrew-command-not-found
# License: MIT
# Version: 0.2.0
#

#if ! which brew > /dev/null; then return; fi
#
#homebrew_command_not_found_handle() {
#
#    local cmd="$1"
#
#    # The code below is based off this Linux Journal article:
#    #   http://www.linuxjournal.com/content/bash-command-not-found
#
#    # do not run when inside Midnight Commander or within a Pipe, except if CI
#    if test -z "$CONTINUOUS_INTEGRATION" && test -n "$MC_SID" -o ! -t 1 ; then
#        [ -n "$BASH_VERSION" ] && \
#            TEXTDOMAIN=command-not-found echo $"$cmd: command not found"
#        # Zsh versions 5.3 and above don't print this for us.
#        [ -n "$ZSH_VERSION" ] && [[ "$ZSH_VERSION" > "5.2" ]] && \
#            echo "zsh: command not found: $cmd" >&2
#        return 127
#    fi
#
#    if [ "$cmd" != "-h" ] && [ "$cmd" != "--help" ] && [ "$cmd" != "--usage" ] && [ "$cmd" != "-?" ]; then
#        local txt="$(brew which-formula --explain $cmd 2>/dev/null)"
#    fi
#
#    if [ -z "$txt" ]; then
#        [ -n "$BASH_VERSION" ] && \
#            TEXTDOMAIN=command-not-found echo $"$cmd: command not found"
#
#        # Zsh versions 5.3 and above don't print this for us.
#        [ -n "$ZSH_VERSION" ] && [[ "$ZSH_VERSION" > "5.2" ]] && \
#            echo "zsh: command not found: $cmd" >&2
#    else
#        echo "$txt"
#    fi
#
#    return 127
#}
#
#if [ -n "$BASH_VERSION" ]; then
#    command_not_found_handle() {
#        homebrew_command_not_found_handle $*
#        return $?
#    }
#elif [ -n "$ZSH_VERSION" ]; then
#    command_not_found_handler() {
#        homebrew_command_not_found_handle $*
#        return $?
#    }
#fi

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/user/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/user/google-cloud-sdk/path.zsh.inc'; fi
#
## The next line enables shell command completion for gcloud.
#if [ -f '/Users/user/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/user/google-cloud-sdk/completion.zsh.inc'; fi


#export PATH=$PATH:~/.local/bin:/Users/user3/.local/flutter/bin
alias getip="curl ipinfo.io"
#alias tar=gtar
alias applink="find /Volumes/ssd1/Applications -d 1 -exec ln -sf {} /Applications \;;"



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/user3/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/user3/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/user3/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/user3/google-cloud-sdk/completion.zsh.inc'; fi

#export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

#export PATH=~/flutter/bin:$PATH


export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi
#export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
#export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"
#export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
#export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
#export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
#PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"

#source ~/.zsh/railway
#source ~/.zsh/gh
#source ~/.zsh/npm
#if type brew &>/dev/null; then
#    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
#
#    autoload -Uz compinit
#    compinit
#  fi

export PATH=~/.local/flutter/bin:$PATH
source ~/.zsh/flutter.sh
