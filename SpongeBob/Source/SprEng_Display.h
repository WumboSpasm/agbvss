//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Display (Header).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _SPRENG_DISPLAY_H
#define _SPRENG_DISPLAY_H

/////////////////////////////////////////////////
// Defines.
/////////////////////////////////////////////////

#define FlashTimer 300							// Global sprite flashing timer.
#define FlashSpeed 30							// Global sprite flashing speed.

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////
u16 gOAMOffset;									// Offset into OAM buffer when writing sprite attributes.

/////////////////////////////////////////////////
// Global Functions.
/////////////////////////////////////////////////
extern void ObjectDisplay();
extern void ObjectOff(Object*);

#endif

//***************************************************************************************************




























