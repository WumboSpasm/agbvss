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
#include "Random.h"								// Random Number Generator (standard ansi c with a bit more)

//------------prototype functions--------
static void UpdateInput(void);					// read input and update gamestate accordingly
static u16 ZoomBGIn(u16 random);						// random fade/wipe/zoom routine (i return what zoom i did so store me somewhere safe)
static void ZoomBGOut(u16 prev);				// do approapriate return (I need to know what the last zoom was so pass it in with prev)
static void UpdateGFX(void);					// update display based on current state

//--------Local Variables-----------------
static bgstats	BGstats;						// BG data stats
static title	Title;							// Title struct (lots of nice variables in here)
static const s16 speed = 0x0001;				// Zoom speed

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
	u16 tmp;
	switch(Title.mCurrent_Screen)
	{
	case 0:								// main screen (emun up maybe...)
		if((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON))
		{
			tmp = ZoomBGIn(3);
			LZ77UnCompVram(Title_Main_2_RawBitmap_LZ, (void*)(int)BG_BITMAP0_VRAM);
			ZoomBGOut(tmp);
			Title.mCurrent_Screen = 1;
			break;
		}
		break;
	case 1:
		if((gKeyTap&START_BUTTON)||(gKeyTap&A_BUTTON))
		{
			tmp = ZoomBGIn(1);
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
static u16 ZoomBGIn(u16 random)
{
	if(random == 255){random = GenRand(6);}

	switch(random)								// ooh here's the nice bit...
	{
	//----if zero do simple zoom in
	case 0:
		while(BGstats.mZoomX <= 0x1000)
		{
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			BGstats.mZoomX += speed;	// zoom in x
			BGstats.mZoomY += speed;	// zoom in y too...
		}
		return random;
		break;

	//--if one stretch width ways
	case 1:
		while(BGstats.mZoomX <= 0x1000)
		{
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			BGstats.mZoomX += speed;
			BGstats.mZoomY -= speed;
		}
		return random;
		break;

	//--if two stretch height ways
	case 2:
		while(BGstats.mZoomY <= 0x1000)
		{
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			BGstats.mZoomX -= speed;
			BGstats.mZoomY += speed;
		}
		return random;
		break;

	//--if three zoom out
	case 3:
		while(BGstats.mZoomX > 0x0010)
		{
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			BGstats.mZoomX -= speed;	// zoom in x
			BGstats.mZoomY -= speed;	// zoom in y too...
		}
		return random;
		break;

	//--if four fade out
	case 4:
		//to do fade the screen
		return random;
		break;

	//--if five then????? - do some real odd here
	case 5:
		//i cant think of it yet but it will happen here..
		return random;
		break;

	//--anything else and its fucked
	default:
		// insert assert here plz...
		return random;
		break;
	};

}

static void ZoomBGOut(u16 prev)
{
	switch(prev)								// ooh here's the nice bit...
	{
	//----if zero did simple zoom in <- so i want to re-zoom in
	case 0:
		while(BGstats.mZoomX >= 0x0100)
		{
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			BGstats.mZoomX -= speed;	// zoom in x
			BGstats.mZoomY -= speed;	// zoom in y too...
		}
		break;

	//--if one stretch width ways <- need to stretch it back
	case 1:
		while(BGstats.mZoomX >= 0x0100)
		{
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			BGstats.mZoomX -= speed;
			BGstats.mZoomY += speed;
		}
		break;

	//--if two stretch height ways
	case 2:
		while(BGstats.mZoomY >= 0x0100)
		{
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			BGstats.mZoomX += speed;
			BGstats.mZoomY -= speed;
		}
		break;

	//--if three zoom out
	case 3:
		while(BGstats.mZoomX <= 0x0100)
		{
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			BGstats.mZoomX += speed;	// zoom in x
			BGstats.mZoomY += speed;	// zoom in y too...
		}
		break;

	//--if four fade back in
	case 4:
		//to do fade the screen
		break;

	//--if five then????? - do some real odd here
	case 5:
		//i cant think of it yet but it will happen here..
		break;

	//--anything else and its fucked
	default:
		// insert assert here plz...
		break;
	};

}

//--------------Update GFX & related-------------
static void UpdateGFX(void)
{
	//-----update related variables----
    BGstats.mBg2pa = FixMul( Cos(BGstats.mRotate), FixInverse(BGstats.mZoomX));
    BGstats.mBg2pb = FixMul( Sin(BGstats.mRotate), FixInverse(BGstats.mZoomX));
    BGstats.mBg2pc = FixMul(-Sin(BGstats.mRotate), FixInverse(BGstats.mZoomY));
    BGstats.mBg2pd = FixMul( Cos(BGstats.mRotate), FixInverse(BGstats.mZoomY));

    // BG data reference starting point set
    BGstats.mBg2x = (BGstats.mBg2_center_x * 0x100) - ((BGstats.mBg2pa * BGstats.mBg2_center_x)) - ((BGstats.mBg2pb * BGstats.mBg2_center_y));
    BGstats.mBg2y = (BGstats.mBg2_center_y * 0x100) - ((BGstats.mBg2pc * BGstats.mBg2_center_x)) - ((BGstats.mBg2pd * BGstats.mBg2_center_y));

	//------------update registers---should be done during vblank..hopefully it is happening...
    *(vu16*)REG_BG2PA = (u16)BGstats.mBg2pa;
	*(vu16*)REG_BG2PB = (u16)BGstats.mBg2pb;
    *(vu16*)REG_BG2PC = (u16)BGstats.mBg2pc;
    *(vu16*)REG_BG2PD = (u16)BGstats.mBg2pd;

    *(vu16*)REG_BG2X_L = (BGstats.mBg2x & 0xffff);
    *(vu16*)REG_BG2X_H = (u16)(u32)((BGstats.mBg2x & 0x0fff0000)>>16);
    *(vu16*)REG_BG2Y_L = (BGstats.mBg2y & 0xffff);
    *(vu16*)REG_BG2Y_H = (u16)(u32)((BGstats.mBg2y & 0x0fff0000)>>16);
}
