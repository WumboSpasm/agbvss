//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Titles (Data Header).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _TITLESDATA_H
#define _TITLESDATA_H

// palettes
extern u16 TitlesLayer1_Palette[256]; 		// Colour palette data (shared 256 colours for all backgrounds).
extern u16 TitlesLayer0_Palette[256]; 		// Colour palette data (shared 256 colours for all backgrounds).

//layer 1
extern u8 TitlesLayer1_Character[8*8*256];	// No. of 8x8 tiles.
extern u16 TitlesLayer1_Map[256*32];			// Size of map in ROM.
//layer 0
extern u8 TitlesLayer0_Character[8*8*768];	// No. of 8x8 tiles.
extern u16 TitlesLayer0_Map[768*32];			// Size of map in ROM.

#endif