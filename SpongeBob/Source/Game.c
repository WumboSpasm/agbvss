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
#include "Fade.h"

/////////////////////////////////////////////////
// Global Functions.
/////////////////////////////////////////////////

const u16 Speech_Bubble_Palette[2]={0xffff,0x0000,}; // 'Speech Bubble' palette (black text on white).

//***************************************************************************************************

// Initialise Main Routine

void InitGame(void)
{
	InitSprites();								// Init. sprite engine.
	InitPalettes();								// Init. in-game colour palettes.
	InitScroll();								// Init. scroll engine.

	ReadJoypad();								// Read joypad.
	ObjectControl2();							// Update sprites (control 'method-2').
	UpdateScroll();
	ObjectDisplay();

//--

	*(vu16*)REG_IE=V_BLANK_INTR_FLAG;			// Set vblank interrupt enable flag.
	*(vu16*)REG_STAT=STAT_V_BLANK_IF_ENABLE;

//--

	// Enable game screen display.
	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_OBJ_ON|DISP_BG0_ON|DISP_BG1_ON|DISP_BG2_ON|DISP_BG3_ON|DISP_OBJ_CHAR_1D_MAP;	// Set which layers to display

#ifdef MUSIC_ON                
        m4aSongNumStart(SBP_CHAP1LEV2);//BGM Start
#endif
}

//***************************************************************************************************
//***************************************************************************************************

// Main Game Loop.

