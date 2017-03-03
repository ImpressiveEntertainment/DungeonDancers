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
		//trace("Player is dead!");
		event_user(0);
	//else
		//trace("Collision with ", _collisionObjName);
}
//else
	//trace("Player is safe!!!");	
