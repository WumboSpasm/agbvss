//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Common (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "Scroll_Engine.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "SprEng_Animate.h"
#include "SprEng_Display.h"

//***************************************************************************************************

// Initialise the sprite engine.

// Note: 1) This sprite engine can handle upto a maximum of 32 * n*n (256 colour) hardware sprites on screen at once.
//		 2) In reality though this is really limited to about 9 * 64x64 (256 colour) hardware sprites before too many sprites per line cause drop-out etc.
//		 3) This is can be improved by using smaller sprites to get more on screen at any one time.
//		 4) All sprites are indiviually rotatable/scaleable/flipable/blendable etc. if required (note: you can't rotate 'and' flip sprites tho !).
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
	u16 Plap;

	Object*	pAO;								// Pointer to base of objects.

	ClearOAMBuffer();					 		// Initialize OAM buffer with default parameters.

	gSpriteMosaic=3; 							// Init. global sprite mosaic value (50%).
	gPushScrollX=0;								// Init. push scroll box x-axis variable.
	gPushScrollY=0;								// Init. push scroll box y-axis variable.

	ObjectInit();								// Init. sprite 'object control' engine.

	pAO=ObjectGet2();							// Get a free sprite slot.
	pAO->sp_type=TYPE_SPONGEBOB;				// Set sprite type.
	pAO->sp_mode=MODE_FREEFLIGHT;					// Set sprite mode.
	pAO->sp_xpos=(17*8)+4;						// Set sprite world map x-position.
	pAO->sp_ypos=(8*8)-1;						// Set sprite world map y-position.
	pAO->sp_xsize=32;							// Set sprite size in x (8/16/32/64).
	pAO->sp_ysize=32;							// Set sprite size in y (8/16/32/64).
	pAO->sp_aninum=0;							// Set sprite animation sequence number.
	pAO->sp_anispeed=3;							// Set sprite default animation speed.
	pAO->sp_flash=OFF;							// Set sprite flash mode.
	pAO->sp_affine=OAM_AFFINE_NONE; 			// Set sprite affine (OAM_AFFINE_NONE/NORMAL/TWICE/ERASE).
	pAO->sp_rotate=0;							// Set sprite rotatation angle (0-256).
	pAO->sp_flipX=OFF;							// Set sprite h-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_flipY=OFF;							// Set sprite v-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_scaleX=256;							// Set sprite scale-x size (100%).
	pAO->sp_scaleY=256;							// Set sprite scale-y size (100%).
	pAO->sp_mosaic=OFF;							// Set sprite global mosaic (ON/OFF).
	pAO->sp_blend=OAM_OBJ_NORMAL;				// Set sprite alpha blend (OAM_OBJ_NORMAL/BLEND/WINDOW)
	pAO->sp_priority=1;							// Set sprite priority (0/1/2/3) (relative to background).

