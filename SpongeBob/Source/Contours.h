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

enum COLLISION_TILE
{
	COLLISION_TILE_0=0,					// Empty tile.
	COLLISION_TILE_1=2,					// Whole 'moon' tile :).
	COLLISION_TILE_2=3,			 		// 22deg right slope tile 1.
	COLLISION_TILE_3=4,		 			// 22deg right slope tile 2.
	COLLISION_TILE_4=5,		 			// 22deg left slope tile 1.
	COLLISION_TILE_5=6,		 			// 22deg left slope tile 2.
	COLLISION_TILE_6=7,		 			// 45deg right slope tile 1.
	COLLISION_TILE_7=8,		 			// 45deg left slope tile 2.
	COLLISION_TILE_8=1,	 				// Ceiling tile.
};

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