#!/usr/bin/env bash

NETWORK_PACKAGES="dhcpcd netctl dialog wpa_supplicant openssh networkmanager network-manager-applet"
XORG="xorg-server xorg-xinit xorg-apps mesa-libgl xf86-input-libinput termite"
DEV_PACKAGES="man-db man-pages vim emacs tmux ack git the_silver_searcher asciidoctor npm"
LAPTOP_SPECIFIC="intel-ucode brightnessctl bluez bluez-utils blueman"
WEB_DEV="firefox chromium lightdm lightdm-gtk-greeter"
FONTS="ttf-liberation ttf-dejavu"
WM="i3 dmenu"
JAVA="jdk11-openjdk visualvm clojure rlwrap"
AUDIO="pulseaudio pavucontrol"

YAY_PACKAGES="teams"

sudo pacman -S $NETWORK_PACKAGES $XORG $DEV_PACKAGES $LAPTOP_SPECIFIC $WEB_DEV $FONTS $WM $JAVA $AUDIO
yay -S --noconfirm $YAY_PACKAGES

# install leiningen
curl -o lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod +x lein
sudo mv lein /usr/local/bin/lein
