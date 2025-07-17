HISTFILE=~/.config/zsh/history
HISTSIZE=10000
SAVEHIST=2500
bindkey -v

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/zsh/aliasrc" ] && source "$HOME/.config/zsh/aliasrc"
	
zstyle :compinstall filename '/home/pien/config/zsh/.zshrc'
zstyle ':completion:*' menu select 

source ${ZDOTDIR}/.antidote/antidote.zsh
antidote load ${ZDOTDIR}/zsh_plugins.txt

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [ ! -f "$SSH_AUTH_SOCK" ]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)

autoload -Uz compinit
compinit


eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
