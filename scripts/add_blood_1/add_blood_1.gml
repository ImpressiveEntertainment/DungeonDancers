/// @desc Add blood particles
/// @arg {integer} Number of particles
/// @arg {integer} vertical speed
/// @arg {integer} horizontal speed
/// @arg {integer} size
/// @arg {integer} color
/// @arg {integer} alpha
/// @arg {integer} delay to die

for (i = 0; i <= argument0; i++)
{
	myBlood = instance_create_layer(x + irandom_range(-10,10), y + irandom_range(-10,10), "Traps", obj_ParticlesFX);
	myBlood.vv = argument1;
	myBlood.vh = argument2;
	myBlood.size = argument3;
	myBlood.color = argument4;
	myBlood.alpha = argument5;
	myBlood.alarm[0] = argument6;
}