/// @description SHOOT EVENT
event_inherited();
if collided
{
	audio_play_sound(snd_LevelEnd,10,false);
	print("You didi it!")
	game_end();				// Acabarà sent un final de Dungeon
}