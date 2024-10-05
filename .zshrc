eval "$(/opt/homebrew/bin/brew shellenv)"

# >>> juliaup initialize >>>
# !! Contents within this block are managed by juliaup !!
path=('/Users/pradhan/.juliaup/bin' $path)
export PATH
export PATH="$PATH:/opt/homebrew/bin"
# <<< juliaup initialize <<<

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


function extract_name() {
  local full_path="$1"
  local env_name="${full_path##*/}"
  echo "$env_name"
}

function fenics_env () {
    conda_init
    conda activate /Users/pradhan/.venv/fenics_env
}

function formatter () {
    conda_init
    conda activate /Users/pradhan/.venv/formatter
}

function fenics_legacy () {
    conda_init
    conda activate /Users/pradhan/.venv/fenics_legacy
}

function research_env () {
    source /Users/pradhan/.venv/research_env/bin/activate
}

function jax_env () {
	source /Users/pradhan/.venv/jax_env/bin/activate
}

alias ls="ls --color=auto"
alias c="/opt/homebrew/bin/code"
alias paraview="/opt/homebrew/bin/paraview"
alias pytest="pytest -v"
alias vim="nvim"
alias zed="zed-preview"
alias ghc="ghc-9.10"
alias ytm="yt-dlp --extract-audio --embed-thumbnail --audio-format mp3 --verbose"

export PATH="$PATH:/Users/pradhan/.venv/formatter/bin"
export PATH="$PATH:/Users/pradhan/.local/bin"
export PATH="$PATH:/Users/pradhan/.ghcup/bin"

export VIRTUAL_ENV_DISABLE_PROMPT=0

# Shell prompt to show git info
autoload -Uz vcs_info

precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' : %F{red}%b%f'
setopt PROMPT_SUBST
PROMPT='%F{cyan}$(extract_name "${CONDA_PREFIX}")$(extract_name "${VIRTUAL_ENV}")%F{green} %~%f${vcs_info_msg_0_}%f %F{yellow}$%F{white} '
