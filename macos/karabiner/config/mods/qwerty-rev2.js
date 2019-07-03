const utils = require('../../utils');
const { corneKeyboard } = require('../devices');

const remap = (fromKey, toKey, options) => utils.remap(fromKey, toKey, {
  // conditions: [{
  //   type: 'device_unless',
  //   identifiers: [corneKeyboard],
  // }],
  // ...options,
});

const modTap = (fromKey, toKey, toKeyOnTap, options) => utils.modTap(fromKey, toKey, toKeyOnTap, {
  // conditions: [{
  //   type: 'device_unless',
  //   identifiers: [corneKeyboard],
  // }],
  // ...options,
});

module.exports = {
  title: 'Qwerty layer Rev2',
  rules: [
    {
      description: 'Thumb cluster',
      manipulators: [
        modTap(['spacebar'], [['right_command']], [['return_or_enter']]),
        modTap(['right_command'], [['right_shift']], [['escape']]),
        modTap(['left_command'], [['left_shift']], [['spacebar']]),
        // sticky(['left_command', ['caps_lock', 'command', 'control', 'option']], 'symbols_layer'),
        modTap(['right_option'], [['right_option']], [['escape']]),
        modTap(['left_option'], [['right_control']], [['spacebar']]),
      ],
    },
    {
      description: 'Custom Qwerty (Rev2)',
      manipulators: [
        remap(['delete_or_backspace'], [['f13']]),
        remap(['open_bracket'], [['delete_or_backspace']]),
        remap(['caps_lock'], [['grave_accent_and_tilde']]),
        remap(['quote'], [['quote']]),
        remap(['left_shift'], [['open_bracket']]),
        remap(['right_shift'], [['close_bracket']]),
      ],
    },
  ],
};
