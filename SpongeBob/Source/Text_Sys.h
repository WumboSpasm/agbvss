//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Text System (Header).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _TEXT_SYS_H
#define _TEXT_SYS_H

//string's (initialised in .lan files
extern u8 GAMENAME[]; 
extern u8 COPYRIGHT[]; 

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

// text2tile data table..
extern const u8 TextTileTable[256];

#endif	// _TEXT_SYS_H