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
#include "Random.h"								// Random Number Generator


//------------prototype functions--------
static void UpdateInput(void);					// read input and update gamestate accordingly
static void UpdateGFX(void);					// update display based on current state
//--Zoom/Fade Routines
static u16 ZoomBGIn(u16 random);
static void ZoomBGOut(u16 prev);

//--------Local Variables-----------------
static bgstats	BGstats;						// BG data stats
static title	Title;							// Title struct (lots of nice variables in here)

//--Local defines
static u16 speed = 1;				// Zoom speed (set to 1 for now could be programable....)
static u32 delay = 1;				// Delay speed (dependend on type of zoom)

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
	BGstats.mRotate = 0;						// set rotate to zero (warning do not change yet...does not seem to work)

	//---set up title stats
	Title.mCurrent_Screen = 0;					// on screen 0 i.e. title screen
	Title.mCurrent_Selection = 0;				// currently no selection
	Title.mMax_Selections = 0;					// there are no selections on this screen so set this to zero

	//---reset game timer
	gTimer = 0;									// reset timer used to decide the random number bit

	//---set up display
    *(vu16*)REG_DISPCNT = DISP_MODE_3 | DISP_OBJ_BG_ALL_ON;			// set machine into bg mode 3 (15-bit 1 frame 240x160)

	//--decompress 1st title screen straight into vram...(this is nice and fast so no problems here)
	LZ77UnCompVram(Title_Main_RawBitmap_LZ, (void*)BG_BITMAP0_VRAM);

	//--initialise the GFX so it dont look odd on 1st frame
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
//
// Title Screens
// 0 = Title Screen      (wait 10 seconds and move to rolling demo)
// 1 = Menu Options Menu (Options - (2)Start Game + (4)Options + (7?)Credits)
// 2 = Start Game Menu   (Options - New Game + (3)Password)
// 3 = Password Screen   (Enter 5 symbols from choice of 4 differnt ones?)
// 4 = Options Menu      (Options - (5)Controller + (6)Sound)
// 5 = Controller Menu   (Controller - (A)a=Action b=Jump or (B)a=Jump b=Action)
// 6 = Sound Menu        (Sliders For Music Volume + SFX Volume)
//
//	eTitle_Screen,			//0
//	eMain_Menu,				//1
//	eStart_Menu,			//2
//	ePassword_Menu,			//3
//	eOptions_Menu,			//4
//	eController_Menu,		//5
//	eSound_Menu,			//6
//
//-----------------------------------------------
static void UpdateInput(void)
{
	u32 tmp;
	switch(Title.mCurrent_Screen)
	{
	case eTitle_Screen:
		if((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON))
		{
			InitRand(gTimer);
			tmp = ZoomBGIn(255);
			LZ77UnCompVram(Main_Menu_RawBitmap_LZ, (void*)BG_BITMAP0_VRAM);
			ZoomBGOut(tmp);
			Title.mCurrent_Screen = eMain_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 3;
			break;
		}
		if(gTimer == (600)/*60 frames*10seconds*/)		// Time out title screen and move to rolling demo
		{
			//go to rolling demo here
		}
		break;

	case eMain_Menu:
		if (((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)) && (Title.mCurrent_Selection == 1)) // Select Start Game
		{
			InitRand(gTimer);
			tmp = ZoomBGIn(255);
			LZ77UnCompVram(Start_Menu_RawBitmap_LZ, (void*)BG_BITMAP0_VRAM);
			ZoomBGOut(tmp);
			Title.mCurrent_Screen = eStart_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 2;
			break;
		}
		if (((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)) && (Title.mCurrent_Selection == 2))	// Select Options Screen
		{
			Title.mCurrent_Screen = eOptions_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 2;
			break;
		}
		if (((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)) && (Title.mCurrent_Selection == 3))	// Select Password Screen
		{
			//InitCredits();
			//gGame_State=
			break;
		}
		if ((gKeyTap&B_BUTTON))			// Cancel Back To Title Screen (YES ALL NEW GAMES DO THIS!!!)
		{
			InitRand(gTimer);
			tmp = ZoomBGIn(255);
			LZ77UnCompVram(Title_Main_RawBitmap_LZ, (void*)BG_BITMAP0_VRAM);
			ZoomBGOut(tmp);
			gTimer = 0;
			Title.mCurrent_Screen = eTitle_Screen;				
			Title.mCurrent_Selection = 0;
			Title.mMax_Selections = 0;
		}
		break;

	case eStart_Menu:
		if (((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)) && (Title.mCurrent_Selection == 1)) // Select Start Game
		{
			ZoomBGIn(1);
			InitGame();
			gGameState = e_IN_GAME;
			break;
		}
		if (((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)) && (Title.mCurrent_Selection == 2)) // Select Password Menu
		{
			Title.mCurrent_Screen = eMain_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 3;
			break;
		}
		if ((gKeyTap&B_BUTTON))			// Cancel Back To Previous Option
		{
			InitRand(gTimer);
			tmp = ZoomBGIn(255);
			LZ77UnCompVram(Main_Menu_RawBitmap_LZ, (void*)BG_BITMAP0_VRAM);
			ZoomBGOut(tmp);
			Title.mCurrent_Screen = eMain_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 3;
		}
		break;

	case ePassword_Menu:
		if ((gKeyTap&B_BUTTON))			// Cancel Back To Previous Option
		{
			InitRand(gTimer);
			tmp = ZoomBGIn(255);
			LZ77UnCompVram(Start_Menu_RawBitmap_LZ, (void*)BG_BITMAP0_VRAM);
			ZoomBGOut(tmp);
			Title.mCurrent_Screen = eStart_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 2;
		}
		break;

	case eOptions_Menu:
		if ((gKeyTap&B_BUTTON))			// Cancel Back To Previous Option
		{
			InitRand(gTimer);
			tmp = ZoomBGIn(255);
			LZ77UnCompVram(Main_Menu_RawBitmap_LZ, (void*)BG_BITMAP0_VRAM);
			ZoomBGOut(tmp);
			Title.mCurrent_Screen = eMain_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 3;
		}
		break;

	case eController_Menu:
		if ((gKeyTap&B_BUTTON))			// Cancel Back To Previous Option
		{
			Title.mCurrent_Screen = eOptions_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 2;
		}
		break;

	case eSound_Menu:
		if ((gKeyTap&B_BUTTON))			// Cancel Back To Previous Option
		{
			Title.mCurrent_Screen = eOptions_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 2;
		}
		break;

	default:							// not on a valid screen????
		break;
	}

	//generic options used on ALL menus
	if ((gKeyTap&U_KEY) && (Title.mCurrent_Selection > 1))		//up key
	{
		Title.mCurrent_Selection--;
	}
	if ((gKeyTap&D_KEY) && (Title.mCurrent_Selection < Title.mMax_Selections)) //doon key
	{
		Title.mCurrent_Selection++;
	}


}


