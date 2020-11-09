# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
############################################################################
# list directory aliases
############################################################################
alias l='\ls -CF'                              # all but . and .. in columns
#alias ls='ls -Alhi --color=auto'              # almost all, long list, human readable sizes, show symbolic link reference, , human readable sizes
alias ls='ls -GAlhi'                           # REPLACES above - Works on MAC, need to test on Linux - SEE https://superuser.com/questions/183876/how-do-i-get-ls-color-auto-to-work-on-mac-os-x
alias ll='\ls -lh'                             # long list, human readable sizes
alias lt='\ls -lht'                            # long list, human readable sizes, sorted by modification time (newest first)
alias la='\ls -lhtA'
alias lr='\ls -lhtr'                           # long list, human readable sizes, sorted by modification time (reversed)
alias lar='\ls -ltAr'
alias dir='\ls --color=auto --format=vertical'
alias vdir='\ls --color=auto --format=long'

############################################################################
# tool aliases
############################################################################
alias vi=vim
alias more=less
alias grep='egrep --color=auto'               # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
# alias grep='grep --color'                   # show differences in colour
alias sdkman='sdk'
#alias sudo='sudo -E env "PATH=$PATH"'
alias sudo='sudo -i'
alias mysudo='sudo -i -E env "PATH=$PATH"'

############################################################################
# git aliases
############################################################################
alias branch='git checkout -b'
alias checkout='git fetch --all; git checkout'
alias ga='git add -i'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git-commit'
alias gcko='git checkout'
alias gd='git diff | meld'
alias gf='git fetch'
alias gfm='git pull'
alias git-remote='git remote get-url origin'
alias git-update='git pull origin develop'
alias git-upstreams='git fetch --all; git branch -vv'
alias gm='git merge'
alias gpl='git pull'
alias gst='git status' # NOTE: gst will conflict with some smalltalk command
alias merge-dev='git merge origin/develop'
alias unadd='git reset'

# MyRepo aliases - requires MyRepos to be installed: https://myrepos.branchable.com/
alias mr-checkout='mr "$@" checkout'
alias mr-clean='mr "$@" clean'
alias mr-diff='mr "$@" diff'
alias mr-fetch='mr "$@" fetch'
alias mr-list='mr "$@" list'
alias mr-log='mr "$@" log'
alias mr-record='mr "$@" record'
alias mr-register-all='for D in $(\ls);do mr register $D; done;'
alias mr-register='mr "$@" register'
alias mr-status='mr "$@" status'
alias mr-update-all='mr -j5 update'
alias mr-update='mr "$@" update'

############################################################################
# misc command aliases
############################################################################
# alias refresh='source ~/.bash_profile' # this does not work. see README.
# alias work='cd ~/workspace'                 # removed. use groovy script 'work' in workman project
# alias less='less -r'                        # raw control characters
alias .......='up6'
alias ......='up5'
alias .....='up4'
alias ....='up3'
alias ...='up2'
alias ..='up'
alias clr='clear'
alias filtered-aliases='alias | grep "$@"'
alias formatjson='pbpaste|json|pbcopy'
alias hist='history | grep -i'                # search history for a command
alias path='echo -e ${PATH//:/\\n}'           # pretty path
alias prettypath='echo -e ${PATH//:/\\n}'     # pretty path
alias q='exit'
alias trail='tail -f'
alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../../..'
alias up6='cd ../../../../../..'
alias whence='type -a'                        # where, of a sort

############################################################################
# Software analysis
############################################################################
alias xray-commit-freq='git log --format=format: --name-only | egrep -v "^$" | sort | uniq -c | sort -r'
alias xray-top-5='git log --format=format: --name-only | egrep -v "^$" | sort | uniq -c | sort -r | head -5'
alias xray-commit-freq-log='git log --format=format: --name-only | egrep -v "^$" | sort | uniq -c | sort -r > xray-commit-frequency.log'

############################################################################
# Interactive operation...
############################################################################
alias cp='cp -vi' #to prompt when copying if you want to overwrite and will tell you where
alias rd='rm --interactive=once --recursive --dir --force --verbose' #Prompts you if you really want to remove it.
alias mv='mv -i' #Prompts you if you are going to overwrite something

############################################################################
# Default to human readable figures
############################################################################
# alias df='df -h'
# alias du='du -h'
