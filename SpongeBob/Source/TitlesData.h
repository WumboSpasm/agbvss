//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Titles (Data Header).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _TITLESDATA_H
#define _TITLESDATA_H

// hi-color single frame data
extern u8 menuback_Palette[256];
extern u8 menuback_Character[8*8*100];
extern u16 menuback_Map[32*32];
extern u8 menuback2_Character[8*8*100];
extern u16 menuback2_Map[32*32];
extern u8 menul2_Character[8*8*100];
extern u16 menul2_Map[32*32];
extern u8 PasswordIcons_Char[64*64/8*48/8]; 

extern u16 HubMap_Palette[256];
extern u8 HubMap_Character[8*8*896];
extern u16 HubMap_Map[32*64];

#endif