/// @description RESET OBJECT

event_inherited();

// AL TANTO! Aquest game_restart és provisional
// per no perdre el feeling dels collectables quan morim.
// Quan funcionin els checkpoints utilitzarem les linies de Origin X
with obj_SoundControler
	event_user(0);
game_restart();

// Comentat provisionalment
/*
x = OriginX;
y = OriginY;
*/
