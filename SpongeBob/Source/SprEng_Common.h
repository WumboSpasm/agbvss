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
#undef	NULL
#define	NULL ((void *)0)
#define	Sin(a) (SinCosTable[(a)])
#define	Cos(a) (SinCosTable[(a)+64])

/////////////////////////////////////////////////
// Variables.
/////////////////////////////////////////////////
extern const short SinCosTable[256+64];

s16 FixMul(s16 a,s16 b);
s16 FixDiv(s16 a,s16 b);
s16 FixInverse(s16 b);

/////////////////////////////////////////////////
// Functions.
/////////////////////////////////////////////////
extern void InitSprites(void);

#endif

//***************************************************************************************************