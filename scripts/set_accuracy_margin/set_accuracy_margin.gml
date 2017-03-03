/// @desc Set the player's accuracy margin based on the song's BPM
/// @arg {real} BPM

var _current_BPM  = argument0;
var _base_accuray = .3;
var _base_BPM     = 120;

var _accuracy_margin = (_current_BPM * _base_accuray) / _base_BPM;

return _accuracy_margin;

/*global.ACCURACY_MARGIN = (_current_BPM * _base_accuray) / _base_BPM;

global.ACCURACY_BOTTOM = 1 - global.ACCURACY_MARGIN;

global.ACCURACY_TOP    = global.ACCURACY_MARGIN;*/
