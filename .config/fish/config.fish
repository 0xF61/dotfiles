# ENV
set XDG_CONFIG_HOME $HOME/.config
set XDG_CACHE_HOME $HOME/.local/cache
set XDG_DATA_HOME $HOME/.local/share
set XDG_STATE_HOME $HOME/.local/state
set QT_QPA_PLATFORMTHEME qt5ct

# Firefox Touchpad
export MOZ_USE_XINPUT2=1
export DEFAULT=1

# Cleanup
# export GPG_TTY=(tty)
export BROWSER=firefox
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export EDITOR=vim
export GNUPGHOME="$XDG_CONFIG_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export LESSHISTFILE=-
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export W3M_DIR="$XDG_STATE_HOME/w3m"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc

# Alias & bind
bind \en 'fish_commandline_append " &| vim -"'

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        # exec ssh-agent startx "$XINITRC" -- -keeptty
        exec Hyprland
    end
end
