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

if _dirX != 0
	Facing = _dirX;
	
// Abans de moure'l disparem unes partícules de córrer
add_dust(5,x,y + DisplacementY + 25, irandom_range(-30,-50)*_dirX, irandom_range(-30,-50)*_dirY, random_range(0.75,0.25), c_gray, random_range(0.95,0.5), depth + 1,  1, true);
