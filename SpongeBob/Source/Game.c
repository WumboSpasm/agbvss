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

//Main Game Loop.

void MainGame(void)
{
	WaitVBlank();								// Wait 4 VBL.
	ReadJoypad();								// Read joypad.
	ObjectControl2();							// Update sprites (control 'method-2').
	ObjectDisplay();							// Update sprites (display).
	UpdateScroll();								// Update scroll.

//	sprintf(DEBUGBUFFER,"SPONGEBOB");			 // Assert test only !.
//	PutTextBox(1,1,11,3,DEBUGBUFFER);

#ifdef BEANER
	// IM NOT SUPPOSED TO BE HERE
	PutTextBox(2,2,16,4,GAMENAME);
	PutText(0,19,30,1,GAMENAME,0);
	//--
#endif
}

//***************************************************************************************************
//***************************************************************************************************

// Init. in-game colour palettes.

// Note: The very first sprite (i.e. SpongeBob 'Stand', contains the common sprite palette).

void InitPalettes(void)
{
	DmaArrayCopy(3,Level1_Palette,BG_PLTT,16);	// Set 256 colour palette data for ALL background layers.
	DmaArrayCopy(3,Stand_Palette,OBJ_PLTT,16);	// Set 256 colour palette data for ALL sprites.
}

//***************************************************************************************************
