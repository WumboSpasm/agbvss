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
extern u8 PutTextBox(u8 startx,u8 starty,u8 endx, u8 endy,u8 string[]);


#endif	// _TEXT_SYS_H