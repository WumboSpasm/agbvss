//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Text System (Header).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _TEXTSYS_H
#define _TEXTSYS_H

// define of where screen output is..
#define TEXT_SCREEN	VRAM+0xf800
// screen buffer for 4th layer
u16 ScreenDat[32*32];				// Front Layer for Text/Speech Bubbles

//string's (initialised in .lan files
extern u8 GAMENAME[];
extern u8 COPYRIGHT[];
extern u8 OK[];
extern u8 YES[];
extern u8 NO[];
extern u8 MENU[];

// text2tile data table..
extern const u8 TextTileTable[256];

// functions
extern u8 PutTextBox(u8 startx,u8 starty,u8 width, u8 height,u8 *string);		// put text with speech bubbles
extern u8 PutText(u8 startx,u8 starty,u8 width, u8 height,u8 *string);			// put text with out the text borders
extern void ClearTextLayer(void);												// clear the 4th layer to be blank


#endif	// _TEXT_SYS_H