//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Text System (Source)
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#define _TEXT_SYS_C

#include "Includes.h"
#include "Text_Sys.h"
#include "Scroll_Engine.h"	//need to access screen data

// used for text on menus & ingame text 
// we only have 96 tiles for characters and speech bubbles so they are gonna have to be used sparingly

// ok decide what language file to include based on which language we are compiling for..
// MAKE SURE ONLY ONE OF THESE ARE DEFINED

#ifdef ENGLISH
#include "English.lan"
#endif		// ENGLISH

#ifdef AMERICAN
#include "American.lan"
#endif		// AMERICAN

#ifdef FRENCH
#include "French.lan"
#endif		// FERNCH

#ifdef GERMAN
#include "German.lan"
#endif		// GERMAN

#ifdef SPANISH
#include "Spanish.lan"
#endif		// SPANISH


//local variables

//local functions


u8 PutTextBox(u8 startx,u8 starty,u8 width, u8 height,u8 *string)
{
	//-- prob dont need these 2
	s8 maxwidth;	// maximum width of text display area
	s8 maxheight;	// maximun height od text display area
	//--

	u8 currentx;	// current text output locations
	u8 currenty;
	u8 x;	// current place in putting down blank tiles
	u8 y;	// another temp
	u8 i;	// current position in the string array
	u8 tiletoplace;	//store for which tile to place
	u8 wordlength;	// length of the current word
	u8 stringlength; // length of string

	//-- prob dont need these 2 either
	u8 endx;
	u8 endy;
	//--

	// clear 4th layer (make sure we have nothing on there before displaying the text)
	
	for(x=0;x<32;x++)
	{
		for(y=0;y<32;y++)
		{
			ScreenDat[(y*32)+x]=0;
		}
	}
	
	// init the above varyballs

	endx = startx+width-1;
	endy = starty+height-1;
	currentx = startx + 1;
	currenty = starty + 1;
	maxwidth = width - 2;
	maxheight = height - 2;
	wordlength = 0;
	stringlength = strlen(string);


	if(maxwidth<2 || maxheight<1)
	{
		//we got problem here as we aint gonna get any text in this box
		return 0;
	}

	
	// PutTextBox
	
	// needs a out line (1 by 1)
	// place down tiles for speech bubble

	// put down corner peices
	ScreenDat[(starty*32)+startx]=32;
	ScreenDat[(starty*32)+endx]=33;
	ScreenDat[(endy*32)+startx]=34;
	ScreenDat[(endy*32)+endx]=35;
	
	// loop through from startx+1 to endx-1 and place top parts for starty and endy rows
	for(x=startx+1;x<endx;x++)
	{
		ScreenDat[(starty*32)+x]=0;
		ScreenDat[(endy*32)+x]=0;
	}
	// loop through from starty+1 to endy-1 and place side parts for startx and endx rows
	for(y=starty+1;y<endy;y++)
	{
		ScreenDat[(y*32)+startx]=0;
		ScreenDat[(y*32)+endx]=0;
	}

	for(i=0;i<stringlength;i++)
	{
		// STAGE1

		// blank in the rest of the speech bubble..
		for(x=startx+1;x<endx;x++)
		{
			for(y=starty+1;y<endy;y++)
			{
				ScreenDat[(y*32)+x]=0;
			}
		}

		// read in next word..
		// if longer than max width then we got a problem
	
		// if endx-1-currentx is less than length of word then go to new line
		// go through word
		
		// use TextTileTable to convert the ascii code to a tile number
		tiletoplace=TextTileTable[string[i]];	// NEED TO TEST THIS WORKS (should do)

		// place tile into currentx/y
		ScreenDat[(currenty*32)+currentx]=tiletoplace;	// should be ok
		// increase currentx
		// if end of word increase currentx again (to put down a space)
		// at end of word check to see if we are at endx
		// if so go to next line
		// go to next word

		// if we are bottom of the speech bubble then pause and wait for key press
		// then go back to filling in blank area STAGE1
	}
	
	//ok once all that is set up ok DMA the connents of Bg4_Screendat to VRAM
	DmaArrayCopy(3,ScreenDat,MAP_BASE_ADDR+0x1800,16);

	//ok all worked fine so return 1 so we know all was fine
	return 1;


}


//--------------------------------------------------------------------------------------------
//
//	NOTES: 
//  1. includes one of the LANGAUAGE files which contain the translated strings
//  2. we have only 96 tiles for 4th layer in game SO upercase only!!!!
//  3. this file reads the string and converts the ASCII code into the relevant tile number
//
//--------------------------------------------------------------------------------------------

//tilenumbers go from 32 - 127 (bubbles too)
// 0 is BLANK
// then use 32 to 40 for bubbles
// that leaves 41-127 for text characters (87)

const u8 TextTileTable[256]=
{
	// ASCII to Tile Number converter data table...
	// read the string and use this table to convert the character to a tile number..


	40,40,40,40,40,40,40,40,			//   0 -   7
	40,40,40,40,40,40,40,40,			//   8 -  15
	40,40,40,40,40,40,40,40,			//  16 -  23
	40,40,40,40,40,40,40,40,			//  24 -  31

//  sp 
	40,0,0,0,0,0,0,0,			//  32 -  39
//
	0,0,0,0,0,0,0,0,			//  40 -  47
//	
	0,0,0,0,0,0,0,0,			//  48 -  55 
//	
	0,0,0,0,0,0,0,0,			//  56 -  63
//	
	0,0,0,0,0,0,0,0,			//  64 -  71
//	
	0,0,0,0,0,0,0,0,			//  72 -  79
//	
	0,0,0,0,0,0,0,0,			//  80 -  87
//	
	0,0,0,0,0,0,0,0,			//  88 -  95
//	
	0,0,0,0,0,0,0,0,			//  96 - 103
//	
	0,0,0,0,0,0,0,0,			// 104 - 111
//	
	0,0,0,0,0,0,0,0,			// 112 - 119
//	
	0,0,0,0,0,0,0,0,			// 120 - 127
//	
	0,0,0,0,0,0,0,0,			// 128 - 135
//	
	0,0,0,0,0,0,0,0,			// 136 - 143
//	
	0,0,0,0,0,0,0,0,			// 144 - 151
//	
	0,0,0,0,0,0,0,0,			// 152 - 159
//	
	0,0,0,0,0,0,0,0,			// 160 - 167
//	
	0,0,0,0,0,0,0,0,			// 168 - 175
//	
	0,0,0,0,0,0,0,0,			// 176 - 183
//	
	0,0,0,0,0,0,0,0,			// 184 - 191
//	
	0,0,0,0,0,0,0,0,			// 192 - 199
//	
	0,0,0,0,0,0,0,0,			// 200 - 207
//	
	0,0,0,0,0,0,0,0,			// 208 - 215
//	
	0,0,0,0,0,0,0,0,			// 216 - 223
//	
	0,0,0,0,0,0,0,0,			// 224 - 231
//	
	0,0,0,0,0,0,0,0,			// 232 - 239
//	
	0,0,0,0,0,0,0,0,			// 240 - 247
//	
	0,0,0,0,0,0,0,0,			// 248 - 255
};