Alsa-Mixer
==========
Alsa-Mixer is a gnome-shell extension to control ALSA output (Master) volume.

<h3> Installation </h3>
run install.sh or install from https://extensions.gnome.org/extension/903/alsa-volume-bar/
<pre>
git clone git://github.com/texasflood/Alsa-Mixer.git Alsa-Mixer
cd Alsa-Mixer
chmod u+x install.sh #You may or may not need to do this
./install.sh
</pre>

And then restart the Gnome shell

This is an updated version with a bug fix and several new features and improvements, the original code was written by Victor Aurélio Santos.
The bug fix is related to a corner case, when the volume reaches 100%, the extension crashes as the regular expression does not handle three digits. In normal use, when the volume reaches 100%, the volume controller crashes. I have also added a simple mute detector.

To mute/unmute without closing the menu, toggle the Sound switch with the spacebar.

This is not being maintained any more.

License GPLv3
