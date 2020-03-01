#!/usr/bin/env bash
dotfiles=(.bash_aliases .bashrc .bash_profile .vimrc .xinitrc);
olddotfiles=(~/.bash_aliases ~/.bashrc ~/.bash_profile ~/.vimrc ~/.xinitrc);
backup_dir=(~/.old_dotfiles/);
mkdir ${backup_dir};
for o in ${olddotfiles[@]};
  do
    mv ${o} ${backup_dir};
    echo "Moving" ${o} "to" ${backup_dir};
  done
for o in ${dotfiles[@]};
  do
    cp ${o} ~/;
    echo "Copying" ${o} "to '~/'";
  done
source ~/.bashrc;
echo "All done!";
echo "If you wish to keep your originals as backups, then do not delete '~/.old_dotfiles'"
echo "You can reverse this script by running the 'uninstall.bash'";
