# Created by newuser for 5.9
if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then exec Hyprland; fi
export PATH="$HOME/.local/bin:$PATH"
eval "$(starship init zsh)"
# test
fastfetch
