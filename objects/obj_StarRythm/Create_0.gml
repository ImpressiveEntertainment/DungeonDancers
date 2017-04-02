/// @description Inits
event_inherited();

BeatArray = [1, 0, 0, 0,
			 1, 0, 0, 0,
			 1, 0, 0, 0,
			 1, 0, 0, 0];

// ---- Springs ------ 
// The number of values affected by springing
_springValues = 2;

// Declare springing-related variables
UsesNumericSpringing(_springValues);
spring = false;

// Spring indexes
SPRING_ANGLE = 0;
SPRING_SCALE = 1;
 
// Initialize
_springTarget[SPRING_ANGLE] = 1;
_springValue[SPRING_ANGLE]  = _springTarget[SPRING_ANGLE];

_springTarget[SPRING_SCALE] = 1;
_springValue[SPRING_SCALE]  = _springTarget[SPRING_SCALE];
// -------------------

value = 10;		// Treasure value