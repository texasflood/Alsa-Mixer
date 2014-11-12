#!/bin/bash

echo "Clonning extension..."
git clone git://github.com/texasflood/Alsa-Mixer.git Alsa-Mixer
echo "Creating extension folder..."
mkdir -p ~/.local/share/gnome-shell/extensions/Alsa-Mixer\@so-dicas.info
echo "Installing extension..."
cp Alsa-Mixer/extension.js ~/.local/share/gnome-shell/extensions/Alsa-Mixer\@so-dicas.info/
cp Alsa-Mixer/metadata.json ~/.local/share/gnome-shell/extensions/Alsa-Mixer\@so-dicas.info/
echo "Cleaning..."
rm -rf Alsa-Mixer/
echo "Done!"
