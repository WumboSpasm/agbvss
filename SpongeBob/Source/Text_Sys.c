//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Text System (Source)
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#define _TEXT_SYS_C

#include "Includes.h"
#include "Text_Sys.h"

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

//-------------------------------------------
// PutTextBox
//
// Outputs speechbubble textbox onto screen (used mainly in game)
//
// INPUTS:
// top corner co-ordinates "startx,starty"
// size "width,height"
// pointer to text string "string"
// OUTPUTS:
// returns 1 is success or 0 if fails
//
//--------------------------------------------------

u8 PutTextBox(u8 startx,u8 starty,u8 width, u8 height,u8 *string)
{
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
	wordlength = 0;
	stringlength = strlen(string);


	if(width<4 || height<3)
	{
		//we got problem here as we aint gonna get any text in this box
		DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);	// copy the BLANK screen data into the 4th layer...
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
		ScreenDat[(starty*32)+x]=36;
		ScreenDat[(endy*32)+x]=37;
	}
	// loop through from starty+1 to endy-1 and place side parts for startx and endx rows
	for(y=starty+1;y<endy;y++)
	{
		ScreenDat[(y*32)+startx]=38;
		ScreenDat[(y*32)+endx]=39;
	}

	// blank in the rest of the speech bubble..
	for(x=startx+1;x<endx;x++)
	{
		for(y=starty+1;y<endy;y++)
		{
			ScreenDat[(y*32)+x]=40;
		}
	}

	for(i=0;i<stringlength;i++)
	{
		// STAGE1

		// read in next word..
		// if longer than max width then we got a problem

		// if endx-1-currentx is less than length of word then go to new line
		// go through word

		// use TextTileTable to convert the ascii code to a tile number
		tiletoplace=TextTileTable[string[i]];	// NEED TO TEST THIS WORKS (should do)

		// place tile into currentx/y
		ScreenDat[(currenty*32)+currentx]=tiletoplace;	// should be ok
		// increase currentx
		currentx++;
		// if end of word increase currentx again (to put down a space)
		// at end of word check to see if we are at endx
		// if so go to next line
		// go to next word

		// if we are bottom of the speech bubble then pause and wait for key press
		// then go back to filling in blank area STAGE1
	}

	//ok once all that is set up ok DMA the connents of Bg4_Screendat to VRAM
	DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);

	//ok all worked fine so return 1 so we know all was fine
	return 1;


}

//-------------------------------------------
// PutText
//
// Outputs text only onto screen (used mainly in menus)
//
// INPUTS:
// top corner co-ordinates "startx,starty"
// size "width,height"
// pointer to text string "string"
// OUTPUTS:
// returns 1 is success or 0 if fails
//
//----------------------------------------------

u8 PutText(u8 startx,u8 starty,u8 width, u8 height,u8 *string)
{
	u8 currentx;	// current text output locations
	u8 currenty;
	u8 x;	// current place in putting down blank tiles
	u8 y;	// another temp
	u8 i;	// current position in the string array
	u8 tiletoplace;	//store for which tile to place
	u8 wordlength;	// length of the current word
	u8 stringlength; // length of string

	// clear 4th layer (make sure we have nothing on there before displaying the text)

	for(x=0;x<32;x++)
	{
		for(y=0;y<32;y++)
		{
			ScreenDat[(y*32)+x]=0;
		}
	}

	// init the above varyballs
	currentx = startx;
	currenty = starty;
	wordlength = 0;
	stringlength = strlen(string);


	if(width<2 || height<1)
	{
		//we got problem here as we aint gonna get any text in this box
		DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);	// copy the BLANK screen data into the 4th layer...
		return 0;
	}


	for(i=0;i<stringlength;i++)
	{
		// read in next word..
		// if longer than max width then we got a problem

		// if endx-1-currentx is less than length of word then go to new line
		// go through word

		// use TextTileTable to convert the ascii code to a tile number
		tiletoplace=TextTileTable[string[i]];	// NEED TO TEST THIS WORKS (should do)

		// place tile into currentx/y
		ScreenDat[(currenty*32)+currentx]=tiletoplace;	// should be ok

		// increase currentx
		currentx++;

		// check to see if end of line
		if(currentx==startx+width)
		{
			currentx=startx;
			currenty++;
		}

		// check to see if at bottom of text area
		if(currenty==starty+height)
		{
			// wait for key press
			// clean text box screen and rester
			currentx = startx;
			currenty = starty;
			// blank the old text area
			for(x=startx+1;x<startx+width;x++)
			{
				for(y=starty+1;y<starty+height;y++)
				{
					ScreenDat[(y*32)+x]=0;
				}
			}

		}

		// go to next word

	}

	//ok once all that is set up ok DMA the connents of Bg4_Screendat to VRAM
	DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);

	//ok all worked fine so return 1 so we know all was fine
	return 1;
}

