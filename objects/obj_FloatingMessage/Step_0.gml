/// @description Update changes

vv = lerp(vv*doV, 1, 0.5*doV);
vh = lerp(vh*doH, 1*dir, 0.5*doH);
alpha = lerp(alpha, 0, 0.05);

// Destroy
if alpha <= 0
	instance_destroy();