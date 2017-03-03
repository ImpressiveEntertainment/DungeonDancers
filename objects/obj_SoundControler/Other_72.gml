/// @description LOAD AUDIO GROUPS

// GET AUDIO GROUP DATA //
var _type, _group_id, _group_name;

_type			= async_load[? "type"];
_group_id		= async_load[? "group_id"];
_group_name		= audio_group_name(_group_id);

// CHECK AUDIO GROUP LOADED //
if(_type == "audiogroup_load")
{
	AudioGroupsLoaded++;
	
	trace("Audio group ", _group_name ," loaded ", AudioGroupsToLoad - AudioGroupsLoaded, " more to go!");
	
	if(AudioGroupsLoaded == AudioGroupsToLoad)
	{
		trace("All audio groups have been loaded!!!");
		
		global.ALL_AUDIO_GROUPS_LOADED = true;
		
		audio_play_in_sync_group(sg, snd_W1_MasterTrack);
		audio_play_in_sync_group(sg, snd_W1_Track_1);
		audio_play_in_sync_group(sg, snd_W1_Track_2);
		audio_play_in_sync_group(sg, snd_W1_Track_3);
	}
}