//--------------------

void ClearTextLayer(void)
{
	u8 x,y;

	// go through ScreenDat Array and set all entries to 0 (empty)
	for(x=0;x<32;x++)
	{
		for(y=0;y<32;y++)
		{
			ScreenDat[(y*32)+x]=0;
		}
	}
        // copy the blank array to VRam!
	DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);
}


//--------------------------------------------------------------------------------------------
//
//	NOTES:
//  1. includes one of the LANGAUAGE files which contain the translated strings
//  2. we have only 96 tiles for 4th layer in game SO upercase only!!!!
//  3. this file reads the string and converts the ASCII code into the relevant tile number
//
//--------------------------------------------------------------------------------------------

//tilenumbers go from 32 - 127 (bubbles too & character heads)
// 0 is BLANK
// then use 32 to 40 for bubbles
// that leaves 41-127 for text characters & other bits!!!! (87)
// 40 is a white space!!!

const u8 TextTileTable[256]=
{
	// ASCII to Tile Number converter data table...
	// read the string and use this table to convert the character to a tile number..

	// we should not need these !!!!!!
	40,40,40,40,40,40,40,40,			//   0 -   7
	40,40,40,40,40,40,40,40,			//   8 -  15
	40,40,40,40,40,40,40,40,			//  16 -  23
	40,40,40,40,40,40,40,40,			//  24 -  31

	// main ones were are gonna need

//	sp !  "  #  $  %  &  '
	40, 0, 0, 0, 0, 0, 0, 0,			//  32 -  39
//  	 (  )  *  +  ,  -  .  /
	 0, 0, 0, 0, 0, 0, 0, 0,			//  40 -  47
//	 0  1  2  3  4  5  6  7
	67,68,69,70,71,72,73,74,			//  48 -  55
//	 8  9  :  ;  <  =  >  ?
	75,76, 0, 0, 0, 0, 0, 0,			//  56 -  63
//	 @  A  B  C  D  E  F  G
	 0,41,42,43,44,45,46,47,			//  64 -  71
//	 H  I  J  K  L  M  N  O
	48,49,50,51,52,53,54,55,			//  72 -  79
//	 P  Q  R  S  T  U  V  W
	56,57,58,59,60,61,62,63,			//  80 -  87
//	 X  Y  Z  [  \  ]  ^  _
	64,65,66, 0, 0, 0, 0, 0,			//  88 -  95
//	 `  a  b  c  d  e  f  g
	 0, 0, 0, 0, 0, 0, 0, 0,			//  96 - 103
//	 h  i  j  k  l  m  n  o
	 0, 0, 0, 0, 0, 0, 0, 0,			// 104 - 111
//	 p  q  r  s  t  u  v  w
 	 0, 0, 0, 0, 0, 0, 0, 0,			// 112 - 119
//	 x  y  z  {  |  }  ~
	 0, 0, 0, 0, 0, 0, 0,40,			// 120 - 127
//
	 0, 0, 0, 0, 0, 0, 0, 0,			// 128 - 135
//
	 0, 0, 0, 0, 0, 0, 0, 0,			// 136 - 143
//
	 0, 0, 0, 0, 0, 0, 0, 0,			// 144 - 151
//
	 0, 0, 0, 0, 0, 0, 0, 0,			// 152 - 159
//
	 0, 0, 0, 0, 0, 0,40,40,			// 160 - 167

	// we should not need these!!!!!!!!!!
	40,40,40,40,40,40,40,40,			// 168 - 175
	40,40,40,40,40,40,40,40,			// 176 - 183
	40,40,40,40,40,40,40,40,			// 184 - 191
	40,40,40,40,40,40,40,40,			// 192 - 199
	40,40,40,40,40,40,40,40,			// 200 - 207
	40,40,40,40,40,40,40,40,			// 208 - 215
	40,40,40,40,40,40,40,40,			// 216 - 223
	40,40,40,40,40,40,40,40,			// 224 - 231
	40,40,40,40,40,40,40,40,			// 232 - 239
	40,40,40,40,40,40,40,40,			// 240 - 247
	40,40,40,40,40,40,40,40,			// 248 - 255
};