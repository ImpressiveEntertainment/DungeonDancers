/// @desc Check for player's current spot to determine if it's a safe one or not

var _collisionObjects	= par_Traps;
var _placeX				= x;
var _placeY				= y;
var _collision			= place_meeting(_placeX, _placeY, _collisionObjects);
var _placeIsSafe		= true;

if(_collision)
{
	var _collisionObjID         = instance_place(_placeX, _placeY, _collisionObjects);
	var _collisionObjInd        = _collisionObjID.object_index;
	var _collisionObjName       = object_get_name(_collisionObjInd);
	var _collisionObjParentInd  = object_get_parent(_collisionObjInd);
	var _collisionObjParentName = object_get_name(_collisionObjParentInd);
	
	if(_collisionObjID.IsActive == true)
	{
		//trace("Player is dead!");
		// Efecte de sang en colisionar contra trampa de punxes
		if _collisionObjName = "obj_SpikeTrap"
			add_blood(5, x, y, 10, 10, random_range(1.5,0.5), c_red, random_range(0.95,0.5), depth + 1, room_speed*3, false);
		event_user(0);
	}
	//else
		//trace("Collision with ", _collisionObjName);
}
//else
	//trace("Player is safe!!!");	
