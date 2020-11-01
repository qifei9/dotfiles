# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# antibody
source <(antibody init)

antibody bundle < ~/.zsh_plugins.txt

#
# alias
#

#alias ll='exa -l --group-directories-first'
alias ll='ls -lh'
alias l='ll -A'
#alias lg='ll --git'
#alias llt='ll -T'
#alias u='yay'
#alias ra='ranger'
alias vim='nvim'
#alias cat='bat'
#alias top='gotop'
#alias ping='prettyping'
#alias z='zathura'
#alias R='radian'
alias init_workspace='mkdir ./logs ./meta ./raw_data ./results ./scripts'
#alias python='python38'
alias tmux='tmux-next'

#
# languages
#

export LANG='zh_CN.UTF-8'
export LC_TIME='en_US.UTF-8'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#
# coda
#

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/qifei/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/qifei/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/qifei/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/qifei/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
