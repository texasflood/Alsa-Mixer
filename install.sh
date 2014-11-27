#!/bin/bash

echo "Cloning extension..."
git clone git://github.com/texasflood/Alsa-Mixer.git Alsa-Mixer
echo "Creating extension folder..."
mkdir -p ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com
echo "Installing extension..."
cp Alsa-Mixer/extension.js ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com
cp Alsa-Mixer/widget.js ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com
cp Alsa-Mixer/convenience.js ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com
cp Alsa-Mixer/prefs.js ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com
cp -r Alsa-Mixer/schemas ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com
cp Alsa-Mixer/metadata.json ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com
glib-compile-schemas /usr/share/glib-2.0/schemas
glib-compile-schemas ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com/schemas
echo "Cleaning..."
rm -rf Alsa-Mixer/
echo "Done!"
