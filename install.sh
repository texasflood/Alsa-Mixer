#!/bin/bash

echo "Cloning extension..."
git clone git://github.com/texasflood/Alsa-Mixer.git Alsa-Mixer
echo "Creating extension folder..."
mkdir -p ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com
echo "Installing extension..."
cp Alsa-Mixer/extension.js ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com
cp Alsa-Mixer/metadata.json ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com
echo "Cleaning..."
rm -rf Alsa-Mixer/
echo "Done!"
