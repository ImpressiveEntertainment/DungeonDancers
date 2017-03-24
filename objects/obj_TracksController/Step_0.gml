/// @description Update tracks number

var RythmDivision = obj_MainPlayer.RythmMax/TracksMax[global.world];

// Selector de tracks desbloquejats molt marrano
if obj_MoodController.RythmPercent = 0
	TrackNum = 0;
if obj_MoodController.RythmPercent > 0
	TrackNum = 1;
if obj_MoodController.RythmPercent > RythmDivision
	TrackNum = 2;
if obj_MoodController.RythmPercent > RythmDivision*2.25
	TrackNum = 3;
if obj_MoodController.RythmPercent > RythmDivision*3.5
	TrackNum = 4;