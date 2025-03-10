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

export XDG_DATA_DIRS="$XDG_DATA_DIRS:$HOME/.local/share/applications"

autoload -Uz vcs_info
precmd() { vcs_info }
#zstyle ':vcs_info:git:*' formats ' : %F{red}%b%f'
setopt PROMPT_SUBST
#PROMPT='%F{white} %~%f${vcs_info_msg_0_}%f %F{white}$ '
PROMPT='%~%f${vcs_info_msg_0_}%f $ '
export VIRTUAL_ENV_DISABLE_PROMPT=

if [ -d "/opt/homebrew/bin" ]; then
	alias paraview="/opt/homebrew/bin/paraview"
fi

if [ -d "$HOME/Tools/paraview/bin" ]; then
	alias paraview="$HOME/Tools/paraview/bin/paraview"
fi

alias pytest="pytest -v"


alias ls="ls --color=auto"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias pip='uv pip'
alias vim=nvim

if command -v eza >/dev/null 2>&1; then
	alias ls="eza --color=always --icons=always"
fi

alias jax_env='source ~/.venv/jax_env/bin/activate'
alias general='source ~/.venv/general/bin/activate'
