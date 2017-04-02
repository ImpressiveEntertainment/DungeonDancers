/// @description Insert description here
event_inherited();

BeatArray = [1, 0, 0, 0,
			 1, 0, 0, 0,
			 1, 0, 0, 0,
			 1, 0, 0, 0];

// The number of values affected by springing
_springValues = 1;

// Declare springing-related variables
UsesNumericSpringing(_springValues);
spring = false;

// Spring indexes
SPRING_SCALE = 0;
/*
SPRING_H     = 1;
SPRING_S     = 2;
SPRING_V     = 3;
*/
 
// Initialize
_springTarget[SPRING_SCALE] = 1;
_springValue[SPRING_SCALE]  = _springTarget[SPRING_SCALE];
/*
_springTarget[SPRING_H]     = 0;
_springValue[SPRING_H]      = _springTarget[SPRING_H];
_springTarget[SPRING_S]     = 240;
_springValue[SPRING_S]      = _springTarget[SPRING_S]; 
_springTarget[SPRING_V]     = 240;
_springValue[SPRING_V]      = _springTarget[SPRING_V];
*/