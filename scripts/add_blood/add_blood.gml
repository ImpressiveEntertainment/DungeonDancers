/// @desc Add blood particles
/// @arg {integer} Number of particles
/// @arg {integer} posX
/// @arg {integer} posY
/// @arg {integer} horSpeed
/// @arg {integer} vertSpeed
/// @arg {integer} size
/// @arg {integer} color
/// @arg {integer} alpha
/// @arg {integer} depth
/// @arg {integer} delay to die
/// @arg {boolean} decrease

var posX = argument1;
var posY = argument2;

for (i = 0; i <= argument0; i++)
{
	myBlood = instance_create_depth(posX + irandom_range(-5,5), posY + irandom_range(-5,5), argument8, obj_ParticlesFX);
	myBlood.vh = irandom_range(-argument3, argument3);
	myBlood.vv = irandom_range(-argument4, argument4);
	myBlood.size = argument5;
	myBlood.color = argument6;
	myBlood.alpha = argument7;
	myBlood.alarm[0] = argument9;
	myBlood.decrease = argument10;
}