void MainGame(void)
{
	WaitVBlank();								// Wait 4 VBL.
	switch(gFade)
	{
	case 0:
		ReadJoypad();								// Read joypad.
		ObjectControl2();							// Update sprites (control 'method-2').
		SB2MovingPlats();							// Check 'SpongeBob' to 'Moving Platforms'.
		UpdateScroll();								// Update the 8-way parallax scroll.
		ObjectDisplay();							// Update sprites (display).
		if(gKeyTap&SELECT_BUTTON)					// Next level test only !!!.
		{
			Level++;
			if(Level==LEVELTERM){Level=1;}
			gFade=1;
		}
		break;
        case 1:
                FadeOut(0);		// call fade out routine
                break;
        case 2:
                FadeIn();		// call fade back in routine
                break;
        case 3:
                NextMenuSetUp();	// initialise the next screen
                break;
	}
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

// Chapter 1.

//--

// Level 1 & Sub-Levels.

//		case LEVEL010101:
//		case LEVEL010102: 					   	// Etc.		
//		case LEVEL010103:		
//		case LEVEL010104:		
//		case LEVEL010105:		
//		case LEVEL010106:		
//			DmaArrayCopy(3,CHAPTER01_LEVEL01_TILEPALETTE,BG_PLTT,16);
//			break;

//--

// Level 2 & Sub-Levels.

//		case LEVEL010201:		
//		case LEVEL010202:		
//		case LEVEL010203:		
//		case LEVEL010204:		
//		case LEVEL010205:		
//		case LEVEL010206:		
//			DmaArrayCopy(3,CHAPTER01_LEVEL02_TILEPALETTE,BG_PLTT,16);
//			break;

//--

// Level 3 & Sub-Levels.

//		case LEVEL010301:		
//		case LEVEL010302:		
//		case LEVEL010303:		
//		case LEVEL010304:		
//		case LEVEL010305:		
//		case LEVEL010306:		
//			DmaArrayCopy(3,CHAPTER01_LEVEL03_TILEPALETTE,BG_PLTT,16);
//			break;

//--

// Level 4 & Sub-Levels.

//		case LEVEL010401:
//		case LEVEL010402:
//		case LEVEL010403:
//		case LEVEL010404:
//		case LEVEL010405:
//		case LEVEL010406:
//			DmaArrayCopy(3,CHAPTER01_LEVEL04_TILEPALETTE,BG_PLTT,16);
//			break;

//---------------------------------------------------------------------------------------------------

// Chapter 2.

//--

// Level 1 & Sub-Levels.

		case LEVEL020101:
		case LEVEL020102: 					   	// Etc.		
		case LEVEL020103:		
		case LEVEL020104:		
		case LEVEL020105:		
		case LEVEL020106:		
		case LEVEL020107:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL020201:		
		case LEVEL020202:		
		case LEVEL020203:		
		case LEVEL020204:		
			DmaArrayCopy(3,CHAPTER02_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL020301:		
		case LEVEL020302:		
		case LEVEL020303:		
		case LEVEL020304:		
		case LEVEL020305:		
		case LEVEL020306:		
			DmaArrayCopy(3,CHAPTER02_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL020401:
		case LEVEL020402:
		case LEVEL020403:
		case LEVEL020404:
		case LEVEL020405:
			DmaArrayCopy(3,CHAPTER02_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;

//---------------------------------------------------------------------------------------------------

// Chapter 3.

//--

// Level 1 & Sub-Levels.

		case LEVEL030101:		
		case LEVEL030102:		
		case LEVEL030103:		
		case LEVEL030104:		
		case LEVEL030105:		
		case LEVEL030106:		
		case LEVEL030107:		
			DmaArrayCopy(3,CHAPTER03_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL030201:		
		case LEVEL030202:		
		case LEVEL030203:		
		case LEVEL030204:		
		case LEVEL030205:		
		case LEVEL030206:		
		case LEVEL030207:		
			DmaArrayCopy(3,CHAPTER03_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL030301:		
		case LEVEL030302:		
		case LEVEL030303:		
		case LEVEL030304:		
		case LEVEL030305:		
		case LEVEL030306:		
			DmaArrayCopy(3,CHAPTER03_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL030401:		
		case LEVEL030402:		
		case LEVEL030403:		
		case LEVEL030404:		
		case LEVEL030405:		
		case LEVEL030406:		
			DmaArrayCopy(3,CHAPTER03_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;

//---------------------------------------------------------------------------------------------------

// Chapter 4.

//--

// Level 1 & Sub-Levels.

		case LEVEL040101:		
		case LEVEL040102:		
		case LEVEL040103:		
		case LEVEL040104:		
			DmaArrayCopy(3,CHAPTER04_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL040201:		
		case LEVEL040202:		
		case LEVEL040203:		
		case LEVEL040204:		
		case LEVEL040205:		
			DmaArrayCopy(3,CHAPTER04_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL040301:		
		case LEVEL040302:		
		case LEVEL040303:		
		case LEVEL040304:		
		case LEVEL040305:		
		case LEVEL040306:		
			DmaArrayCopy(3,CHAPTER04_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL040401:		
		case LEVEL040402:		
		case LEVEL040403:		
		case LEVEL040404:		
		case LEVEL040405:		
 		case LEVEL040406:		
		case LEVEL040407:		
			DmaArrayCopy(3,CHAPTER04_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;

//---------------------------------------------------------------------------------------------------

// Chapter 5.

//--

// Level 1 & Sub-Levels.

		case LEVEL050101:
		case LEVEL050102: 					   	// Etc.		
		case LEVEL050103:		
			DmaArrayCopy(3,CHAPTER05_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL050201:		
		case LEVEL050202:		
		case LEVEL050203:		
		case LEVEL050204:		
			DmaArrayCopy(3,CHAPTER05_LEVEL02_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL050301:		
		case LEVEL050302:		
		case LEVEL050303:		
		case LEVEL050304:		
		case LEVEL050305:		
			DmaArrayCopy(3,CHAPTER05_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL050401:
		case LEVEL050402:
		case LEVEL050403:
		case LEVEL050404:
		case LEVEL050405:
		case LEVEL050406:
		case LEVEL050407:
		case LEVEL050408:
			DmaArrayCopy(3,CHAPTER05_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;

//---------------------------------------------------------------------------------------------------

// Chapter 6.

//--

// Level 1 & Sub-Levels.

		case LEVEL060101:
		case LEVEL060102: 					   	// Etc.		
			DmaArrayCopy(3,CHAPTER06_LEVEL01_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 2 & Sub-Levels.

//		case LEVEL060201:		
//		case LEVEL060202:		
//			DmaArrayCopy(3,CHAPTER06_LEVEL02_TILEPALETTE,BG_PLTT,16);
//			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL060301:		
		case LEVEL060302:		
			DmaArrayCopy(3,CHAPTER06_LEVEL03_TILEPALETTE,BG_PLTT,16);
			break;

//--

// Level 4 & Sub-Levels.

//		case LEVEL060401:
//		case LEVEL060402:
//		case LEVEL060403:
//		case LEVEL060404:
//			DmaArrayCopy(3,CHAPTER06_LEVEL04_TILEPALETTE,BG_PLTT,16);
//			break;

//---------------------------------------------------------------------------------------------------

	};

	DmaArrayCopy(3,Speech_Bubble_Palette,BG_PLTT+(254<<1),16); // Set 'Speech Bubble' colours (all '2' of them :).

	DmaArrayCopy(3,Stand_Palette,OBJ_PLTT,16);	// Set 256 colour palette data for ALL sprites.
}

//***************************************************************************************************
