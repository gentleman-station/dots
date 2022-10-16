#!/bin/bash

ZSH_CONFIG_PATH="$HOME/.config/zsh"

if [ "$1" == "--uninstall" ]; then
    rm -rf ~/.zsh* "$ZSH_CONFIG_PATH"
    exit 0
fi

if [ ! -d "$ZSH_CONFIG_PATH/" ]; then
    mkdir "$ZSH_CONFIG_PATH"
fi
if [ ! -d "$ZSH_CONFIG_PATH/backups/" ]; then
    mkdir "$ZSH_CONFIG_PATH/backups"
fi

# TODO: Also include miliseonds.
backup_filename="$ZSH_CONFIG_PATH/backups/zshrc.$(date | tr ' ' '_').backup";

if [ -f ~/.zshrc ]; then
    mv ~/.zshrc "$backup_filename"
fi

for zsh_filename in ./*.zsh; do
    cp "$zsh_filename" "$ZSH_CONFIG_PATH/$zsh_filename"
done

cp neo "$ZSH_CONFIG_PATH/neo"

cp ./zshrc ~/.zshrc

echo -e "\n\n\nNOTE: MAKE SURE YOU EXIT THIS ZSH SESSION AFTER YOUR POWERLEVEL10K SETUP IS DONE.\n\n\n"

sleep 3.33

zsh

echo -e "\ntypeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet" >> ~/.zshrc