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
#include "SprEng_Display.h"

//***************************************************************************************************

// Initialise the sprite engine.

void InitSprites(void)
{
	Object*	pAO;								// Pointer to base of objects.

	ClearOAMRam();								// Initialize OAM RAM memory.

	SpriteMosaic=7;								// Init. global sprite mosaic value (50%).

	ObjectInit();								// Init. sprite 'object control' engine.

	pAO=ObjectGet2();							// Get a free sprite slot.
	pAO->sp_type=TYPE_SPRITEA; 					// Set sprite type.
	pAO->sp_xpos=64;							// Set sprite world map x-position.
	pAO->sp_ypos=40;							// Set sprite world map y-position.
	pAO->sp_size=64;							// Set actual sprite size x.
	pAO->sp_affine=OAM_AFFINE_TWICE;			// Set sprite affine (OAM_AFFINE_NONE/NORMAL/TWICE/ERASE).
	pAO->sp_rotate=0;							// Set sprite rotatation angle (0-256).
	pAO->sp_flipX=OFF;							// Set sprite h-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_flipY=OFF;							// Set sprite v-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_scaleX=0x200;						// Set sprite scale-x size (100%).
	pAO->sp_scaleY=0x200;						// Set sprite scale-y size (100%).
	pAO->sp_mosaic=OFF;							// Set sprite global mosaic (ON/OFF).
	pAO->sp_blend=OAM_OBJ_NORMAL;				// Set sprite alpha blend (OAM_OBJ_NORMAL/BLEND/WINDOW)
	pAO->sp_priority=1;							// Set sprite priority (0/1/2/3) (relative to background).

	pAO=ObjectGet2();							// Get a free sprite slot.
	pAO->sp_type=TYPE_SPRITEB; 					// Set sprite type.
	pAO->sp_xpos=80;							// Set sprite world map x-position.
	pAO->sp_ypos=40;							// Set sprite world map y-position.
	pAO->sp_size=64;							// Set actual sprite size x.
	pAO->sp_affine=OAM_AFFINE_NORMAL;			// Set sprite affine (OAM_AFFINE_NONE/NORMAL/TWICE/ERASE).
	pAO->sp_rotate=0;							// Set sprite rotatation angle (0-256).
	pAO->sp_flipX=OFF;							// Set sprite h-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_flipY=OFF;							// Set sprite v-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_scaleX=0x100;						// Set sprite scale-x size (100%).
	pAO->sp_scaleY=0x100;						// Set sprite scale-y size (100%).
	pAO->sp_mosaic=OFF;							// Set sprite global mosaic (ON/OFF).
	pAO->sp_blend=OAM_OBJ_NORMAL;				// Set sprite alpha blend (OAM_OBJ_NORMAL/BLEND/WINDOW)
	pAO->sp_priority=2;							// Set sprite priority (0/1/2/3) (relative to background).

	pAO=ObjectGet2();							// Get a free sprite slot.
	pAO->sp_type=TYPE_SPRITEC; 					// Set sprite type.
	pAO->sp_xpos=128;							// Set sprite world map x-position.
	pAO->sp_ypos=40;							// Set sprite world map y-position.
	pAO->sp_size=64;							// Set actual sprite size x.
	pAO->sp_affine=OAM_AFFINE_NONE;				// Set sprite affine (OAM_AFFINE_NONE/NORMAL/TWICE/ERASE).
	pAO->sp_rotate=0;							// Set sprite rotatation angle (0-256).
	pAO->sp_flipX=ON;							// Set sprite h-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_flipY=OFF;							// Set sprite v-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_scaleX=0x100;						// Set sprite scale-x size (100%).
	pAO->sp_scaleY=0x100;						// Set sprite scale-y size (100%).
	pAO->sp_mosaic=OFF;							// Set sprite global mosaic (ON/OFF).
	pAO->sp_blend=OAM_OBJ_BLEND;				// Set sprite alpha blend (OAM_OBJ_NORMAL/BLEND/WINDOW)
	pAO->sp_priority=3;							// Set sprite priority (0/1/2/3) (relative to background).

	pAO=ObjectGet2();							// Get a free sprite slot.
	pAO->sp_type=TYPE_SPRITED; 					// Set sprite type.
	pAO->sp_xpos=64;							// Set sprite world map x-position.
	pAO->sp_ypos=40;							// Set sprite world map y-position.
	pAO->sp_size=64;							// Set actual sprite size x.
	pAO->sp_affine=OAM_AFFINE_NONE;				// Set sprite affine (OAM_AFFINE_NONE/NORMAL/TWICE/ERASE).
	pAO->sp_rotate=0;							// Set sprite rotatation angle (0-256).
	pAO->sp_flipX=OFF;							// Set sprite h-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_flipY=ON;							// Set sprite v-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_scaleX=0x100;						// Set sprite scale-x size (100%).
	pAO->sp_scaleY=0x100;						// Set sprite scale-y size (100%).
	pAO->sp_mosaic=OFF;							// Set sprite global mosaic (ON/OFF).
	pAO->sp_blend=OAM_OBJ_NORMAL;				// Set sprite alpha blend (OAM_OBJ_NORMAL/BLEND/WINDOW)
	pAO->sp_priority=2;		

	DmaArrayCopy(3,Spongey_Char,OBJ_MODE0_VRAM+(64*64*0),16); // Copy sprite character data.
	DmaArrayCopy(3,Patrick_Char,OBJ_MODE0_VRAM+(64*64*1),16); // Copy sprite character data.
	DmaArrayCopy(3,Sandy_Char,OBJ_MODE0_VRAM+(64*64*2),16); // Copy sprite character data.
	DmaArrayCopy(3,Spongey_Char,OBJ_MODE0_VRAM+(64*64*3),16); // Copy sprite character data.
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
