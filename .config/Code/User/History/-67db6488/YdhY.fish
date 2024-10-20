# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# >>> conda initialize >>>
function conda_init () {
    __conda_setup="$('/home/pradhan/.miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/home/pradhan/.miniconda3/etc/profile.d/conda.sh" ]; then
            . "/home/pradhan/.miniconda3/etc/profile.d/conda.sh"
        else
            export PATH="/home/pradhan/.miniconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
}

alias fenics_env='conda_init && conda activate ~/.venv/fenics_env'
alias fenics_legacy='conda_init && conda activate ~/.venv/fenics_legacy'
alias llama='conda_init && conda activate ~/.venv/llama'
alias jax_env='source ~/.venv/jax_env/bin/activate'

export PATH="$PATH:/home/pradhan/.local/bin"
export PATH="$PATH:/home/pradhan/.venv/formatter/bin"
export PATH="$PATH:/home/pradhan/.venv/jax_env/bin"
export PYTHONPATH="$PYTHONPATH:/home/pradhan/Programs/python/JLBM"
alias of2312=". /usr/lib/openfoam/openfoam2312/etc/bashrc"
. "$HOME/.cargo/env"

export PETSC_DIR="/home/pradhan/Tools/petsc"
export PETSC_ARCH="arch-linux-c-debug"
export PYTHONPATH="$PYTHONPATH:/home/pradhan/Tools/petsc/arch-linux-c-debug/lib"


# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/pradhan/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/pradhan/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<

alias small-text='gsettings set org.gnome.desktop.interface text-scaling-factor 1.0'
alias vim=nvim
if command -v batcat &> /dev/null; then
	alias cat="batcat --theme=TwoDark"
fi
if command -v eza &> /dev/null; then
	alias ls=eza
fi

# eval "$(starship init bash)"
if command -v starship &> /dev/null; then
    eval "$(starship init bash)"
fi
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
