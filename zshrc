if [[ -z "$LC_ALL" ]]; then
  export LC_ALL='en_US.UTF-8'
  export LANG='en_US.UTF-8'
fi
PATH=/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
   eval "$(oh-my-posh init zsh --config "https://raw.githubusercontent.com/gbyx3/dotfiles/main/darkblood.omp.json")"
fi
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
alias vim='/opt/homebrew/Cellar/neovim/0.9.4/bin/nvim'
