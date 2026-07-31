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
    adwaita-cursors \
    awww \
    brightnessctl \
    obs-studio \
    mpv \
    qt6-svg \
    qt6-declarative \
    starship

yay -S zen-browser-bin \
    wlogout

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cd /tmp
curl -LO https://github.com/catppuccin/sddm/releases/download/v1.1.2/catppuccin-mocha-mauve-sddm.zip
unzip catppuccin-mocha-mauve-sddm.zip
sudo mv catppuccin-mocha-mauve /usr/share/sddm/themes/

systemctl enable sddm
