#!/usr/bin/env bash
dotfiles=(~/.bash_aliases ~/.bashrc ~/.bash_profile ~/.vimrc ~/.xinitrc);
olddotfiles=(~/.old_dotfiles/.bash_aliases ~/.old_dotfiles/.bashrc ~/.old_dotfiles/.bash_profile ~/.old_dotfiles/.vimrc ~/.old_dotfiles/ ~/.old_dotfiles/.xinitrc);
backup_dir=(~/.old_dotfiles/);
for o in ${dotfiles[@]};
  do
    rm ${o};
    echo "Deleting" ${o};
  done
for o in ${olddotfiles[@]};
  do
    cp ${o} '~/';
    echo "Copying" ${o} "to '~/'";
  done
source ~/.bashrc;
rm ${backup_dir};
echo "All done!";
echo "You have reversed the effects of the Installation";
