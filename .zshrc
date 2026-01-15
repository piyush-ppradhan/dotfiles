if [ -d "/opt/homebrew/bin" ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [ -d "/home/linuxbrew/.linuxbrew/bin" ]; then
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if [ -d "/opt/homebrew/bin" ]; then
	path+=("/opt/homebrew/bin")
fi

path+=("$HOME/.juliaup/bin")
path+=("$HOME/.venv/formatter/bin")
path+=("$HOME/.local/bin")
path+=("$HOME/.venv/general/bin/")
path+=("$HOME/Tools/go/bin")
path+=("$HOME/.local/share/bob/nightly/bin")

export XDG_DATA_DIRS="$XDG_DATA_DIRS:$HOME/.local/share/applications"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/local/lib/pkgconfig:/usr/share/pkgconfig"

autoload -Uz vcs_info
precmd() { vcs_info }
#zstyle ':vcs_info:git:*' formats ' : %F{red}%b%f'
setopt PROMPT_SUBST
# PROMPT='%~%f${vcs_info_msg_0_}%f $ '
PROMPT='%F{#abb826}%B%~%b%f%F{#e6b823}${vcs_info_msg_0_}%f 󰘧 '
export VIRTUAL_ENV_DISABLE_PROMPT=

if [ -d "/opt/homebrew/bin" ]; then
	alias paraview="/opt/homebrew/bin/paraview"
fi

if [ -d "$HOME/Tools/paraview/bin" ]; then
	alias paraview="$HOME/Tools/paraview/bin/paraview"
fi

alias ls="ls --color=auto"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias pip='uv pip'
alias pytest="pytest -v"
alias tmux="tmux -2"

alias jax_env='source ~/.venv/jax_env/bin/activate'
alias general='source ~/.venv/general/bin/activate'

if command -v eza >/dev/null 2>&1; then
	alias ls="eza --color=always --icons=always"
fi

if command -v zoxide >/dev/null 2>&1; then
	eval "$(zoxide init zsh)"
	alias cd=z
fi

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

eval "$(starship init zsh)"
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/pradhan/.opam/opam-init/init.zsh' ]] || source '/home/pradhan/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
#
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=1000000000
export SAVEHIST=1000000000
setopt EXTENDED_HISTORY

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
