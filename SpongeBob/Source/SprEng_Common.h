//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Common (Header).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _SPRENG_COMMON_H
#define _SPRENG_COMMON_H

/////////////////////////////////////////////////
// Variables.
/////////////////////////////////////////////////
u16 ObjectOAMBuffer[OAM_SIZE];					// 1K OAM buffer.
u16 SpriteMosaic;							 	// Global sprite mosaic value.

/////////////////////////////////////////////////
// Global Functions.
/////////////////////////////////////////////////
extern void InitSprites(void);
extern void ClearOAMRam(void);
extern void UpdateOAMRam(void);

#endif

//***************************************************************************************************