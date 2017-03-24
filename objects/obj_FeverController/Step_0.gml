/// @desc COMPTE ENRERE

if(global.EDITION_MODE == false)
{
	if obj_MainPlayer.Rythm > 0
		obj_MainPlayer.Rythm -= global.dt_steady/2;
	else
	{
		print("Game over!");
		room_restart();
	}
}
	
RythmPercent = percent(obj_MainPlayer.Rythm, obj_MainPlayer.RythmMax);