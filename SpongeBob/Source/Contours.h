//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Platform Contour Collision & Tables (Header).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _CONTOURS_H
#define _CONTOURS_H

/////////////////////////////////////////////////
// Defines.
/////////////////////////////////////////////////

// Collision tile data definitions.

#define COLLISION_TILE_0 0x0000				// Empty tile.
#define COLLISION_TILE_1 0x00BD//0x0001		// Whole 'moon' tile :).
#define COLLISION_TILE_2 793//0x0002	 	// 22deg right slope tile 1.
#define COLLISION_TILE_3 794//0x0003	 	// 22deg right slope tile 2.
#define COLLISION_TILE_4 795//0x0403	 	// 22deg left slope tile 1.
#define COLLISION_TILE_5 796//0x0402	 	// 22deg left slope tile 2.
#define COLLISION_TILE_6 797//0x0404	 	// 45deg right slope tile 1.
#define COLLISION_TILE_7 798//0x0004	 	// 45deg left slope tile 2.
#define COLLISION_TILE_8 799//0x0801	 	// Ceiling tile.

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////
extern void CheckContour(Object*);

extern const u8 Contour01[8];
extern const u8 Contour02[8];
extern const u8 Contour03[8];
extern const u8 Contour04[8];
extern const u8 Contour05[8];
extern const u8 Contour06[8];
extern const u8 Contour07[8];

#endif

//***************************************************************************************************