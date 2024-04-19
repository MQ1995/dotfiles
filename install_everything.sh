#!/bin/sh

sudo pacman -S (
    Hyprland # install hyprland
    zsh # shell
    gdm # gnome login manager
    network-manager-applet # gtk frontend for wifi
    alacritty # terminal
    nautilus # file manager
    vivaldi # browser
    waybar # wayland status bar
    swaync # notifications
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
    lf # CLI file manager
    loupe # image viewer
    fragments # torrents
    chezmoi # to sync dotfiles
)

yay hyprpicker-git # color picker
yay visual-studio-code-bin
yay gradience # set look of GTK4 apps
yay protonmail-desktop
yay gdm-settings # set configuration for Gnome login
yay selectdefaultapplication-git # set default applications through 'selectdefaultapplication command'
yay swaync # notifications
yay decibels # audio player
yay shortwave # radio
yay switcheroo-gtk4 # convert multiple images
yay errands # todo list

chezmoi init https://github.com/MQ1995/dotfiles.git
chezmoi diff # check differences
chezmoi apply -v # apply differences

# sudo systemctl enable gdm.service # enable Gnome login (use if no gnome installed)

sudo echo -e "[global-dns-domain-*]\nservers=::1,1.1.1.1" > /etc/NetworkManager/conf.d/dns-servers.conf # set DNS to 1.1.1.1

# Install oh my zsh + theme
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Remove Gnome bloat
sudo pacman -Rns (
    simple-scan #scanning utility
    orca #screen reader
    malcontent #parental control
    gnome-weather #weather
    gnome-music #music manager
    gnome-console #useless
    gnome-calculator #calc
    gnome-contacts #contacts
    epiphany #web browser
    gnome-maps #maps
    gnome-text-editor
    gnome-tour
    gnome-software
)