/*	switch(Level)								// Get level.
	{

//---------------------------------------------------------------------------------------------------

// Chapter 2.

//--

// Level 1 & Sub-Levels.

		case LEVEL020101:
			pAO->sp_xpos=72*8; 				   	// Set SPONGEBOB sprite world map x-position.
			pAO->sp_ypos=(82*8)-1;	 		   	// Set SPONGEBOB sprite world map y-position.
			break;
		case LEVEL020102: 						// Etc.
			pAO->sp_xpos=8*8;
			pAO->sp_ypos=(38*8)-1;
			break;
		case LEVEL020103:
			pAO->sp_xpos=8*8;
			pAO->sp_ypos=(20*8)-1;
			break;
		case LEVEL020104:
			pAO->sp_xpos=16*8;
			pAO->sp_ypos=(12*8)-1;
			break;
		case LEVEL020105:
			pAO->sp_xpos=16*8;
			pAO->sp_ypos=(90*8)-1;
			break;
		case LEVEL020106:
			pAO->sp_xpos=12*8;
			pAO->sp_ypos=(64*8)-1;
			break;
		case LEVEL020107:
			pAO->sp_xpos=8*8;
			pAO->sp_ypos=(52*8)-1;
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL020201:
			pAO->sp_xpos=0*8;
			pAO->sp_ypos=(96*8)-1;
			break;
		case LEVEL020202:
			pAO->sp_xpos=37*8;
			pAO->sp_ypos=(40*8)-1;
			break;
		case LEVEL020203:
			pAO->sp_xpos=30*8;
			pAO->sp_ypos=(30*8)-1;
			break;
		case LEVEL020204:
			pAO->sp_xpos=0*8;
			pAO->sp_ypos=(92*8)-1;
			break;
		case LEVEL020205:
			pAO->sp_xpos=84*8;
			pAO->sp_ypos=(128*8)-1;
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL020301:
			pAO->sp_xpos=10*8;
			pAO->sp_ypos=(60*8)-1;
			break;
		case LEVEL020302:
			pAO->sp_xpos=10*8;
			pAO->sp_ypos=(56*8)-1;
			break;
		case LEVEL020303:
			pAO->sp_xpos=1*8;
			pAO->sp_ypos=(18*8)-1;
			break;
		case LEVEL020304:
			pAO->sp_xpos=25*8;
			pAO->sp_ypos=(1*8)-1;
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL020401:
			pAO->sp_xpos=1*8;
			pAO->sp_ypos=(8*8)-1;
			break;
		case LEVEL020402:
			pAO->sp_xpos=1*8;
			pAO->sp_ypos=(36*8)-1;
			break;
		case LEVEL020403:
			pAO->sp_xpos=1*8;
			pAO->sp_ypos=(32*8)-1;
			break;
		case LEVEL020404:
			pAO->sp_xpos=4*8;
			pAO->sp_ypos=(30*8)-1;
			break;
		case LEVEL020405:
			pAO->sp_xpos=1*8;
			pAO->sp_ypos=(26*8)-1;
			break;

//---------------------------------------------------------------------------------------------------

	};*/

	pAO=ObjectGet2();							// Get a free sprite slot.
	pAO->sp_type=TYPE_PATRICK;					// Set sprite type.
	pAO->sp_mode=MODE_LEFTRIGHTSPIN;			// Set sprite mode.
	pAO->sp_xpos=0;								// Set sprite world map x-position.
	pAO->sp_ypos=(32*8)-1;	 					// Set sprite world map y-position.
	pAO->sp_xsize=32;							// Set sprite size in x (8/16/32/64).
	pAO->sp_ysize=32;							// Set sprite size in y (8/16/32/64).
	pAO->sp_aninum=11;							// Set sprite animation sequence number.
	pAO->sp_anispeed=3;							// Set sprite default animation speed.
	pAO->sp_flash=OFF;							// Set sprite flash mode.
	pAO->sp_affine=OAM_AFFINE_TWICE; 			// Set sprite affine (OAM_AFFINE_NONE/NORMAL/TWICE/ERASE).
	pAO->sp_rotate=0;							// Set sprite rotatation angle (0-256).
	pAO->sp_flipX=OFF;							// Set sprite h-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_flipY=OFF;							// Set sprite v-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_scaleX=256*2;  						// Set sprite scale-x size (100%).
	pAO->sp_scaleY=256*2;  						// Set sprite scale-y size (100%).
	pAO->sp_mosaic=OFF;							// Set sprite global mosaic (ON/OFF).
	pAO->sp_blend=OAM_OBJ_BLEND; 				// Set sprite alpha blend (OAM_OBJ_NORMAL/BLEND/WINDOW)
	pAO->sp_priority=1;	

	pAO=ObjectGet2();							// Get a free sprite slot.
	pAO->sp_type=TYPE_PLATFORMS;				// Set sprite type.
	pAO->sp_mode=MODE_LEFTRIGHT;		   		// Set sprite mode.
	pAO->sp_xpos=8*8; 							// Set sprite world map x-position.
	pAO->sp_ypos=32*8;		 					// Set sprite world map y-position.
	pAO->sp_xsize=32;							// Set sprite size in x (8/16/32/64).
	pAO->sp_ysize=16;							// Set sprite size in y (8/16/32/64).
	pAO->sp_aninum=12;							// Set sprite animation sequence number.
	pAO->sp_anispeed=3;							// Set sprite default animation speed.
	pAO->sp_flash=OFF;							// Set sprite flash mode.
	pAO->sp_affine=OAM_AFFINE_NONE; 			// Set sprite affine (OAM_AFFINE_NONE/NORMAL/TWICE/ERASE).
	pAO->sp_rotate=0;							// Set sprite rotatation angle (0-256).
	pAO->sp_flipX=OFF;							// Set sprite h-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_flipY=OFF;							// Set sprite v-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
	pAO->sp_scaleX=256;							// Set sprite scale-x size (100%).
	pAO->sp_scaleY=256;							// Set sprite scale-y size (100%).
	pAO->sp_mosaic=OFF;							// Set sprite global mosaic (ON/OFF).
	pAO->sp_blend=OAM_OBJ_NORMAL;				// Set sprite alpha blend (OAM_OBJ_NORMAL/BLEND/WINDOW)
	pAO->sp_priority=1;		

	for(Plap=0;Plap<40;Plap++) 
	{
		pAO=ObjectGet2();				   		// Get a free sprite slot.
		pAO->sp_type=TYPE_PLATFORMS;	   		// Set sprite type.
		pAO->sp_mode=MODE_UPDOWN;		   		// Set sprite mode.
		pAO->sp_xpos=(36*8)+(Plap*32); 	   		// Set sprite world map x-position.
		pAO->sp_ypos=(32*8)+(Plap*16);	   		// Set sprite world map y-position.
		pAO->sp_xsize=32;				   		// Set sprite size in x (8/16/32/64).
		pAO->sp_ysize=16;				   		// Set sprite size in y (8/16/32/64).
		pAO->sp_aninum=12;				   		// Set sprite animation sequence number.
		pAO->sp_anispeed=3;				   		// Set sprite default animation speed.
		pAO->sp_flash=OFF;				   		// Set sprite flash mode.
		pAO->sp_affine=OAM_AFFINE_TWICE;  		// Set sprite affine (OAM_AFFINE_NONE/NORMAL/TWICE/ERASE).
		pAO->sp_rotate=0;				   		// Set sprite rotatation angle (0-256).
		pAO->sp_flipX=OFF;				   		// Set sprite h-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
		pAO->sp_flipY=OFF;				   		// Set sprite v-flip (ON/OFF) (must set 'sp_affine=OAM_AFFINE_NONE' above to work !!!).
		pAO->sp_scaleX=256;				   		// Set sprite scale-x size (100%).
		pAO->sp_scaleY=256;				   		// Set sprite scale-y size (100%).
		pAO->sp_mosaic=OFF;				   		// Set sprite global mosaic (ON/OFF).
		pAO->sp_blend=OAM_OBJ_NORMAL;	   		// Set sprite alpha blend (OAM_OBJ_NORMAL/BLEND/WINDOW)
		pAO->sp_priority=1;	
	}
}

