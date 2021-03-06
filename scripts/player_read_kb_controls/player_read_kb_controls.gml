/// @desc Read player keyboard controls

if(keyboard_key)
{
	var _upKey			= keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0, gp_padu);
	var _rightKey		= keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0, gp_padr);
	var _downKey		= keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0, gp_padd);
	var _leftKey		= keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(0, gp_padl);
	
	var _playerDirection = 0;
    
	if(_upKey)
		_playerDirection = 1;
	if(_rightKey)
		_playerDirection = 2;
	if(_downKey)
		_playerDirection = 3;
	if(_leftKey)
		_playerDirection = 4;
	
	if(_playerDirection != 0)
	{
		var _notePosition	= (global.ELAPSED_TIME * (global.SONG_BPM * (1 / 60))) * 1;
		var _accuracyMargin	= global.ACCURACY_MARGIN;
		var _playerAccuracy	= 1 - frac(_notePosition);
		
		if(_playerAccuracy == 0)
			_playerAccuracy = 1;
		
		if(_playerAccuracy >= (1 - _accuracyMargin) && _playerAccuracy <= 1) || (_playerAccuracy >= 0 && _playerAccuracy <= _accuracyMargin)
			player_check_place_free(_playerDirection);
		else
			player_miss();
	}
}
