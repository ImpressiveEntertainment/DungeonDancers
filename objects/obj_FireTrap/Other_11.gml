/// @description "ON BEAT" EVENT

var nextImage = image_index + 1;

if(nextImage > image_number)
	nextImage = 0;

image_index = nextImage;

audio_play_sound(ElementSound, 1, 0);
