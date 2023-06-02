# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

 # Path to your oh-my-zsh installation.
export ZSH=$HOME"/.oh-my-zsh"
ZSH_THEME=""
export EDITOR=vim
fpath+=$HOME/.config/zsh/pure


# miniconda3
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="itchy"

# zstyle :prompt:pure:path color white

# FAV
# kolo itchy


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


plugins=(git archlinux zsh-syntax-highlighting zsh-autosuggestions autojump dotbare)
source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
zstyle ':prompt:pure:prompt:*' color '#998a96'
prompt pure

# USER CONFIG

## add gem bins to $PATH
export PATH="/home/pedro/.local/share/gem/ruby/3.0.0/bin:$PATH"

## Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=1000
unsetopt autocd beep
bindkey -v

# Prompt zshell

# CHANGE CURSOR IN VI MODE

KEYTIMEOUT=5

function zle-keymap-select () {

case $KEYMAP in
  vicmd) echo -ne '\e[1 q';; # block

  viins|main) echo -ne '\e[5 q';; # beam
esac

}

zle -N zle-keymap-select

zle-line-init() {

zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)

echo -ne "\e[5 q"

}

zle -N zle-line-init

echo -ne '\e[5 q' # Use beam shape cursor on startup.

_fix_cursor(){
  echo -ne '\e[5 q'
}

precmd_functions+=(_fix_cursot)


# set dotbare(dotfiles) to custom folder.
export DOTBARE_DIR="$HOME/.dotfiles"


# Android SDK
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/33.0.1/
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin/
export PATH=$PATH:$ANDROID_HOME/tools/bin

# Java
export JAVA_HOME='/usr/lib/jvm/java-11-openjdk'
export ANDROID_SDK_ROOT='/opt/android-sdk'

PATH=$PATH:$HOME/.config/scripts/
# for whatever reason I need to export these locale
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#fly.io
export FLYCTL_INSTALL="/home/pedro/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

export GOBIN="$HOME/go/bin"
export PATH="$GOBIN:$PATH"

# pip installed 

export PATH=$PATH:$HOME/.local/bin

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
#

# NVM
source /usr/share/nvm/init-nvm.sh  

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

 alias shell-config="vim ~/.config/zsh/.zshrc"
 alias i3-config="vim ~/.config/i3/config"
 alias term-config="vim ~/.config/alacritty/alacritty.yml"
 alias picom-config="nvim ~/.config/picom/picom.conf"
 alias vim-config="vim ~/.config/vim/.vim"
 alias nvim-config="cd ~/.config/nvim; nvim init.lua"
 alias bar-config="vim ~/.config/polybar/forest"
 alias git-config="vim ~/.config/git/.gitconfig"
 alias rofi-config="nvim ~/.config/rofi/config.rasi"
 alias src="source ~/.config/zsh/.zshrc"
 alias cpy="~/.config/scripts/clip.sh"
 alias ss="flameshot full -c -p ~/screen_shots"
 alias ss-gui="flameshot gui -p ~/screen_shots"
 alias cae="caps_as_esc.sh"
 alias config=dotbare
 alias connect-bluetooth="connect-bluetooth.sh"
 alias vim="nvim"
 alias a="cat ~/.config/zsh/.zshrc | grep alias"
 alias emulator="cd /opt/android-sdk/emulator; emulator"
 alias fixke="/usr/local/bin/arcolinux-fix-pacman-databases-and-keys"

# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

alias luamake=/home/pedro/.lua-ls/lua-language-server/3rd/luamake/luamake
