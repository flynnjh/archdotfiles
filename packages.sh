current_directory=$(pwd)
sudo pacman -S --noconfirm git base-devel i3 xorg-server xorg-xinit xterm gnu-free-fonts virtualbox-guest-utils xf86-video-vmware unzip stow rofi ttf-jetbrains-mono noto-fonts-emoji neofetch nitrogen imagemagick picom xdg-user-dirs gtk3 dex sddm
git clone https://aur.archlinux.org/yay.git
cd yay
yes | makepkg -si
yes | yay -S rxvt-unicode-truecolor-wide-glyphs cozette-otb xbanish
xdg-user-dirs-update
magick -size 1x1 xc:"#1E1E2E" ~/Pictures/1x1_custom.png
sudo systemctl enable --now vboxservice
cd $current_directory
cp -r .config ~
cp -r .xinitrc ~
cp -r .Xresources ~
sudo VBoxClient-all
sudo systemctl enable --now sddm