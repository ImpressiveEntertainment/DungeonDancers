/// @description Update changes

vh = lerp(vh, 0, 0.5);
vv = lerp(vv, 0, 0.5);

if vanish
	alpha = lerp(alpha, 0, 0.05);
else
	alpha = lerp(alpha, 0.25, 0.01);
	
// Destroy
if alpha <= 0
	instance_destroy();