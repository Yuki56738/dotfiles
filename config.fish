if status is-interactive
    # Commands to run in interactive sessions can go here
    set --global --export HOMEBREW_PREFIX "/opt/homebrew";
    set --global --export HOMEBREW_CELLAR "/opt/homebrew/Cellar";
    set --global --export HOMEBREW_REPOSITORY "/opt/homebrew";
    fish_add_path --global --move --path "/opt/homebrew/bin" "/opt/homebrew/sbin";
    if test -n "$MANPATH[1]"; set --global --export MANPATH '' $MANPATH; end;
    if not contains "/opt/homebrew/share/info" $INFOPATH; set --global --export INFOPATH "/opt/homebrew/share/info" $INFOPATH; end;
    status --is-interactive; and source (anyenv init -|psub)

    alias ls='gls --color=auto'
    alias ll='ls -l'
    alias la='ls -al'
    alias fishvi='vim $HOME/.config/fish/config.fish'
    alias cdd='cd $HOME/dev'
    alias clearcache='sudo rm -vrf /System/Library/Caches/* /Library/Caches/* ~/Library/Caches/*'
    alias rmnpmi='rm -rf node_modules/ && npm i'
    alias wineshell='eval "$("/Applications/Whisky.app/Contents/Resources/WhiskyCmd" shellenv "Steam")"'
    alias iclcd='cd "/Users/user/Library/Mobile Documents/com~apple~CloudDocs"'
    alias ndate='date -Idate -Ihours'
    alias n2date='date +%Y-%m-%d-%H%M'

    fish_add_path $HOME/.local/bin
    function useport
        set -xp PATH /opt/local/bin
    end
end
