# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
parse_git_origin() {
	origin_url=$(git config --get remote.origin.url 2> /dev/null | sed -e 's/[a-z@.]\+://' -e 's/\.git//')
	if [[ -z $origin_url ]] ; then
		origin_url="$(pwd)"
	fi
	echo $origin_url

}
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[ \1 ]/'; 
}

export PS1="\u@\h \[\e[32m\]\$(parse_git_origin)\[\e[00m\] » \[\e[35m\]\$(parse_git_branch)\[\e[00m\] $ "

