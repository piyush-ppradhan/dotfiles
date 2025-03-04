# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH


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
zstyle ':vcs_info:git:*' formats ' : %F{red}%b%f'
setopt PROMPT_SUBST
PROMPT='%F{white} %~%f${vcs_info_msg_0_}%f %F{white}$ '
export VIRTUAL_ENV_DISABLE_PROMPT=

function conda_init () {
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
# . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"  # commented out by conda initialize
        else
# export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"  # commented out by conda initialize
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
}

alias fenics_env='conda_init && conda activate ~/.venv/fenics_env'
alias fenics_legacy='conda_init && conda activate ~/.venv/fenics_legacy'
alias jax_env='source ~/.venv/jax_env/bin/activate'
alias research_env='source ~/.venv/research_env/bin/activate'
alias general='source ~/.venv/general/bin/activate'

if [ -d "/opt/homebrew/bin" ]; then
	alias paraview="/opt/homebrew/bin/paraview"
fi

if [ -d "$HOME/Tools/paraview/bin" ]; then
	alias paraview="$HOME/Tools/paraview/bin/paraview"
fi

alias pytest="pytest -v"
alias vim="nvim"

alias ls="ls --color=auto"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vim=nvim

if command -v batcat >/dev/null 2>&1; then
	alias cat="batcat --theme=rose-pine"
fi

if command -v bat >/dev/null 2>&1; then
	alias cat="bat --theme=rose-pine"
fi

if command -v eza >/dev/null 2>&1; then
	alias ls="eza --color=always --icons=always"
fi


if command -v zoxide >/dev/null 2>&1; then
	eval "$(zoxide init zsh)"
fi
