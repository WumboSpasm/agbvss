//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Common (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "SprEng_Display.h"

//***************************************************************************************************

// Initialise the sprite engine.

void InitSprites(void)
{
	Object*	pAO;								// Pointer to base of objects.
	ObjectInit();								// Init. sprite 'object control' engine.

	pAO=ObjectGet1();
	pAO->sp_type=TYPE_SPRITEA; 					// Create a few 'test sprite' objects.
	pAO=ObjectGet1();
	pAO->sp_type=TYPE_SPRITEB;
	pAO=ObjectGet1();
	pAO->sp_type=TYPE_SPRITEC;
	pAO=ObjectGet1();
	pAO->sp_type=TYPE_SPRITED;

    DmaArrayCopy(3,SpriteA_Palette,OBJ_PLTT,16); // Copy sprite character data.
    DmaArrayCopy(3,SpriteA_Char,OBJ_MODE0_VRAM,16);

    ObjectInitParam();							// Init. object parameters.
	ObjectInitOAM();							// Init. OAM.
}

//***************************************************************************************************

// Initialize OAM RAM memory.

void ClearOamRam(void)
{
    int i=0;

    u16* OAMPtr;

    OAMPtr=(u16*)OAM;

    for(i=0;i<32;++i)
    {
		*OAMPtr++=0x0200;
		*OAMPtr++=0x0000;
		*OAMPtr++=0x0000;
		*OAMPtr++=0x0100;
		*OAMPtr++=0x0200;
		*OAMPtr++=0x0000;
		*OAMPtr++=0x0000;
		*OAMPtr++=0x0000;
		*OAMPtr++=0x0200;
		*OAMPtr++=0x0000;
		*OAMPtr++=0x0000;
		*OAMPtr++=0x0000;
		*OAMPtr++=0x0200;
		*OAMPtr++=0x0000;
		*OAMPtr++=0x0000;
		*OAMPtr++=0x0100;
    }
}

//***************************************************************************************************

// Fixed decimal point calculation routines in 1.7.8 format.

// Calculate a*b.

s16 FixMul(s16 a,s16 b)
{
    s32 tmp;
    tmp=a;
    tmp*=b;
    tmp/=0x100;
    return (s16)tmp;
}

//---------------------------------------------------------------------------------------------------

// Calculate a/b.

s16 FixDiv(s16 a,s16 b)
{
    s32 tmp;
    tmp=a;
    tmp*=0x100;
    tmp/=b;
    return (s16)tmp;
}

//---------------------------------------------------------------------------------------------------

// Calculate 1/b.

s16 FixInverse(s16 b)
{
    s32 tmp;
    tmp=0x10000;
    tmp/=b;
    return (s16)tmp;
}

//***************************************************************************************************
