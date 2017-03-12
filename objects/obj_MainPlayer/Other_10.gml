/// @description RESET OBJECT

event_inherited();

// AL TANTO! Aquest game_restart és provisional
// per no perdre el feeling dels collectables quan morim.
// Quan funcionin els checkpoints utilitzarem les linies de Origin X
//game_restart();

// Comentat provisionalment
audio_play_sound(snd_Fail,10,false);
x = OriginX;
y = OriginY;

