#!/bin/bash
stow --adopt .

sudo pacman -S hyprland xorg-xwayland \
    xdg-desktop-portal-hyprland \
    hyprpaper hyprlock hypridle \
    hyprpolkitagent \
    waybar wofi dunst \
    qt5-wayland qt6-wayland \
    kitty git \
    sddm \
    wl-clipboard \
    noto-fonts ttf-jetbrains-mono-nerd \
    thunar \
    thunar-volman \
    thunar-archive-plugin \
    thunar-media-tags-plugin \
    gvfs \
    gvfs-mtp \
    gvfs-gphoto2 \
    tumbler \
    ffmpegthumbnailer \
    file-roller \
    blueman \
    libreoffice-fresh \
    neovim \
    curl \
    adwaita-cursors

yay -Sy brave \
    wlogout \
    zen-browser-bin

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

systemctl enable sddm
