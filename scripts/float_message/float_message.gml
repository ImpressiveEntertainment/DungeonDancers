/// @desc Shows a floating message
/// @arg {string} message
/// @arg {integer} vertical speed
/// @arg {integer} horizontal speed

myMsg = instance_create_layer(x,y,"HUD",obj_FloatingMessage);
myMsg.text = argument0;
if argument1 != 0
	myMsg.vv = argument1;
else
	myMsg.doV = 0;		// no actualitzem la velocitat vertical
if argument2 != 0
	myMsg.vh = argument2;
else
	myMsg.doH = 0;		// no actualitzem la velocitat horitzontal
