Alsa-Mixer
==========
Alsa-Mixer is a gnome-shell extension to control ALSA output (Master) volume.

<h3> Installation </h3>
run install.sh (recommended)
<pre>
git clone git://github.com/texasflood/Alsa-Mixer.git Alsa-Mixer
cd Alsa-Mixer
chmod u+x #You may or may not need to do this
./install.sh
</pre>

And then restart the Gnome shell

This is an updated version with a bug fix, the original code was written by Victor Aurélio Santos.
The bug fix is related to a corner case, when the volume reaches 100%, the extension crashes as the regular expression does not handle three digits. In normal use, when the volume reaches 100%, the volume controller crashes. I have also added a simple mute detector.

To mute/unmute without closing the menu, toggle the Sound switch with the spacebar.

License GPLv3
