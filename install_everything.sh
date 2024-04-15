#!/bin/sh

# Install zsh and ohmyzsh + powerlevel10k theme
sudo pacman -S zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo pacman -S (
    gdm # gnome login manager
    alacritty # terminal
    nautilus # file manager
    vivaldi # browser
    waybar # wayland status bar
    mako # notification
    wofi # run commands
    polkit-gnome # authentication agent
    qt5ct # configure qt5 apps look
    qt6ct # configure qt5 apps look
    xdg-desktop-portal-hyprland # necessary
    qt5-wayland # necessary
    qt6-wayland # necessary
    swaybg # set background
    rustup # install rust
    udiskie # automount disks
    nwg-look # set look of GTK3 apps
    wl-clipboard # wayland clipboard (maybe already installed)
    cliphist # clip history
    grim # Grab images from a Wayland compositor
    slurp # Select screen portion
    jq # json utility to parse hyprctl output    
)

yay hyprpicker-git
yay visual-studio-code-bin
yay gradience # fix nautilus GTK4 theme
yay protonmail-desktop
yay gdm-settings # set configuration for Gnome login
yay selectdefaultapplication-git # set default applications through 'selectdefaultapplication command'

systemctl enable gdm.service # enable Gnome login