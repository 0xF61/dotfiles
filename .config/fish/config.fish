# ENV
export GPG_TTY=(tty)
set PATH $PATH ~/.config/scripts
set PATH $PATH ~/go/bin
set PATH $PATH $HOME/.local/bin
set XDG_CONFIG_HOME $HOME/.config
set XDG_CACHE_HOME $HOME/.cache
set XDG_DATA_HOME $HOME/.local/share

# Cleanup
export LESSHISTFILE=-
export BROWSER=brave
export EDITOR=nvim
export GNUPGHOME="$XDG_CONFIG_HOME"/gnupg
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

## .android
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android/
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android

## .gnupg
export GNUPGHOME="$XDG_CONFIG_HOME"/gnupg

## Directories
set undodir $XDG_DATA_HOME/vim/undo
set directory $XDG_DATA_HOME/vim/swap
set backupdir $XDG_DATA_HOME/vim/backup

# Alias
alias tmux="tmux -2u -f "$XDG_CONFIG_HOME"/tmux/tmux.conf"
alias gdb="gdb -nh -x ~/.config/gdb/gdbinit"
alias kalid='docker run -ti --net=host -e="DISPLAY" -v="$HOME/Share:/root/Share" -v="$HOME/.Xauthority:/root/.Xauthority:rw" kalilinux/kali-rolling:latest bash'
alias blackarch='docker run -ti --net=host --workdir /root -e="DISPLAY" -v="$HOME/Share:/root/Share" -v="$HOME/.Xauthority:/root/.Xauthority:rw" blackarchlinux/blackarch'

bind \en "commandline -a ' &| nvim'"

# Import grc
if test -f /etc/grc.fish
  source /etc/grc.fish
end

# Start X at login
if status is-login
 if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
   exec ssh-agent startx "$XINITRC" -- -keeptty
 end
end

