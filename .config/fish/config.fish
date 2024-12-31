export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin:/home/pradhan/.local/bin"
export PATH="$PATH:/home/pradhan/.venv/jax_env/bin:/home/pradhan/.venv/formatter/bin:/home/pradhan/.venv/general/bin"
export PATH="$PATH:/home/pradhan/.juliaup/bin:/home/pradhan/.cargo/bin:/home/pradhan/.local/share/bob/nvim-bin:/home/pradhan/Tools/zig-0.13.0"


# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# >>> conda initialize >>>
function conda_init
    set -l __conda_setup ("/home/pradhan/.miniconda3/bin/conda" shell.bash hook 2> /dev/null)
    if test $status -eq 0
        eval $__conda_setup
    else
        if test -f "/home/pradhan/.miniconda3/etc/profile.d/conda.fish"
            source "/home/pradhan/.miniconda3/etc/profile.d/conda.fish"
        else
            set -x PATH "/home/pradhan/.miniconda3/bin" $PATH
        end
    end
    set -e __conda_setup
end


alias fenics_env='conda_init && conda activate ~/.venv/fenics_env'
alias fenics_legacy='conda_init && conda activate ~/.venv/fenics_legacy'
alias jax_env='source ~/.venv/jax_env/bin/activate.fish'
alias formatter='source ~/.venv/formatter/bin/activate.fish'
alias general='source ~/.venv/general/bin/activate.fish'
alias gcfoam='docker run --mount type=bind,source="/home/pradhan/Programs/foam",target="/home/gcfoam/works/GeoChemFoam-5.1/runs" -it jcmaes/geochemfoam-5.1:latest'

export PYTHONPATH="$PYTHONPATH:/home/pradhan/Programs/python/JLBM"

alias small-text='gsettings set org.gnome.desktop.interface text-scaling-factor 1.0'
alias vim=nvim

if type -q batcat
	alias cat="batcat --theme=TwoDark"
end

if type -q eza
	alias ls="eza"
end

export STARSHIP_CONFIG="$HOME/.config/starship.toml"
if type -q starship
    starship init fish | source
end

export QT_QPA_PLATFORMTHEME=qt5ct
