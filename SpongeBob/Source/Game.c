//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Main Game (Source).
// Author:		A.R.Cummings / RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "Scroll_Engine.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "SprEng_Animate.h"
#include "SprEng_Display.h"
#include "Text_Sys.h"

/////////////////////////////////////////////////
// Global Functions.
/////////////////////////////////////////////////

const u16 Speech_Bubble_Palette[2]={0xffff,0x0000,}; // 'Speech Bubble' palette (black text on white).

//***************************************************************************************************

// Initialise Main Routine

void InitGame(void)
{
	InitSprites();								// Init. sprite engine.
	InitScroll();								// Init. scroll engine.
	InitPalettes();								// Init. in-game colour palettes.

//--

	// Set alpha channel blend mode ready for sprites.
	*(vu16*)REG_BLDCNT=BLD_2ND_ALL|BLD_NORMAL_MODE|BLD_ALL; //No SFX.
	*(vu16*)REG_BLDALPHA=0x0808;				// EVB EVA coefficient value.
	*(vu16*)REG_BLDY=8;							// EVY coefficient value.

//--

	// Enable game screen display.
	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_OBJ_ON|DISP_BG0_ON|DISP_BG1_ON|DISP_BG2_ON|DISP_BG3_ON|DISP_OBJ_CHAR_1D_MAP;	// Set which layers to display
//	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_OBJ_ON|DISP_BG0_ON|DISP_BG1_ON|DISP_BG2_ON|DISP_OBJ_CHAR_1D_MAP;	// Set which layers to display
}

//***************************************************************************************************
//***************************************************************************************************

// Main Game Loop.

void MainGame(void)
{
	WaitVBlank();								// Wait 4 VBL.
	ReadJoypad();								// Read joypad.
	ObjectDisplay();							// Update sprites (display) (Always do this first to sync. sprites to scroll display correctly & eliminate shearing !).
	ObjectControl2();							// Update sprites (control 'method-2').
	SB2MovingPlats();							// Check 'SpongeBob' to 'Moving Platforms'.
	UpdateScroll();								// Update scroll.

//---------------------------------------------------------------------------------------------------

// Main loop test area only.

//--

// @ge's tests.
#ifndef NDEBUG
	sprintf(DEBUGBUFFER,"SPONGEBOB");			// Assert test only !!!.
	PutTextBox(1,1,11,3,DEBUGBUFFER);
#endif
	if(gKeyTap&SELECT_BUTTON)					// Next level test only !!!.
	{
		Level++;
		if(Level>LEVEL020405){Level=LEVEL020201;}
 		InitGame();								// Init. main game.
	}

//---------------------------------------------------------------------------------------------------

}

//***************************************************************************************************
//***************************************************************************************************

// Init. in-game colour palettes.

// Note: The very first sprite (i.e. SpongeBob 'Stand', contains the common sprite palette).

void InitPalettes(void)
{
	switch(Level)			 					// Get Level.
	{

//---------------------------------------------------------------------------------------------------

// Chapter 2.

//--

// Level 1 & Sub-Levels.

		case LEVEL020101:
			DmaArrayCopy(3,level0101_Palette,BG_PLTT,16); // Set 256 colour palette data for ALL background layers.
			break;
		case LEVEL020102: 					   	// Etc.		
			DmaArrayCopy(3,level0102_Palette,BG_PLTT,16);
			break;
		case LEVEL020103:		
			DmaArrayCopy(3,level0103_Palette,BG_PLTT,16);
			break;
		case LEVEL020104:		
			DmaArrayCopy(3,level0104_Palette,BG_PLTT,16);
			break;
		case LEVEL020105:		
			DmaArrayCopy(3,level0105_Palette,BG_PLTT,16);
			break;
		case LEVEL020106:		
			DmaArrayCopy(3,level0106_Palette,BG_PLTT,16);
			break;
		case LEVEL020107:		
			DmaArrayCopy(3,level0107_Palette,BG_PLTT,16);
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL020201:		
			DmaArrayCopy(3,level0201_Palette,BG_PLTT,16);
			break;
		case LEVEL020202:		
			DmaArrayCopy(3,level0202_Palette,BG_PLTT,16);
			break;
		case LEVEL020203:		
			DmaArrayCopy(3,level0203_Palette,BG_PLTT,16);
			break;
		case LEVEL020204:		
			DmaArrayCopy(3,level0204_Palette,BG_PLTT,16);
			break;
		case LEVEL020205:		
			DmaArrayCopy(3,level0205_Palette,BG_PLTT,16);
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL020301:		
			DmaArrayCopy(3,level0301_Palette,BG_PLTT,16);
			break;
		case LEVEL020302:		
			DmaArrayCopy(3,level0302_Palette,BG_PLTT,16);
			break;
		case LEVEL020303:		
			DmaArrayCopy(3,level0303_Palette,BG_PLTT,16);
			break;
		case LEVEL020304:		
			DmaArrayCopy(3,level0304_Palette,BG_PLTT,16);
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL020401:
			DmaArrayCopy(3,level0401_Palette,BG_PLTT,16);
			break;
		case LEVEL020402:
			DmaArrayCopy(3,level0402_Palette,BG_PLTT,16);
			break;
		case LEVEL020403:
			DmaArrayCopy(3,level0403_Palette,BG_PLTT,16);
			break;
		case LEVEL020404:
			DmaArrayCopy(3,level0404_Palette,BG_PLTT,16);
			break;
		case LEVEL020405:
			DmaArrayCopy(3,level0405_Palette,BG_PLTT,16);
			break;

//---------------------------------------------------------------------------------------------------

	};

	DmaArrayCopy(3,Speech_Bubble_Palette,BG_PLTT+(254<<1),16); // Set 'Speech Bubble' colours (all '2' of them :).

	DmaArrayCopy(3,Stand_Palette,OBJ_PLTT,16);	// Set 256 colour palette data for ALL sprites.
}

