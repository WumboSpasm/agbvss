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
#include "SprEng_Display.h"

//***************************************************************************************************

// Initialise Main Routine

void InitGame(void)
{
	InitScroll();								// Init. scroll engine.
	InitSprites();								// Init. sprite engine.

//	 Enable game screen display.
//	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_OBJ_ON|DISP_BG0_ON|DISP_BG1_ON|DISP_BG2_ON|DISP_BG3_ON|DISP_OBJ_CHAR_1D_MAP;	// Set which layers to display
	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_OBJ_ON|DISP_BG0_ON|DISP_BG1_ON|DISP_BG2_ON|DISP_OBJ_CHAR_1D_MAP;	// Set which layers to display
}

//***************************************************************************************************
//***************************************************************************************************

//Main Game Loop.

void MainGame(void)
{
	WaitVBlank();								// Wait 4 VBL.
	ReadJoypad();								// Read joypad.
	UpdateScroll();								// Update scroll.
	ObjectControl1();							// Update sprites (control 'method-1').
	ObjectDisplay();							// Update sprites (display).
}

//***************************************************************************************************
//***************************************************************************************************

