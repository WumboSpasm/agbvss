//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Titles (Source).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#include "Includes.h"
#include "Titles.h"
#include "TitlesData.h"
#include "SprEng_Common.h"
#include "SineCos.h"

//------------prototype functions--------
static void UpdateInput(void);					// read input and update gamestate accordingly
static void ZoomBG(s32 speed,s32 distance);		// fade routine
static void UpdateGFX(void);					// update display based on current state

//--------Locals-----------------------
static bgstats	BGstats;						// BG data stats
static title	Title;							// Title struct (lots of nice variables in here)

//////////////////////////////
// Titles Functions
//////////////////////////////
void InitTitles(void)
{
	BGstats.mZoom = 0x000;					// no zoom to start with
	BGstats.mBg2_center_x = 120;				// set center to middle of bitmap
	BGstats.mBg2_center_y = 80;				// "ditto

	Title.mCurrent_Screen = 0;				// on screen 0 i.e. title screen
	Title.mCurrent_Selection = 0;				// currently no selection

    *(vu16*)REG_DISPCNT = DISP_MODE_3 | DISP_OBJ_BG_ALL_ON;		// set machine into bg mode 3 (15-bit 1 frame 240x160)
    DmaArrayCopy(3, Title_Main_RawBitmap, BG_BITMAP0_VRAM, 16);		// transfere initial background screen into vram

	UpdateGFX();
}

void MainTitles(void)
{
		WaitVBlank();								// Wait 4 VBL.
		ReadJoypad();								// Read joypad.
		UpdateInput();								// Take Key Input and work out what needs to be done from here
		UpdateGFX();							// Update GFX data
}


//---------read input and update accordingly----
static void UpdateInput(void)
{
	switch(Title.mCurrent_Screen)
	{
	case 0:								// main screen (emun up maybe...)
		if(gKeyTap&A_BUTTON)
		{
			ZoomBG(2,64);
			InitGame();
			gGameState=e_IN_GAME;
		};
		break;
	default:							// not on a valid screen????
		break;
	};
}


//--------------Zoom BG Layers------------------
static void ZoomBG(s32 speed,s32 distance)	//speed to zoom in and distance to zoom into
{
	while(BGstats.mZoom <= distance)
	{
		WaitVBlank();				// Wait 4 VBlank
		BGstats.mZoom += speed;		// zoom in (slowly hopefully)
		UpdateGFX();				// update zoom factor
	}
}
//--------------Update GFX & related-------------
static void UpdateGFX(void)
{
    BGstats.mBg2pa = FixMul( Cos(0), BGstats.mZoom);
    BGstats.mBg2pb = FixMul( Sin(0), BGstats.mZoom);
    BGstats.mBg2pc = FixMul(-Sin(0), BGstats.mZoom);
    BGstats.mBg2pd = FixMul( Cos(0), BGstats.mZoom);

    // BG data reference starting point set
    BGstats.mStart_x = ( 120 * 0x100 - BGstats.mBg2_center_x ) - ( (BGstats.mBg2pa * 120 )  ) - ( (BGstats.mBg2pb * 80 )  );
    BGstats.mStart_y = ( 80 * 0x100 - BGstats.mBg2_center_y ) - ( (BGstats.mBg2pc * 120 ) ) - ( (BGstats.mBg2pd * 80 ) );
}


//-----------------VBlank Interupt-----------------
// yeee gods i'm sure this dont need to be a global function but.....
void Titles_VBlankIntr(void)
{
    *(vu16*)REG_BG2PA = (u16)BGstats.mBg2pa;
	*(vu16*)REG_BG2PB = (u16)BGstats.mBg2pb;
    *(vu16*)REG_BG2PC = (u16)BGstats.mBg2pc;
    *(vu16*)REG_BG2PD = (u16)BGstats.mBg2pd;

    *(vu16*)REG_BG2X_L = (BGstats.mStart_x & 0xffff);
    *(vu16*)REG_BG2X_H = (u16)(u32)((BGstats.mStart_x & 0x0fff0000)>>16);
    *(vu16*)REG_BG2Y_L = (BGstats.mStart_y & 0xffff);
    *(vu16*)REG_BG2Y_H = (u16)(u32)((BGstats.mStart_y & 0x0fff0000)>>16);
}