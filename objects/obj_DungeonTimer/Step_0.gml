/// @desc COMPTE ENRERE

if(global.EDITION_MODE == false)
{
	if DungeonTime > 0
		DungeonTime -= global.dt_steady;
	else
	{
		print("Game over!");
		room_restart();
	}
}

DungeonTime = clamp(DungeonTime, 0, DungeonCloseTime);