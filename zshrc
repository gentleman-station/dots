ZSH_CONFIG_PATH="$HOME/.config/zsh"

# NeoFetch, for fanciness..
neofetch --ascii "$ZSH_CONFIG_PATH/neo"


# Profile variables
source ~/.profile


# Load Antibody
source <(antibody init)
export ANTIBODY_HOME="$(antibody home)"


# Useful plugins, out of Oh-My-ZSH
antibody bundle < "$ZSH_CONFIG_PATH/plugins.zsh"


# Load Oh My Zsh
source "$ZSH_CONFIG_PATH/oh-my.zsh"
antibody bundle robbyrussell/oh-my-zsh


# A theme for an eyecandy kid..
antibody bundle romkatv/powerlevel10k


# Misc. configs
source "$ZSH_CONFIG_PATH/misc.zsh"

# While editing..
# POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
