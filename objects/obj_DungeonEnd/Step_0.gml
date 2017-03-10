/// @description SHOOT EVENT
event_inherited();
if collided
{
	audio_play_sound(snd_LevelEnd,10,false);
	var timeNeed = string(obj_DungeonTimer.DungeonCloseTime - obj_DungeonTimer.DungeonTime);
	print("You did it!\n\nScored: " + string(score)+ " Rythm points\nAchieved in: " + timeNeed + " seconds");
	game_end();				// Acabarà sent un final de Dungeon
}