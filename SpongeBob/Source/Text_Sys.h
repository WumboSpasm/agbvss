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
extern u16 ScreenDat[32*20];				// Front Layer for Text/Speech Bubbles

//string's (initialised in .lan files
extern u8 GAMENAME[];
extern u8 PRESSSTART[];
extern u8 COPYRIGHT[];
extern u8 OK[];
extern u8 YES[];
extern u8 NO[];
extern u8 MENU[];
extern u8 NEWGAME[];
extern u8 PASSWORD[];   
extern u8 PASSWORD2[];   
extern u8 OPTION[];
extern u8 CREDITS[];    
extern u8 CONTROLLER[];
extern u8 CONTA[];      
extern u8 CONTB[];      
extern u8 SOUND[];      
extern u8 MUSICVOL[];   
extern u8 SFXVOL[]; 
extern u8 SELECTBAR[];    
extern u8 PCT0[];  
extern u8 PCT5[];  
extern u8 PCT10[]; 
extern u8 PCT15[]; 
extern u8 PCT20[]; 
extern u8 PCT25[]; 
extern u8 PCT30[]; 
extern u8 PCT35[]; 
extern u8 PCT40[]; 
extern u8 PCT45[]; 
extern u8 PCT50[]; 
extern u8 PCT55[]; 
extern u8 PCT60[]; 
extern u8 PCT65[]; 
extern u8 PCT70[]; 
extern u8 PCT75[]; 
extern u8 PCT80[]; 
extern u8 PCT85[]; 
extern u8 PCT90[]; 
extern u8 PCT95[]; 
extern u8 PCT100[];


#if defined(debug)
extern u8 DEBUGBUFFER[256];     // only use this in debug!!!!!!!
#endif

// text2tile data table..
extern const u8 TextTileTable[256];

// functions
extern u8 PutTextBox(u8 startx,u8 starty,u8 width, u8 height,u8 *string,u8 clear);		// put text with speech bubbles
extern u8 PutText(u8 startx,u8 starty,u8 width, u8 height,u8 *string,u8 clear);			// put text with out the text borders
extern void ClearTextLayer(void);												// clear the 4th layer to be blank

#endif	// _TEXT_SYS_H