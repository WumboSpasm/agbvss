//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Titles (Header).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _TITLES_H
#define _TITLES_H
   
//Beaner's File - fork wif dis and U forkin' die

////////////////////////////////////////////////
// defines    
////////////////////////////////////////////////
 
//-------structs


//--Screen data structure-------------------------------------------------------------------------------------------
//
// contains zoom/roational values and provides a store for the hardware values to be stored in the harware registers
// 
//-------------------------------------------------------------------------------------------------------------------
typedef struct 
{		
	vs32	mBg2_center_x;		// roratational center X
	vs32	mBg2_center_y;		// roratational center Y
	s32		mBg2x;				// BG reference starting point
	s32		mBg2y;				// BG reference starting point
	u16		mBg2pa;				// BG data reference direction
	u16		mBg2pb;				// BG data reference direction
	u16		mBg2pc;				// BG data reference direction
	u16		mBg2pd;				// BG data reference direction
	u16		mZoomX;				// stretch X value
	u16		mZoomY;				// stretch Y value
	u16		mRotate;			// rotational value //not working yet :o( - need to sort it out better later on
	u16		mPad;				// padding to 32 bit multiple
}
bgstats;

//-----------------Title data structure----------------------------------------------------------------------------
//
//  contains all the info about the current menu you are in 
//
//-----------------------------------------------------------------------------------------------------------------
typedef struct
{
	u32		mCurrent_Screen;		// which option screen are we on
	u32		mCurrent_Selection;		// which option is currently selected
	u32		mMax_Selections;		// total number of options
}
title;

/////////////////////////////////////////////////
// Global Functions
/////////////////////////////////////////////////
extern void InitTitles(void);
extern void MainTitles(void);

#endif

//***************************************************************************************************