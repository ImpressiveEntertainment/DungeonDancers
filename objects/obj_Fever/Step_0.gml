/// @desc COMPTE ENRERE

if(global.EDITION_MODE == false)
{
	if Fever > 0
		Fever -= global.dt_steady/4;
	else
	{
		print("Game over!");
		room_restart();
	}
}
	
FeverPercent = percent(Fever, FeverMax);