//--------------Zoom BG Layers------------------
static u16 ZoomBGIn(u16 random)
{
	if(random == 255){random = GenRand(4);}
	random = 1;
	gTimer = 0;

	switch(random)								// ooh here's the nice bit...
	{
	//----if zero do simple zoom in
	case 0:
		while(BGstats.mZoomX <= 0x1000)
		{
			delay = 1;
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			if(gTimer==delay)
			{
				BGstats.mZoomX += speed;	// zoom in x
				BGstats.mZoomY += speed;	// zoom in y too...
			}
		}
		return random;
		break;

	//--if one stretch width ways
	case 1:
		gTimer = 0;
		while(BGstats.mZoomX <= 0x1000)
		{
			delay = 3;
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			if(gTimer==delay)
			{
				BGstats.mZoomX += speed;
				BGstats.mZoomY -= speed;
				gTimer=0;
			}
		}
		return random;
		break;

	//--if two stretch height ways
	case 2:
		while(BGstats.mZoomY <= 0x1000)
		{
			delay = 3;
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			if(gTimer==delay)
			{
				BGstats.mZoomX -= speed;
				BGstats.mZoomY += speed;
				gTimer=0;
			}
		}
		return random;
		break;

	//--if three zoom out
	case 3:
		while(BGstats.mZoomX > 0x0010)
		{
			delay = 6;
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			if(gTimer==delay)
			{
				BGstats.mZoomX -= speed;	// zoom in x
				BGstats.mZoomY -= speed;	// zoom in y too...
				gTimer=0;
			}
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
		//i cant think of it yet but it will happen here..//rotate if i can ever get that to work..
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
	switch(prev)								// ooh here's the nice bit again...
	{
	//----if zero did simple zoom in <- so i want to re-zoom in
	case 0:
		while(BGstats.mZoomX >= 0x0100)
		{
			delay = 1;
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			if(gTimer==delay)
			{
				BGstats.mZoomX -= speed;	// zoom in x
				BGstats.mZoomY -= speed;	// zoom in y too...
				gTimer=0;
			}
		}
		break;

	//--if one stretch width ways <- need to stretch it back
	case 1:
		while(BGstats.mZoomX >= 0x0100)
		{
			delay = 3;
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			if(gTimer==delay)
			{
				BGstats.mZoomX -= speed;
				BGstats.mZoomY += speed;
				gTimer=0;
			}
		}
		break;

	//--if two stretch height ways
	case 2:
		while(BGstats.mZoomY >= 0x0100)
		{
			delay = 3;
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			if(gTimer==delay)
			{
				BGstats.mZoomX += speed;
				BGstats.mZoomY -= speed;
				gTimer=0;
			}
		}
		break;

	//--if three zoom out
	case 3:
		while(BGstats.mZoomX <= 0x0100)
		{
			delay = 6;
			WaitVBlank();				// Wait 4 VBlank
			UpdateGFX();				// update zoom factor
			ReadJoypad();
			if(gTimer==delay)
			{
				BGstats.mZoomX += speed;	// zoom in x
				BGstats.mZoomY += speed;	// zoom in y too...
				gTimer=0;
			}
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

	//------------update registers---
    *(vu16*)REG_BG2PA = (u16)BGstats.mBg2pa;
	*(vu16*)REG_BG2PB = (u16)BGstats.mBg2pb;
    *(vu16*)REG_BG2PC = (u16)BGstats.mBg2pc;
    *(vu16*)REG_BG2PD = (u16)BGstats.mBg2pd;

    *(vu16*)REG_BG2X_L = (u16)(BGstats.mBg2x & 0xffff);
    *(vu16*)REG_BG2X_H = (u16)(u32)((BGstats.mBg2x & 0x0fff0000)>>16);
    *(vu16*)REG_BG2Y_L = (u16)(BGstats.mBg2y & 0xffff);
    *(vu16*)REG_BG2Y_H = (u16)(u32)((BGstats.mBg2y & 0x0fff0000)>>16);
}
