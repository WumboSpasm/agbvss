//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Text System (Header).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _TEXTSYS_H
#define _TEXTSYS_H

//string's (initialised in .lan files
extern u8 GAMENAME[];
extern u8 COPYRIGHT[];

// text2tile data table..
extern const u8 TextTileTable[256];

// functions
extern u8 PutTextBox(u8 startx,u8 starty,u8 width, u8 height,u8 *string);

// screen buffer for 4th layer
extern u16 ScreenDat[32*32];				// Front Layer for Text/Speech Bubbles


#endif	// _TEXT_SYS_H