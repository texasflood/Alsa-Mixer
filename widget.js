const St = imports.gi.St;
const PopupMenu = imports.ui.popupMenu;
const Lang = imports.lang;

const SliderItem = new Lang.Class({
    Name: "SliderItem",
    Extends: PopupMenu.PopupSliderMenuItem,

    _init: function(text, value) {
        this.parent(value);

        this.removeActor(this._slider);
        this._box = new St.Table({style_class: 'slider-item'});
        this._label = new St.Label({text: text});
        this._label.set_width (40);
        this._box.add(this._label, {row: 0, col: 1, x_expand: false})
        this._box.add(this._slider, {row: 0, col: 0, x_expand: true})

        this.addActor(this._box, {span: -1, expand: true});
    },

    setLabel: function(text) {
      this._label.text = "   ".concat(String(text));
    }
});
