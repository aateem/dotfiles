PROMPT='[% %~]% : '

# aliases
alias ll='ls -AlG'

# fucking avesome vimode magic
bindkey -v

function zle-line-init zle-keymap-select {
    VIM_MODE_IND_PROMPT='[% zle-vimode-NORMAL]%'
    RPROMPT="${${KEYMAP/vicmd/$VIM_MODE_IND_PROMPT}/(main|viins)/}"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

export KEYTIMEOUT=1

# enable completion functions
autoload -U compinit && compinit

# Enable virtualenvwrappers if exists.
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    . /usr/local/bin/virtualenvwrapper.sh
fi

# Don't generate *.pyc and *.pyo
export PYTHONDONTWRITEBYTECODE=1
