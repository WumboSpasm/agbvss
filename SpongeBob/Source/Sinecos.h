//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Sine & CoSine Tables (Header).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _SINECOS_H
#define _SINECOS_H

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////
extern const s16 SinCosTable[256+64];
#define	Sin(a) (SinCosTable[(a)])
#define	Cos(a) (SinCosTable[(a)+64])

extern s16 FixMul(s16 a,s16 b);
extern s16 FixDiv(s16 a,s16 b);
extern s16 FixInverse(s16 b);

#endif

//***************************************************************************************************