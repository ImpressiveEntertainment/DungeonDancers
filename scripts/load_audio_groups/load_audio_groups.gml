/// @desc Load AudioGroups
/// @arg {real} AudioGroup1
/// @arg {real} AudioGroup2
/// @arg {real} AudioGroup3
/// @arg {real} ...

for (var i = 0; i < argument_count; i++)
	audio_group_load(argument[i]);
	
return argument_count;