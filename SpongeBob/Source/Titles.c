//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Titles (Source).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#define _TITLES_C

#include "Includes.h"							// general includes
#include "Titles.h"								// main titles header
#include "TitlesData.h"							// external graphic data needed
#include "SineCos.h"							// sin/cos tables + general math instructions

//------------prototype functions--------
static void UpdateInput(void);					// read input and update gamestate accordingly
static void ZoomBG(s16 speed,u16 distance);		// fade routine
static void UpdateGFX(void);					// update display based on current state

//--------Local Variables-----------------
static bgstats	BGstats;						// BG data stats
static title	Title;							// Title struct (lots of nice variables in here)

//////////////////////////////
// Titles Functions
//////////////////////////////
void InitTitles(void)
{
	
	//---set up varaibles
	BGstats.mZoomX = 0x0100;							// no zoom to start with
	BGstats.mZoomY = 0x0100;							// no zoom to start with
	BGstats.mBg2_center_x = 120;				// set center to middle of bitmap
	BGstats.mBg2_center_y = 80;					// "ditto"

	Title.mCurrent_Screen = 0;					// on screen 0 i.e. title screen
	Title.mCurrent_Selection = 0;				// currently no selection
	Title.mMax_Selections = 0;					// there are no selections on this screen so set this to zero

	//---set up display
    *(vu16*)REG_DISPCNT = DISP_MODE_3 | DISP_OBJ_BG_ALL_ON;			// set machine into bg mode 3 (15-bit 1 frame 240x160)
//    DmaArrayCopy(3, Title_Main_RawBitmap, BG_BITMAP0_VRAM, 16);		// transfere initial background screen into vram


	LZ77UnCompVram(Title_Main_RawBitmap_LZ, (void*)(int)BG_BITMAP0_VRAM);

	//--initialise the GFX so it dont look odd
	UpdateGFX();
}

void MainTitles(void)
{
		WaitVBlank();								// Wait 4 VBL.
		UpdateGFX();								// Update GFX data
		ReadJoypad();								// Read joypad.
		UpdateInput();								// Take Key Input and work out what needs to be done from here
}


//---------read input and update accordingly----
static void UpdateInput(void)
{
	switch(Title.mCurrent_Screen)
	{
	case 0:								// main screen (emun up maybe...)
		if((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON))
		{
			LZ77UnCompVram(Title_Main_2_RawBitmap_LZ, (void*)(int)BG_BITMAP0_VRAM);
			Title.mCurrent_Screen = 1;
			break;
		}
		break;
	case 1:
		if((gKeyTap&START_BUTTON)||(gKeyTap&A_BUTTON))
		{
			ZoomBG(0x0001,0x1000);
			gGameState=e_IN_GAME;
			InitGame();
			break;
		}
		break;
	default:							// not on a valid screen????
		break;
	};
}


//--------------Zoom BG Layers------------------
static void ZoomBG(s16 speed,u16 distance)	//speed to zoom in and distance to zoom into
{
	while(BGstats.mZoomX <= distance)
	{
		WaitVBlank();				// Wait 4 VBlank
		UpdateGFX();				// update zoom factor
		ReadJoypad();
		BGstats.mZoomX += speed;	// zoom in x
		BGstats.mZoomY += speed;	// zoom in y too...
	}
}
//--------------Update GFX & related-------------
static void UpdateGFX(void)
{
	//-----update related variables----
    BGstats.mBg2pa = FixMul( Cos(0), FixInverse(BGstats.mZoomX));
    BGstats.mBg2pb = FixMul( Sin(0), FixInverse(BGstats.mZoomX));
    BGstats.mBg2pc = FixMul(-Sin(0), FixInverse(BGstats.mZoomY));
    BGstats.mBg2pd = FixMul( Cos(0), FixInverse(BGstats.mZoomY));

    // BG data reference starting point set
    BGstats.mStart_x = (120 * 0x100 - BGstats.mBg2_center_x) - ((BGstats.mBg2pa * 120)) - ((BGstats.mBg2pb * 80));
    BGstats.mStart_y = ( 80 * 0x100 - BGstats.mBg2_center_y) - ((BGstats.mBg2pc * 120)) - ((BGstats.mBg2pd * 80));

	//------------update registers---
    *(vu16*)REG_BG2PA = (u16)BGstats.mBg2pa;
	*(vu16*)REG_BG2PB = (u16)BGstats.mBg2pb;
    *(vu16*)REG_BG2PC = (u16)BGstats.mBg2pc;
    *(vu16*)REG_BG2PD = (u16)BGstats.mBg2pd;

    *(vu16*)REG_BG2X_L = (BGstats.mStart_x & 0xffff);
    *(vu16*)REG_BG2X_H = (u16)(u32)((BGstats.mStart_x & 0x0fff0000)>>16);
    *(vu16*)REG_BG2Y_L = (BGstats.mStart_y & 0xffff);
    *(vu16*)REG_BG2Y_H = (u16)(u32)((BGstats.mStart_y & 0x0fff0000)>>16);
}
