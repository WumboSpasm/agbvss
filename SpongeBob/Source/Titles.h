//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Titles (Header).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _TITLES_H
#define _TITLES_H

//Beaner's File - fuck wif dis and U forkin' die

////////////////////////////////////////////////
// defines
////////////////////////////////////////////////

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////
//u16 TBg3_ScreenDat[32*32];				// Size of screen in VRAM.
//u16 TBg2_ScreenDat[32*32];
u16 TBg1_ScreenDat[32*32];				// front layer for options
u16 TBg0_ScreenDat[32*32];				// back screen to show TONS of tiles


/////////////////////////////////////////////////
// Global Functions
/////////////////////////////////////////////////
extern void InitTitles(void);
extern void InitTitlesBack(void);
extern void MainTitles(void);
extern void InitLayers(void);

#endif

//***************************************************************************************************