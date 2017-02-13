/// @desc Returns a ds_map with all the project Objects hierarchy

var hierarchyMap = ds_map_create();
var parent;

for(var obj = 0; object_exists(obj); obj++)
{
	// adding a new list assigned to the object, if needed
	if(!ds_map_exists(hierarchyMap, obj))
		ds_map_add_list(hierarchyMap, obj, ds_list_create());

	// this will populate parent's list with direct children
	parent = object_get_parent(obj);
	
	if (object_exists(parent))
	{
		if (!ds_map_exists(hierarchyMap, parent))
			ds_map_add_list(hierarchyMap, parent, ds_list_create());
		
		ds_list_add(hierarchyMap[? parent], obj);
	}
	
	// this will populate parent's list with all descendant objects
	// if you want to use that variation instead, remove the direct children variation
	/*parent = object_get_parent(obj);
	
	for(parent = object_get_parent(obj); object_exists(parent); parent = object_get_parent(parent))
	{
		if(!ds_map_exists(global.hierarchy, parent))
			ds_map_add_list(global.hierarchy, parent, ds_list_create());
		
		ds_list_add(global.hierarchy[? parent], obj);
		
		trace(object_get_name(obj));
	}*/
}

return hierarchyMap;
