//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Display (Header).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _SPRENG_DISPLAY_H
#define _SPRENG_DISPLAY_H

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////
extern const u16 SpriteA_Palette[256];
extern const u8 SpriteA_Char[8*8*(64/8)*(64/8)];

/////////////////////////////////////////////////
// Variables.
/////////////////////////////////////////////////
s16	ObjectPosX,ObjectPosY;
u16	ObjectAffine;
u16	ObjectMosaic;
u16	ObjectScaleX,ObjectScaleY;
u16	ObjectRotate;
u16	ObjectOAMBuffer[16];

/////////////////////////////////////////////////
// Functions.
/////////////////////////////////////////////////
extern void ObjectDisplay(void);
extern void ObjectTest(void);
extern void ObjectCreateOAM(void);
extern void ObjectInitParam(void);
extern void ObjectInitOAM(void);

#endif

//***************************************************************************************************




























