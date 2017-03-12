/// @desc Move player towards the indicated direction
/// @arg {real} dirX
/// @arg {real} dirY

var _dirX = argument0;
var _dirY = argument1;
audio_play_sound(snd_GoodMove,10,false);
x += PlayerStepLenght * _dirX;
y += PlayerStepLenght * _dirY;
