# ~/.bash_aliases
# Date: 2/28/2020
# Author: Alexander cronin
# github https://github.com/alexander-cronin
## ===================================================================== ##
# Written for "Arch-Linux"
# Your mileage may vary on other distros
# Run command 'source ~/.bashrc' after modifying this file
## ===================================================================== ##

# System update & upgrade
alias update='sudo pacman -Syy && sudo pacman -Syu && sudo grub-mkconfig -o /boot/grub/grub.cfg'

# Configure 'grub'
alias grubconfig='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# Rebuild 'initramfs'
alias mkinit='mkinitcpio -p linux'

# Open 'Atom' editor in 'Dev-Mode'
alias atomdev='atom --dev'

# Open 'Atom' editor with sudo priveleges
# Usage 'satom /path/to/dir' or 'satom /path/to/file'
alias satom='sudo atom'

# Open "Atom" editor in "~/github"
alias gitpro='atom ~/github/'

# Open "Atom" editor in "~/Local_Projects"
alias localpro='atom ~/Local_Projects'

# Start 'default' net service for "VirtManager"
alias netstartdefault='sudo virsh net-start default'

# Easy sym-link
alias link='ln -sf'

# Enable color support for certain aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Simplify 'ls'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Easier 'rm -r'
alias remove='rm -R'

# Easier 'systemctl'
alias systemctl-Enable='sudo systemctl enable'
alias systemctl-Disable='sudo systemctl disable'
alias systemctl-Start='sudo systemctl start'
alias systemctl-Stop='sudo systemctl stop'
alias systemctl-Restart='sudo systemctl restart'

# Edit Specific file or folder with 'Atom'
alias grub-edit='sudo atom /etc/default/grub'
alias bashrc-edit='atom ~/.bashrc'
alias bash_profile-edit='atom ~/.bash_profile'
