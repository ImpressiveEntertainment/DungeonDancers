/// @description EDITION MODE ON / OFF

if(global.EDITION_MODE == true)
	global.EDITION_MODE = false;
else
{
	global.EDITION_MODE	= true;
	
	with obj_SoundControler
		event_user(0);
		
	with par_GameplayElements
		event_user(0);
}
