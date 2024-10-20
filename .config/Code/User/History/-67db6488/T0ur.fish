export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin:/home/pradhan/.local/bin"
export PATH="$PATH:/home/pradhan/.venv/formatter/bin:/home/pradhan/.venv/jax_env/bin"
export PATH="$PATH:/home/pradhan/.juliaup/bin:/home/pradhan/.cargo/bin"


# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# >>> conda initialize >>>
# function conda_init () {
#     __conda_setup="$('/home/pradhan/.miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#     if [ $? -eq 0 ]; then
#         eval "$__conda_setup"
#     else
#         if [ -f "/home/pradhan/.miniconda3/etc/profile.d/conda.sh" ]; then
#             . "/home/pradhan/.miniconda3/etc/profile.d/conda.sh"
#         else
#             export PATH="/home/pradhan/.miniconda3/bin:$PATH"
#         fi
#     fi
#     unset __conda_setup
# }

alias fenics_env='conda_init && conda activate ~/.venv/fenics_env'
alias fenics_legacy='conda_init && conda activate ~/.venv/fenics_legacy'
alias llama='conda_init && conda activate ~/.venv/llama'
alias jax_env='source ~/.venv/jax_env/bin/activate'

export PATH="$PATH:/home/pradhan/.local/bin"
export PATH="$PATH:/home/pradhan/.venv/formatter/bin"
export PATH="$PATH:/home/pradhan/.venv/jax_env/bin"
export PYTHONPATH="$PYTHONPATH:/home/pradhan/Programs/python/JLBM"
alias of2312=". /usr/lib/openfoam/openfoam2312/etc/bashrc"
 # . "$HOME/.cargo/env"

export PETSC_DIR="/home/pradhan/Tools/petsc"
export PETSC_ARCH="arch-linux-c-debug"
export PYTHONPATH="$PYTHONPATH:/home/pradhan/Tools/petsc/arch-linux-c-debug/lib"

alias small-text='gsettings set org.gnome.desktop.interface text-scaling-factor 1.0'
alias vim=nvim

if type -q batcat
	alias cat="batcat --theme=TwoDark"
end

if type -q eza
	alias ls="eza"
end



# eval "$(starship init bash)"
# if type -q starship
# end

export STARSHIP_CONFIG="$HOME/.config/starship.toml"
