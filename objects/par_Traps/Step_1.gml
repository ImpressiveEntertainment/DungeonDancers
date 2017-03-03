/// @description TRAP ACTIVATION

event_inherited();

if(image_index >= ActivationFrame)
	IsActive = true;
else
	IsActive = false;
