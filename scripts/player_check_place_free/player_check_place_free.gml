/// @desc Check if place is free before moving
/// @arg {real} direction

var _direction = argument0;
var _dirX;
var _dirY;
var _collisionObjects = par_Walls;

switch (_direction)
{
	case 1:
		_dirX = 0;
		_dirY = -1;
	break;
    
	case 2:
		_dirX = 1;
		_dirY = 0;
	break;
    
	case 3:
		_dirX = 0;
		_dirY = 1;
	break;
    
	case 4:
		_dirX = -1;
		_dirY = 0;
	break;
    
	default:
	break;
}

var _placeX    = x + (PlayerStepLenght * _dirX) + 1;
var _placeY    = y + (PlayerStepLenght * _dirY) + 1;
var _collision = place_meeting(_placeX, _placeY, _collisionObjects);

if(!_collision)
	player_move(_dirX, _dirY);
