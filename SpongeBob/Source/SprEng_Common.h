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

// 256 = 1 pixel worth of velocity to move sprite by.

// SpongeBob.
#define VIEWSPEED	1							// Speed of 'look ahead' view left or right.
#define LOOKSPEED	1							// Speed to look up or down.
#define PUSHBOXX	LCD_WIDTH/5					// Push scroll x-axis limit.
#define PUSHBOXY	(LCD_HEIGHT-48)/2			// Push scroll y-axis limit.
#define WALKVEL		128							// Velocity for WALK mode.	
#define WALKMAXVEL	256							// Maximum velocity limit for WALK mode.
#define RUNVEL		128							// Velocity for RUN mode.	
#define RUNMAXVEL	512							// Maximum velocity limit for RUN mode.
#define JUMPVEL		-1024						// Jump velocity.
#define GRAVITY		38							// Gravity inertia value.
#define MAXGRAVITY	256*6						// Maximum gravity velocity limit in FALL mode.
#define IDLETERM	10							// Total number of idle sequences available to use.

enum											// Enumerate all sprite direction values.
{
	DIR_CLR,
	DIR_UP,
	DIR_DOWN,
	DIR_LEFT,
	DIR_RIGHT,
};

// Platforms.
#define PLATVEL		256							// Velocity for moving platfrom.

// Monsters.
#define	CLAMRANGE	40							// Range in pixels between SpongeBob & this monster to trigger this monster.
#define CLAMJUMPVEL	-1024						// Jump velocity for this monster.

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
u8	IdleSequencer;								// Idle to use sequence variable.

/////////////////////////////////////////////////
// Global Functions.
/////////////////////////////////////////////////
extern void InitSprites(void);
extern void ClearOAMBuffer(void);
extern void UpdateOAMRam(void);

#endif

//***************************************************************************************************