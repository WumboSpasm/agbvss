//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Common (Header).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _SPRENG_COMMON_H
#define _SPRENG_COMMON_H

/////////////////////////////////////////////////
// Defines.
/////////////////////////////////////////////////
//#undef	NULL
//#define	NULL ((void *)0)

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////
extern const u8 Spongey_Char[64*64];
extern const u8 Patrick_Char[64*64];
extern const u8 Sandy_Char[64*64];

extern const short SinCosTable[256+64];

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