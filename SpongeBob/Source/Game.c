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
#include "Collision.h"

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

	*(vu16*)REG_IE=V_BLANK_INTR_FLAG;			// Set vblank interrupt enable flag.
	*(vu16*)REG_STAT=STAT_V_BLANK_IF_ENABLE;

	// Set alpha channel blend mode ready for sprites.
	*(vu16*)REG_BLDCNT=BLD_2ND_ALL|BLD_NORMAL_MODE|BLD_ALL; //No SFX.
	*(vu16*)REG_BLDALPHA=0x0808;				// EVB EVA coefficient value.
	*(vu16*)REG_BLDY=8;							// EVY coefficient value.

//--

	// Enable game screen display.
	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_OBJ_ON|DISP_BG0_ON|DISP_BG1_ON|DISP_BG2_ON|DISP_BG3_ON|DISP_OBJ_CHAR_1D_MAP;	// Set which layers to display
//	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_OBJ_ON|DISP_BG0_ON|DISP_BG1_ON|DISP_BG2_ON|DISP_OBJ_CHAR_1D_MAP;	// Set which layers to display

#ifdef MUSIC_ON                
        m4aSongNumStart(YOS_BGM_GAME);//BGM Start
#endif
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
//	sprintf(DEBUGBUFFER,"SPONGEBOB");			// Assert test only !!!.
//	PutTextBox(1,1,11,3,DEBUGBUFFER);
#endif
	if(gKeyTap&SELECT_BUTTON)					// Next level test only !!!.
	{
		Level++;
		if(Level>LEVEL040407){Level=LEVEL030301;}
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
/*
// Chapter 2.

//--

// Level 1 & Sub-Levels.

		case LEVEL020101:
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16); // Set 256 colour palette data for ALL background layers.
			break;
		case LEVEL020102: 					   	// Etc.		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020103:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020104:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020105:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020106:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020107:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020108:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020109:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020110:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020111:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020112:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL020201:		
			DmaArrayCopy(3,CHAPTER02_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020202:		
			DmaArrayCopy(3,CHAPTER02_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020203:		
			DmaArrayCopy(3,CHAPTER02_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020204:		
			DmaArrayCopy(3,CHAPTER02_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020205:		
			DmaArrayCopy(3,CHAPTER02_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020206:		
			DmaArrayCopy(3,CHAPTER02_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020207:		
			DmaArrayCopy(3,CHAPTER02_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL020301:		
			DmaArrayCopy(3,CHAPTER02_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020302:		
			DmaArrayCopy(3,CHAPTER02_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020303:		
			DmaArrayCopy(3,CHAPTER02_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020304:		
			DmaArrayCopy(3,CHAPTER02_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020305:		
			DmaArrayCopy(3,CHAPTER02_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020306:		
			DmaArrayCopy(3,CHAPTER02_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL020401:
			DmaArrayCopy(3,CHAPTER02_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020402:
			DmaArrayCopy(3,CHAPTER02_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020403:
			DmaArrayCopy(3,CHAPTER02_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020404:
			DmaArrayCopy(3,CHAPTER02_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020405:
			DmaArrayCopy(3,CHAPTER02_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020406:
			DmaArrayCopy(3,CHAPTER02_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL020407:
			DmaArrayCopy(3,CHAPTER02_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
*/
//---------------------------------------------------------------------------------------------------

// Chapter 3.

//--

// Level 1 & Sub-Levels.

//--

// Level 2 & Sub-Levels.

//--

// Level 3 & Sub-Levels.

		case LEVEL030301:		
			DmaArrayCopy(3,CHAPTER03_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL030302:		
			DmaArrayCopy(3,CHAPTER03_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL030303:		
			DmaArrayCopy(3,CHAPTER03_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL030304:		
			DmaArrayCopy(3,CHAPTER03_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL030305:		
			DmaArrayCopy(3,CHAPTER03_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL030306:		
			DmaArrayCopy(3,CHAPTER03_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL030401:		
			DmaArrayCopy(3,CHAPTER03_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL030402:		
			DmaArrayCopy(3,CHAPTER03_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL030403:		
			DmaArrayCopy(3,CHAPTER03_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL030404:		
			DmaArrayCopy(3,CHAPTER03_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL030405:		
			DmaArrayCopy(3,CHAPTER03_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL030406:		
			DmaArrayCopy(3,CHAPTER03_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;

//---------------------------------------------------------------------------------------------------

// Chapter 4.

//--

// Level 1 & Sub-Levels.

		case LEVEL040101:		
			DmaArrayCopy(3,CHAPTER04_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040102:		
			DmaArrayCopy(3,CHAPTER04_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040103:		
			DmaArrayCopy(3,CHAPTER04_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040104:		
			DmaArrayCopy(3,CHAPTER04_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL040201:		
			DmaArrayCopy(3,CHAPTER04_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040202:		
			DmaArrayCopy(3,CHAPTER04_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040203:		
			DmaArrayCopy(3,CHAPTER04_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040204:		
			DmaArrayCopy(3,CHAPTER04_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040205:		
			DmaArrayCopy(3,CHAPTER04_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL040301:		
			DmaArrayCopy(3,CHAPTER04_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040302:		
			DmaArrayCopy(3,CHAPTER04_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040303:		
			DmaArrayCopy(3,CHAPTER04_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040304:		
			DmaArrayCopy(3,CHAPTER04_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040305:		
			DmaArrayCopy(3,CHAPTER04_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040306:		
			DmaArrayCopy(3,CHAPTER04_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL040401:		
			DmaArrayCopy(3,CHAPTER04_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040402:		
			DmaArrayCopy(3,CHAPTER04_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040403:		
			DmaArrayCopy(3,CHAPTER04_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040404:		
			DmaArrayCopy(3,CHAPTER04_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040405:		
			DmaArrayCopy(3,CHAPTER04_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
 		case LEVEL040406:		
			DmaArrayCopy(3,CHAPTER04_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;
		case LEVEL040407:		
			DmaArrayCopy(3,CHAPTER04_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;

//---------------------------------------------------------------------------------------------------

	};

	DmaArrayCopy(3,Speech_Bubble_Palette,BG_PLTT+(254<<1),16); // Set 'Speech Bubble' colours (all '2' of them :).

	DmaArrayCopy(3,Stand_Palette,OBJ_PLTT,16);	// Set 256 colour palette data for ALL sprites.
}

//***************************************************************************************************
