/// @desc Read player keyboard controls

if(keyboard_key)
{
	var upKey		= keyboard_check_pressed(vk_up);
	var rightKey	= keyboard_check_pressed(vk_right);
	var downKey		= keyboard_check_pressed(vk_down);
	var leftKey		= keyboard_check_pressed(vk_left);
	
	var playerDirection = 0;
    
	if(upKey)
		playerDirection = 1;
	if(rightKey)
		playerDirection = 2;
	if(downKey)
		playerDirection = 3;
	if(leftKey)
		playerDirection = 4;
	
	if(playerDirection != 0)
	{
		var notePosition	= (global.ELAPSED_TIME * (global.SONG_BPM * (1 / 60))) * 1;
		var accuracyMargin	= global.ACCURACY_MARGIN;
		var playerAccuracy	= 1 - frac(notePosition);
		
		if(playerAccuracy == 0)
			playerAccuracy = 1;
		
		if(playerAccuracy >= (1 - accuracyMargin) && playerAccuracy <= 1) || (playerAccuracy >= 0 && playerAccuracy <= accuracyMargin)
		{
			player_check_place_free(playerDirection);
			sprite_index = s_PlayerJump;
		}
		else
			player_miss();
	}
}
