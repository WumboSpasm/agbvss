//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Titles (Header).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _TITLES_H
#define _TITLES_H
   
////////////////////////////////////////////////
// defines    
////////////////////////////////////////////////

#define TILE_BASE_3	2					// 3 = Points to 'speech bubble' tile library (96 tiles).#define TILE_BASE_1	0					// 0 = Points to level tile library (800 tiles).
#define TILE_BASE_ADDR_3 VRAM+0x8000 	// VRAM tile bank 2 base address (96 tiles).

//-------structs


//-----------------Title data structure----------------------------------------------------------------------------
//
//  contains all the info about the current menu you are in 
//
//-----------------------------------------------------------------------------------------------------------------
typedef struct
{
	u8		mCurrent_Screen;		// which option screen are we on
	u8		mCurrent_Selection;		// which option is currently selected
	u8              mCurrent_PasswordPlace;         // which password position are we entering into
	u8		mMax_Selections;		// total number of options
}
title;

//--enum Title Screens
enum
{
	eTitle_Screen = 0,		//0
	eMain_Menu,				//1
	eStart_Menu,			//2
	ePassword_Menu,			//3
	eOptions_Menu,			//4
	eController_Menu,		//5
	eSound_Menu,			//6
};

/////////////////////////////////////////////////
// Global Functions
/////////////////////////////////////////////////
extern void InitTitles(void);
extern void MainTitles(void);

// globs
extern title Title;						        // Title struct (lots of nice variables in here)
extern u8 Password_Buffer[6];                                           // buffer to enter password into..
extern const u8 PasswordIconOffsetTable[8];                             // offset into tile libraries for each password icon

#endif

//***************************************************************************************************