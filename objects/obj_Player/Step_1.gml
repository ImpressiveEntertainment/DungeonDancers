/// @description PLAYER CONTROLS

event_inherited();

if(global.EDITION_MODE == false)
{
	player_read_kb_controls();

	player_check_current_spot();
}
