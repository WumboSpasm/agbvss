//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Common (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "SprEng_Animate.h"
#include "SprEng_Display.h"

//***************************************************************************************************

// Initialise the sprite engine.

// Note: 1) This sprite engine can handle upto a maximum of 32 * 64*64 256 colour sprites on screen at once.
//		 2) In reality though this is really limited to about 9 * 64x64 256 colour sprites before the GBA drops a frame, or too many sprites per line cause flicker.
//		 3) This is can be improved by using smaller sprites to get more on screen at any one time.
//		 4) All sprites are indiviually rotatable/scaleable/flipable/blendable etc.
//		 5) Only square sprite sizes of 8*8, 16*16, 32*32 & 64*64 are supported by this engine (i.e. no 'in-between' sizes like 16*32 etc.).
//		 6) The limit of active 'virtual' sprites (i.e. set in 'NUMOBJECTS') that any 32 on screen are sourced from, is currently set to 100 sprites max.

void InitSprites(void)
{
	Object*	pAO;								// Pointer to base of objects.

	ClearOAMRam();								// Initialize OAM RAM memory.

	gSpriteMosaic=3; 							// Init. global sprite mosaic value (50%).
	gPushScrollX=0;								// Init. push scroll box x-axis variable.
	gPushScrollY=0;								// Init. push scroll box y-axis variable.

	ObjectInit();								// Init. sprite 'object control' engine.

	pAO=ObjectGet2();							// Get a free sprite slot.
	pAO->sp_type=TYPE_SPONGEBOB;				// Set sprite type.
	pAO->sp_mode=MODE_STAND;					// Set sprite mode.
	pAO->sp_xpos=120;							// Set sprite world map x-position.
	pAO->sp_ypos=102;//396; 					// Set sprite world map y-position.
	pAO->sp_size=64;							// Set sprite size in x & y (8/16/32/64).
	pAO->sp_aninum=0;							// Set sprite animation sequence number.
	pAO->sp_anispeed=3;							// Set sprite default animation speed.
	pAO->sp_flash=OFF;							// Set sprite flash mode.
	pAO->sp_affine=OAM_AFFINE_NONE; 			// Set sprite affine (OAM_AFFINE_NONE/NORMAL/TWICE/ERASE).
	pAO->sp_rotate=0;							// Set sprite rotatation angle (0-256).
	pAO->sp_flipX=OFF;							// Set sprite h-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_flipY=OFF;							// Set sprite v-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_scaleX=0x100;						// Set sprite scale-x size (100%).
	pAO->sp_scaleY=0x100;						// Set sprite scale-y size (100%).
	pAO->sp_mosaic=OFF;							// Set sprite global mosaic (ON/OFF).
	pAO->sp_blend=OAM_OBJ_NORMAL;				// Set sprite alpha blend (OAM_OBJ_NORMAL/BLEND/WINDOW)
	pAO->sp_priority=1;							// Set sprite priority (0/1/2/3) (relative to background).
}

//***************************************************************************************************

// Initialize OAM RAM memory.

void ClearOAMRam(void)
{
	DmaClear(3,0,OAM,OAM_SIZE,32);				// Clear OAM.
}

//***************************************************************************************************

// Update OAM RAM memory.

void UpdateOAMRam(void)
{
   	DmaCopy(3,ObjectOAMBuffer,OAM,OAM_SIZE,32);	// DMA transfer entire OAM buffer to OAM RAM.
}

//***************************************************************************************************
