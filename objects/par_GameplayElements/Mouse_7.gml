/// @description EDIT OBJECT

if(global.EDITION_MODE == true && global.OBJECT_SELECTED == false)
{
	global.OBJECT_SELECTED = true;
	global.SELECTED_OBJECT = id;
	
	instance_create_layer(x, y, layer_get_id("Editor"), BeatEditorBubble);
}
else if(global.SELECTED_OBJECT == id)
{
	global.OBJECT_SELECTED = false;
	global.SELECTED_OBJECT = noone;
	
	instance_destroy(BeatEditorBubble);
}
