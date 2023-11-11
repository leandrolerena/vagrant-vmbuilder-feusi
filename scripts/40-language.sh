# apt-get install -y language-pack-de 
locale-gen de
update-locale
localectl set-locale de_CH.UTF8
update-locale
# localectl set-locale LC_MESSAGES=de_CH.UTF8 LANG=de_CH.UTF8 
# localectl set-keymap de
# localectl set-x11-keymap de_CH 
sudo -u feusi dbus-launch gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'ch')]"