//***************************************************************************************************

// Check 'SpongeBob' to 'Moving Platforms'.

void SB2MovingPlats(void)
{
	s8 Collision;								// Local variables.

//	ClearTextLayer();					   		// Assert test only !!!.
//	DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);

	Collision=CheckCollision(TYPE_SPONGEBOB,8,0,TYPE_PLATFORMS,0,0); // Check for 'box' collision between 'source' sprite & total number of active 'compare' sprites.

	if(Collision>-1)							// Collision ?.
	{
//		sprintf(DEBUGBUFFER,"COLLISION");  		// Assert test only !!!.
//		PutTextBox(0,17,11,3,DEBUGBUFFER);
 	}
}

//***************************************************************************************************

// Check for 'box' collision between 'source' sprite & total number of active 'compare' sprites.

// Note: 1) The 'source' sprite 'TYPE_n' must be passed in 's'.
//		 2) The fine-x & fine-y collision box offset for the 'source' sprite must be passed in 'sFineX' & sFineY'
//		 3) The 'compare' sprite 'TYPE_n' must be passed in 'c'. 
//		 4) The fine-x & fine-y collision box offset for the 'compare' sprite must be passed in 'cFineX' & cFineY'

u8 CheckCollision(u8 s,u8 sFineX,u8 sFineY,u8 c,u8 cFineX,u8 cFineY)
{
	s8 Collision,x,NumCompareSprs;		// Local variables.

	Object *pAOs;								// Object table pointers.
	Object *pAOc;
	Object *pAOn;

	pAOs=g_pObject;								// Get copy of global object pointer (source).
	pAOc=g_pObject;								// Get copy of global object pointer (compare).
	pAOn=g_pObject;								// Get copy of global object pointer (compare 'n').

	NumCompareSprs=0;

	for(x=0;x!=numUsedObjects;x++,pAOs++)	   	// Scan forward through objects currently in use.
	{
		if(pAOs->sp_type==s){break;}			// Found 'source' sprite slot address ?.
	}

	for(x=0;x!=numUsedObjects;x++,pAOc++,pAOn++) // Scan forward through objects currently in use.
	{
		if(pAOc->sp_type==c){break;}			// Found 'compare' base sprite slot address ?.
	}

	for(NumCompareSprs=1;NumCompareSprs!=numUsedObjects;NumCompareSprs++,pAOn++) // Continue scan forward to find last of active 'compare' sprites.
	{
		if(pAOn->sp_type!=c){NumCompareSprs--;break;} // Found last 'compare'n' sprite ?.
	}

	Collision=-1;								// Default = no sprite hit.

	for(x=0;x<NumCompareSprs;x++,pAOc++)	 	// Loop the number of 'compare' sprites. 
	{ 
		if(pAOc->sp_type!=TYPE_OFF&&pAOc->sp_display==ON&& // If sprite is on, then check for sprite box to box collision. 
		((pAOc->sp_xpos+(pAOc->sp_xsize-cFineX))>=pAOs->sp_xpos+sFineX)&&
		(pAOc->sp_xpos+cFineX<=(pAOs->sp_xpos+(pAOs->sp_xsize-sFineX)))&& 
		((pAOc->sp_ypos+(pAOc->sp_ysize-cFineY))>=pAOs->sp_ypos+sFineY)&& 
		(pAOc->sp_ypos+cFineY<=(pAOs->sp_ypos+(pAOs->sp_ysize-sFineY))))
		{
//			if(pAOc->sp_type!=TYPE_PLATFORMS)	// Don't switch off if collision with 'Moving Platform' ?.
//			{
				pAOc->sp_xpos=-(pAOc->sp_xsize<<1);	// Reset current sprites screen position 'off screen' by twice size !.
				pAOc->sp_ypos=-(pAOc->sp_ysize<<1);
				pAOc->sp_xvel=0;			   	// Reset velocities.
				pAOc->sp_yvel=0;
//			}
			Collision=x;						// 'Compare' sprite hit number (no collision = -1, collision = 0 to n). 
			break;
 		}
	}
	return Collision;
}

//***************************************************************************************************
