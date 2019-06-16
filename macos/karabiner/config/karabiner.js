const { profile } = require('../utils');
const { corneKeyboard } = require('./devices');

const arrows = require('./mods/arrows');
const emacs = require('./mods/emacs');
const fn = require('./mods/fn');
const launcher = require('./mods/launcher');
const qwerty = require('./mods/qwerty');
const qwertyRev2 = require('./mods/qwerty-rev2');
const symbols = require('./mods/symbols');
const symbolsRev2 = require('./mods/symbols-rev2');

const karabiner = {
  profiles: [
    profile('Clean'),
    profile('Rev 1', [
      arrows,
      emacs,
      fn,
      symbols,
      qwerty,
      launcher,
    ], {
      devices: [{
        identifiers: corneKeyboard,
        disable_built_in_keyboard_if_exists: false,
        ignore: false,
        manipulate_caps_lock_led: true,
      }],
    }),
    profile('Rev 2', [
      arrows,
      emacs,
      fn,
      symbolsRev2,
      qwertyRev2,
      launcher,
    ], {
      selected: true,
    }),
  ],
  global: {
    check_for_updates_on_startup: true,
    show_in_menu_bar: true,
    show_profile_name_in_menu_bar: false,
  },
};

const complexModifications = {
  arrows,
  emacs,
  fn,
  launcher,
  qwerty,
  qwertyRev2,
  symbolsRev2,
};

module.exports = {
  karabiner,
  complexModifications,
};
