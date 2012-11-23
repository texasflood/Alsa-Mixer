Alsa-Mixer
==========
Alsa-Mixer is a gnome-shell extension to control ALSA output(Master) volume.

<h3> Installation </h3>
run install.sh (recommend)
<pre>
git clone git://github.com/hotvic/Alsa-Mixer.git Alsa-Mixer
cd Alsa-Mixer
chmod +x install.sh
./install.sh
</pre>
or detailed installation
<pre>
git clone git://github.com/hotvic/Alsa-Mixer.git Alsa-Mixer
mkdir -p ~/.local/share/gnome-shell/extensions/Alsa-Mixer\@so-dicas.info
cp Alsa-Mixer/extension.js ~/.local/share/gnome-shell/extensions/Alsa-Mixer\@so-dicas.info/
cp Alsa-Mixer/metadata.json ~/.local/share/gnome-shell/extensions/Alsa-Mixer\@so-dicas.info/
rm -rf Alsa-Mixer/
</pre>

Copyright © 2012 - Victor Aurélio Santos

License GPLv3
