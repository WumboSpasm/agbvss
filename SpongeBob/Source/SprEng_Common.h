//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Common (Header).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _SPRENG_COMMON_H
#define _SPRENG_COMMON_H

/////////////////////////////////////////////////
// Defines.
/////////////////////////////////////////////////

// Note: All velocity values are divided down by 256 when the sprite's positions are -
// updated later on, this allows for 'fine' velocity values to be applied to the sprites. 

#define GROUNDTEST 102							// Ground collision test only.

#define PUSHBOXX LCD_WIDTH/5					// Push scroll x-axis limit.
#define PUSHBOXY LCD_HEIGHT/2					// Push scroll y-axis limit.

#define WALKVEL		128							// Velocity for WALK mode.	
#define WALKMAXVEL	512							// Maximum velocity limit for WALK mode.
#define RUNVEL		128							// Velocity for RUN mode.	
#define RUNMAXVEL	1024						// Maximum velocity limit for RUN mode.
#define JUMPVEL		-1024						// Jump velocity.
#define GRAVITY		40							// Gravity inertia value.

enum											// Enumerate all sprite direction values.
{
	DIR_CLR,
	DIR_UP,
	DIR_DOWN,
	DIR_LEFT,
	DIR_RIGHT,
};

/////////////////////////////////////////////////
// Variables.
/////////////////////////////////////////////////
u16 ObjectOAMBuffer[OAM_SIZE];					// 1K OAM buffer.

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////
u16 gSpriteMosaic;							 	// Global sprite mosaic value.
s32 gPushScrollX; 				 				// Push scroll x-axis variable.
s32 gPushScrollY; 		 						// Push scroll y-axis variable.

/////////////////////////////////////////////////
// Global Functions.
/////////////////////////////////////////////////
extern void InitSprites(void);
extern void ClearOAMRam(void);
extern void UpdateOAMRam(void);

#endif

//***************************************************************************************************