# global shell options
#shopt -s histappend
export PROMPT_COMMAND='history -a'
export HISTIGNORE='ls:ll:cd:history:key:clear:history'
export HISTTIMEFORMAT="[%F %T] "
export HISTSIZE=-1
export HISTFILESIZE=-1
export EDITOR=vim

# User specific aliases and functions
alias ll='ls -Glahrt'
alias gitpulls='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree={} pull origin master  \;'
alias grep='grep --color=auto'

# python
export VIRTUALENVWRAPPER_HOOK_DIR=$HOME/.virtualenvs/
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export PIP_REQUIRE_VIRTUALENV=true
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh 

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# git prompt
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_EDITOR=vim
source /mnt/c/Program\ Files/Git/etc/profile.d/git-prompt.sh

# prompt customization
RESULT=\($?\)
exitstatus()
{
        if [ $? = 0 ]; then
                echo '🌈'
        else
                echo '🔥'
        fi
}
export PS1="\[\033[44m\]\[\033[0;37m\]\u\[\033[0;33m\]@\[\033[0;37m\]\h \[\033[0;96m\]\w\[\033[0m\]\$(__git_ps1) \n \$(exitstatus)\[\033[0;92m\]⤳ \[\033[0m\]\[$(tput sgr1)\]"
