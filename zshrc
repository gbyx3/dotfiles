# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi


# Oh My Posh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
   eval "$(oh-my-posh init zsh --config "https://raw.githubusercontent.com/gbyx3/dotfiles/main/darkblood.omp.json")"
fi


# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Local
export LC_CTYPE=UTF-8
export LANG="en_US.UTF-8"
export LC_ALL=$LANG

#
# Aliases
alias diff='diff --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias l='gls -CF'
alias la='gls -A'
alias ll='gls -l'
alias ls='gls --color=auto'
alias vim='nvim'
alias ssh='ssh -a'
