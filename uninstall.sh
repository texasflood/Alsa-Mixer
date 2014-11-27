#!/bin/bash

echo "Removing directory"
rm -rf ~/.local/share/gnome-shell/extensions/alsaVolbar\@texasflood.github.com
echo "Removing Schema"
sudo rm /usr/share/glib-2.0/schemas/org.gnome.shell.extensions.alsaVolbar.gschema.xml
echo "Recompiling schemas"
sudo glib-compile-schemas /usr/share/glib-2.0/schemas
echo "Done!"
