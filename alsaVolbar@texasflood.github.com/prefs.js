const Gtk = imports.gi.Gtk;
const Lang = imports.lang;
const Gettext = imports.gettext.domain('alsaVolbar');
const _ = Gettext.gettext;
const Convenience = imports.misc.extensionUtils.getCurrentExtension().imports.convenience;

let settings;
let boolSettings;

function _createBoolSetting(setting) {
  let hbox = new Gtk.Box({
    orientation: Gtk.Orientation.HORIZONTAL
  });

  let settingLabel = new Gtk.Label({
    label: boolSettings[setting].label,
    xalign: 0
  });

  let settingSwitch = new Gtk.Switch({
    active: settings.get_boolean(setting)
  });
  settingSwitch.connect('notify::active', function(button) {
    settings.set_boolean(setting, button.active);
  });

  if (boolSettings[setting].help) {
    settingLabel.set_tooltip_text(boolSettings[setting].help);
    settingSwitch.set_tooltip_text(boolSettings[setting].help);
  }

  hbox.pack_start(settingLabel, true, true, 0);
  hbox.add(settingSwitch);

  return hbox;
}

/*
   Shell-extensions handlers
   */

function init() {
  let schema = 'org.gnome.shell.extensions.alsaVolbar';
  settings = Convenience.getSettings(schema);

  boolSettings = {
    showmute: {
      label: _("Show the mute button."),
      help: _("Default: ON")
    },
    showalsamixer: {
      label: _("Show the alsamixer button."),
      help: _("Default: OFF")
    },
    showautomute: {
      label: _("Show the auto mute button."),
      help: _("Default: OFF")
    },
  };
}

function buildPrefsWidget() {
  let frame = new Gtk.Box({
    orientation: Gtk.Orientation.VERTICAL,
    border_width: 10
  });
  let vbox = new Gtk.Box({
    orientation: Gtk.Orientation.VERTICAL,
    margin: 20,
    margin_top: 10
  });

  // Add all bool settings
  for (setting in boolSettings) {
    let hbox = _createBoolSetting(setting);
    vbox.add(hbox);
  }

  frame.add(vbox);
  frame.show_all();

  return frame;
}
