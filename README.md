
# Dotfiles (Arco Linux)

This dotfiles is built using [dotbare](https://github.com/kazhala/dotbare). Dotbare is aliased `config` per this `.zshrc`. Configurations can be added and commited using git commands including alias commands in `gitconfig`.

    config add -A

or

    config aa


    config commit -m "commit message"

or

    config c "commit message"


Do not use `config add -A` as this command will add every single file in your home directory.  Ideally files and directories should be carefully added individually

    config add ~/.config/zsh/.zshrc

Or adding only modified/deleted files that are already being tracked 

    config add -u


# System

This system was installed used [ArcoLinuxB](https://arcolinuxb.com/) ISO. 

### Window manager: i3

launch config `i3-config`

### terminal: Alacritty

launch config `term-config`

### dmenu rofi

launch with `$mod+d`
more [here](https://github.com/davatorium/rofi)

### bar: polybar

theme  `forest` 

launch config `bar-config`

### screenshots: flameshot

launch GUI `ss-gui`

screen shot from CLI: `ss`

### file manager

GUI: thunar via xfce4 
terminal: `vifm` and `ranger`

### Login manager: lighdm

using `lighdm-mini-greeter` and `terafox` theme. more on config [here](https://github.com/Pbotsaris/dotfiles-arch/tree/main/.config/lighdm)

### composition: picom

config in `./config/picom/picom.conf`

### Others

window system: x

font: Inconsolata Nerd Font Mono 

walpaper manager: nitrogen

autojump with `j`

## Shell

Shell is managed using oh my zsh. Plugins are: `archlinux`, `zsh-syntax-highlighting`, `zsh-autosuggestions`, `autojump` and `dotbare`.

zsh prompt: [pure](https://github.com/sindresorhus/pure`)

## scripts and aliases

A custom bin folder is exported to `$PATH ` from `~/.config/scripts`.

### scripts

- `t` shortcuts for tmux.
- `caps_as_esc.sh` aliased as `cae` for caps key to function as the esc key.
- `connect-bluetooth.sh`. This is launched by `systemd` on boot to connect devices. New bluetooth devices to be added to this script. 
- `clip`. clips first argument to the clipboard using `xclip`. Also aliased as `cpy`.
- `package-backup` get a package list from pacman, npm and pip, pipes the list to 3 text files and creates a new directory in `$HOME/.packages` with today's date to 
save those files.

#### C++ specifc scripts

`gen-compile_command <PATH>` is a helper to generate a `compile_commands.json` used by clangd to provide code completions for C++ projects. It requires
[compiledb](https://github.com/nickdiego/compiledb). Install with pip

      pip install compiledb


### aliases 

`a` will list only user defined aliases

      $> a
         alias shell-config="vim ~/.config/zsh/.zshrc"
         alias i3-config="vim ~/.config/i3/config"
         alias term-config="vim ~/.config/alacritty/alacritty.yml"
         alias picom-config="nvim ~/.config/picom/picom.conf"
         (...)
        
- `git-config` launches `gitconfig`
- `shel-config` launches `zshrc`
- `vim-config` launches vim config folder
- `src` to  `source zshrc`
- `i3-config` opens `/.config/i3/config`
- `term-config` opens allacrity config file
- `bar-config`  opens polybar forest theme config file
- `rofi-config` launches `/.config/rofi/config.rasi`
