# ~/.bashrc
# Date: 2/28/2020
# Author: Alexander cronin
# github https://github.com/alexander-cronin
# If you modify this file, run "source ~/.bashrc" to see changes
##  ===================================================================  ##

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Don't print duplicates in history
HISTCONTROL=ignoreboth

# Append history
shopt -s histappend

# Set history length and file-size
HISTSIZE=1000
HISTFILESIZE=2000

# Check window size after every command
# If neccessary rows/colums/lines will be updated
shopt -s checkwinsize

# Set your 'chroot' variable here
if [ -z "${arch_chroot:-}" ] && [ -r /etc/arch_chroot ]; then
    arch_chroot=$(cat /etc/arch_chroot)
fi

# Force colors in terminal
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# Set appearance of terminal prompt
# Example in useage: 'username@host:~/path/to/dir--> '
# Example in code
# PS1='${arch_chroot:+($arch_chroot)}\[\033[0;32;40m\]\u\[\033[1;34m\]@\[\033[0;31;40m\]\h\[\033[1;31m\]:\[\033[0;32;40m\]\w\[\033[1;34m\]-->\[\033[0;31;40m\] '

# Modify the lower section only! Upper section for referance!
PS1='${arch_chroot:+($arch_chroot)}\[\033[0;32;40m\]\u\[\033[1;34m\]@\[\033[0;31;40m\]\h\[\033[1;31m\]:\[\033[0;32;40m\]\w\[\033[1;34m\]-->\[\033[0;31;40m\] '

# Enable colored 'GCC' errors & warnings
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Enable ~/.bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
