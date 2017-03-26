/// @desc Add blood particles
/// @arg {integer} Number of particles
/// @arg {integer} x position
/// @arg {integer} y position
/// @arg {integer} horSpeed
/// @arg {integer} vertSpeed
/// @arg {integer} size
/// @arg {integer} color
/// @arg {integer} alpha
/// @arg {integer} depth
/// @arg {integer} delay to die
/// @arg {boolean} decrease

for (i = 0; i <= argument0; i++)
{
	myDust = instance_create_depth(argument1 + irandom_range(-5,5), argument2 + irandom_range(-5,5), argument8, obj_ParticlesFX);
	myDust.vh = argument3;
	myDust.vv = argument4;
	myDust.size = argument5;
	myDust.color = argument6;
	myDust.alpha = argument7;
	myDust.alarm[0] = argument9;
	myDust.decrease = argument10;
}