//***************************************************************************************************

// Initialize OAM buffer with default 'sprite off' parameters.

void ClearOAMBuffer(void)
{
    int x=0;

    u16* OAM_Ptr;

    OAM_Ptr=(u16*)ObjectOAMBuffer;

    for(x=0;x<32;++x)
    {
		*OAM_Ptr++=0x0200;						// Double angle.
		*OAM_Ptr++=0x0000;
		*OAM_Ptr++=0x0000;
		*OAM_Ptr++=0x0100;						// pA (dx param.)
		*OAM_Ptr++=0x0200;						// Double angle.
		*OAM_Ptr++=0x0000;
		*OAM_Ptr++=0x0000;
		*OAM_Ptr++=0x0000;						// pB (dmx param.)
		*OAM_Ptr++=0x0200;						// Double angle.
		*OAM_Ptr++=0x0000;
		*OAM_Ptr++=0x0000;
		*OAM_Ptr++=0x0000;						// pC (dy param.)
		*OAM_Ptr++=0x0200;						// Double angle.
		*OAM_Ptr++=0x0000;
		*OAM_Ptr++=0x0000;
		*OAM_Ptr++=0x0100;						// pD (dmy param.)
	}
}

//***************************************************************************************************

// Update OAM RAM memory.

void UpdateOAMRam(void)
{
   	DmaCopy(3,ObjectOAMBuffer,OAM,OAM_SIZE,32);	// DMA transfer entire OAM buffer to OAM RAM.
}

//***************************************************************************************************
