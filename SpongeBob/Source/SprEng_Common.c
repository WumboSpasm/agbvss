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
//		 6) The limit of active 'virtual' sprites (i.e. set in 'NUMOBJECTS') that any 32 on screen are sourced from, is currently set to 100 sprites max.

// Sprite sizes supported (taken from offical Nintendo AGB includes 'AgbDefine.h'.

//	OAM_SIZE_8x8	0x00000000					// OBJ 8 x 8 dot.
//	OAM_SIZE_16x16	0x40000000					// OBJ 16 x 16 dot.
//	OAM_SIZE_32x32	0x80000000					// OBJ 32 x 32 dot.
//	OAM_SIZE_64x64	0xc0000000  				// OBJ 64 x 64 dot.
//	OAM_SIZE_16x8	0x00004000					// OBJ 16 x 8 dot.
//	OAM_SIZE_32x8	0x40004000					// OBJ 32 x 8 dot.
//	OAM_SIZE_32x16	0x80004000					// OBJ 32 x 16 dot.
//	OAM_SIZE_64x32	0xc0004000					// OBJ 64 x 32 dot.
//	OAM_SIZE_8x16	0x00008000					// OBJ 8 x 16 dot.
//	OAM_SIZE_8x32	0x40008000					// OBJ 8 x 32 dot.
//	OAM_SIZE_16x32	0x80008000					// OBJ 16 x 32 dot.
//	OAM_SIZE_32x64	0xc0008000					// OBJ 32 x 64 dot.

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
	pAO->sp_xpos=4*8; 							// Set sprite world map x-position.
	pAO->sp_ypos=(11*8)-1;	 					// Set sprite world map y-position.
	pAO->sp_xsize=64;							// Set sprite size in x (8/16/32/64).
	pAO->sp_ysize=64;							// Set sprite size in y (8/16/32/64).
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

	pAO=ObjectGet2();							// Get a free sprite slot.
	pAO->sp_type=TYPE_MISC1;					// Set sprite type.
	pAO->sp_mode=0;								// Set sprite mode.
	pAO->sp_xpos=0; 							// Set sprite world map x-position.
	pAO->sp_ypos=(11*8)-1;	 					// Set sprite world map y-position.
	pAO->sp_xsize=64;							// Set sprite size in x (8/16/32/64).
	pAO->sp_ysize=64;							// Set sprite size in y (8/16/32/64).
	pAO->sp_aninum=11;							// Set sprite animation sequence number.
	pAO->sp_anispeed=3;							// Set sprite default animation speed.
	pAO->sp_flash=OFF;							// Set sprite flash mode.
	pAO->sp_affine=OAM_AFFINE_NORMAL; 			// Set sprite affine (OAM_AFFINE_NONE/NORMAL/TWICE/ERASE).
	pAO->sp_rotate=0;							// Set sprite rotatation angle (0-256).
	pAO->sp_flipX=OFF;							// Set sprite h-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_flipY=OFF;							// Set sprite v-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_scaleX=0x100;						// Set sprite scale-x size (100%).
	pAO->sp_scaleY=0x100;						// Set sprite scale-y size (100%).
	pAO->sp_mosaic=OFF;							// Set sprite global mosaic (ON/OFF).
	pAO->sp_blend=OAM_OBJ_NORMAL;				// Set sprite alpha blend (OAM_OBJ_NORMAL/BLEND/WINDOW)
	pAO->sp_priority=1;							// Set sprite priority (0/1/2/3) (relative to background).

	pAO=ObjectGet2();							// Get a free sprite slot.
	pAO->sp_type=TYPE_MISC1;					// Set sprite type.
	pAO->sp_mode=0;								// Set sprite mode.
	pAO->sp_xpos=1024-64;						// Set sprite world map x-position.
	pAO->sp_ypos=(11*8)-1;	 					// Set sprite world map y-position.
	pAO->sp_xsize=64;							// Set sprite size in x (8/16/32/64).
	pAO->sp_ysize=64;							// Set sprite size in y (8/16/32/64).
	pAO->sp_aninum=11;							// Set sprite animation sequence number.
	pAO->sp_anispeed=3;							// Set sprite default animation speed.
	pAO->sp_flash=OFF;							// Set sprite flash mode.
	pAO->sp_affine=OAM_AFFINE_TWICE; 			// Set sprite affine (OAM_AFFINE_NONE/NORMAL/TWICE/ERASE).
	pAO->sp_rotate=0;							// Set sprite rotatation angle (0-256).
	pAO->sp_flipX=OFF;							// Set sprite h-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_flipY=OFF;							// Set sprite v-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_scaleX=0x200;						// Set sprite scale-x size (100%).
	pAO->sp_scaleY=0x200;						// Set sprite scale-y size (100%).
	pAO->sp_mosaic=OFF;							// Set sprite global mosaic (ON/OFF).
	pAO->sp_blend=OAM_OBJ_BLEND;				// Set sprite alpha blend (OAM_OBJ_NORMAL/BLEND/WINDOW)
	pAO->sp_priority=1;	

	pAO=ObjectGet2();							// Get a free sprite slot.
	pAO->sp_type=TYPE_OFF;						// Null last sprite in list - ALWAYS !!!.
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
