/// @desc Move player towards the indicated direction
/// @arg {real} dirX
/// @arg {real} dirY

var _dirX = argument0;
var _dirY = argument1;
audio_play_sound(snd_GoodMove,10,false);
StepPerfection = GOOD;	// Falta un script que controli la perfecció del nostre ritme de moviment
player_get_rythm(StepPerfection);
x += PlayerStepLenght * _dirX;
y += PlayerStepLenght * _dirY;
