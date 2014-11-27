#!/bin/bash

cp -r alsaVolbar\@texasflood.github.com ~/.local/share/gnome-shell/extensions
sudo cp alsaVolbar\@texasflood.github.com/schemas/org.gnome.shell.extensions.alsaVolbar.gschema.xml /usr/share/glib-2.0/schemas
glib-compile-schemas alsaVolbar\@texasflood.github.com/schemas
sudo glib-compile-schemas /usr/share/glib-2.0/schemas
echo "Done!"
