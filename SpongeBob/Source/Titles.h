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
typedef struct bgstats_tag{		
	s32		mStart_x;			// BG reference starting point
	s32		mStart_y;			// BG reference starting point
	vs32	mBg2_center_x;		// co-ordinates of center of bitmap
	vs32	mBg2_center_y;		// co-ordinates of center of bitmap
	u16		mBg2pa;				// BG data reference direction
	u16		mBg2pb;				// BG data reference direction
	u16		mBg2pc;				// BG data reference direction
	u16		mBg2pd;				// BG data reference direction
	u16		mZoomX;				// stretch X value
	u16		mZoomY;				// stretch Y value
}bgstats;

typedef struct title_tag{
	u32		mCurrent_Screen;		// which option screen are we on
	u32		mCurrent_Selection;		// which option is currently selected
	u32		mMax_Selections;		// total number of options
}title;

/////////////////////////////////////////////////
// Global Functions
/////////////////////////////////////////////////
extern void InitTitles(void);
extern void MainTitles(void);

#endif

//***************************************************************************************************