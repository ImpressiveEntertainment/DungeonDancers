/// @description EDITOR SETTINGS

global.EDITION_MODE		= true;

global.OBJECT_SELECTED	= false;
global.SELECTED_OBJECT	= noone;

// MENU TEXT //
TextFont			= fnt_Editor;
TextColor			= c_black;
TextAlignH			= fa_left;
TextAlignV			= fa_top;
TextXscale			= 1;
TextYscale			= 1;
TextRotation		= 0;

MenuOptions			= ["P > Play | Pause / ",
					   "L > Load File / ",
					   "S > Save File"];

MenuOptionsNum		= array_length_1d(MenuOptions);
