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
    file-roller

yay -Sy brave

systemctl enable sddm
