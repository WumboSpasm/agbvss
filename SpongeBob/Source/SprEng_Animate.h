//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Animate (Header).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _SPRENG_ANIMATE_H
#define _SPRENG_ANIMATE_H

/////////////////////////////////////////////////
// Defines.
/////////////////////////////////////////////////

#define LOOP 0									// End of animation sequence control functions.
#define HOLD 1

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////

extern u16 gOAMOffset;

/////////////////////////////////////////////////
// Global Functions.
/////////////////////////////////////////////////

extern void ObjectAnimate(Object*);

//---------------------------------------------------------------------------------------------------

// SpongeBob sprites.
				 
extern const u8 buttbounceend0001_Char_RL[];
extern const u8 buttbounceend0003_Char_RL[];
extern const u8 buttbounceend0005_Char_RL[];
extern const u8 buttbounceend0007_Char_RL[];

extern const u8 buttbouncestart0001_Char_RL[];
extern const u8 buttbouncestart0003_Char_RL[];
extern const u8 buttbouncestart0005_Char_RL[];
extern const u8 buttbouncestart0007_Char_RL[];

extern const u8 deathbackwards0001_Char_RL[];
extern const u8 deathbackwards0003_Char_RL[];
extern const u8 deathbackwards0005_Char_RL[];
extern const u8 deathbackwards0007_Char_RL[];
extern const u8 deathbackwards0009_Char_RL[];
extern const u8 deathbackwards0011_Char_RL[];
extern const u8 deathbackwards0013_Char_RL[];
extern const u8 deathbackwards0015_Char_RL[];

extern const u8 deathdry0001_Char_RL[];
extern const u8 deathdry0003_Char_RL[];
extern const u8 deathdry0005_Char_RL[];
extern const u8 deathdry0007_Char_RL[];
extern const u8 deathdry0009_Char_RL[];
extern const u8 deathdry0011_Char_RL[];
extern const u8 deathdry0013_Char_RL[];
extern const u8 deathdry0015_Char_RL[];

extern const u8 deathforwards0001_Char_RL[];
extern const u8 deathforwards0003_Char_RL[];
extern const u8 deathforwards0005_Char_RL[];
extern const u8 deathforwards0007_Char_RL[];
extern const u8 deathforwards0009_Char_RL[];
extern const u8 deathforwards0011_Char_RL[];
extern const u8 deathforwards0013_Char_RL[];
extern const u8 deathforwards0015_Char_RL[];

extern const u8 deathspin0001_Char_RL[];
extern const u8 deathspin0003_Char_RL[];
extern const u8 deathspin0005_Char_RL[];
extern const u8 deathspin0007_Char_RL[];
extern const u8 deathspin0009_Char_RL[];
extern const u8 deathspin0011_Char_RL[];
extern const u8 deathspin0013_Char_RL[];
extern const u8 deathspin0015_Char_RL[];

extern const u8 deathsquash0001_Char_RL[];
extern const u8 deathsquash0003_Char_RL[];
extern const u8 deathsquash0005_Char_RL[];
extern const u8 deathsquash0007_Char_RL[];
extern const u8 deathsquash0009_Char_RL[];
extern const u8 deathsquash0011_Char_RL[];
extern const u8 deathsquash0013_Char_RL[];
extern const u8 deathsquash0015_Char_RL[];

extern const u8 deathtar0001_Char_RL[];
extern const u8 deathtar0003_Char_RL[];
extern const u8 deathtar0005_Char_RL[];
extern const u8 deathtar0007_Char_RL[];

extern const u8 deathtarstart0001_Char_RL[];
extern const u8 deathtarstart0003_Char_RL[];
extern const u8 deathtarstart0005_Char_RL[];
extern const u8 deathtarstart0007_Char_RL[];

extern const u8 electricshock0001_Char_RL[];
extern const u8 electricshock0003_Char_RL[];
extern const u8 electricshock0005_Char_RL[];
extern const u8 electricshock0007_Char_RL[];

extern const u8 electricshockend0000_Char_RL[];
extern const u8 electricshockend0001_Char_RL[];

extern const u8 electricshockstart0000_Char_RL[];
extern const u8 electricshockstart0001_Char_RL[];

extern const u8 faceback0001_Char_RL[];
extern const u8 faceback0003_Char_RL[];
extern const u8 faceback0005_Char_RL[];
extern const u8 faceback0007_Char_RL[];

extern const u8 facefront0000_Char_RL[];
extern const u8 facefront0001_Char_RL[];

extern const u8 fall0001_Char_RL[];
extern const u8 fall0003_Char_RL[];
extern const u8 fall0005_Char_RL[];

extern const u8 fireend0000_Char_RL[];
extern const u8 fireend0001_Char_RL[];

extern const u8 firestart0000_Char_RL[];
extern const u8 firestart0001_Char_RL[];
extern const u8 firestart0002_Char_RL[];
extern const u8 firestart0003_Char_RL[];

extern const u8 getup0001_Char_RL[];
extern const u8 getup0003_Char_RL[];
extern const u8 getup0005_Char_RL[];
extern const u8 getup0007_Char_RL[];

extern const u8 getuprun0001_Char_RL[];
extern const u8 getuprun0003_Char_RL[];
extern const u8 getuprun0005_Char_RL[];
extern const u8 getuprun0007_Char_RL[];

extern const u8 hitground0001_Char_RL[];
extern const u8 hitground0003_Char_RL[];
extern const u8 hitground0005_Char_RL[];
extern const u8 hitground0007_Char_RL[];

extern const u8 hover0001_Char_RL[];
extern const u8 hover0003_Char_RL[];
extern const u8 hover0005_Char_RL[];
extern const u8 hover0007_Char_RL[];

extern const u8 hoverend0000_Char_RL[];
extern const u8 hoverend0001_Char_RL[];

extern const u8 hoverstart0000_Char_RL[];
extern const u8 hoverstart0001_Char_RL[];

extern const u8 idlebouncehead0001_Char_RL[];
extern const u8 idlebouncehead0003_Char_RL[];
extern const u8 idlebouncehead0005_Char_RL[];
extern const u8 idlebouncehead0007_Char_RL[];
extern const u8 idlebouncehead0009_Char_RL[];
extern const u8 idlebouncehead0011_Char_RL[];
extern const u8 idlebouncehead0013_Char_RL[];
extern const u8 idlebouncehead0015_Char_RL[];

extern const u8 idlebounceheadend0001_Char_RL[];
extern const u8 idlebounceheadend0003_Char_RL[];
extern const u8 idlebounceheadend0005_Char_RL[];
extern const u8 idlebounceheadend0007_Char_RL[];

extern const u8 idlebounceheadstart0001_Char_RL[];
extern const u8 idlebounceheadstart0003_Char_RL[];
extern const u8 idlebounceheadstart0005_Char_RL[];
extern const u8 idlebounceheadstart0007_Char_RL[];

extern const u8 idlebreathe0000_Char_RL[];
extern const u8 idlebreathe0001_Char_RL[];
extern const u8 idlebreathe0002_Char_RL[];
extern const u8 idlebreathe0003_Char_RL[];

extern const u8 idlefaces0001_Char_RL[];
extern const u8 idlefaces0003_Char_RL[];
extern const u8 idlefaces0005_Char_RL[];
extern const u8 idlefaces0007_Char_RL[];

extern const u8 idlefacesend0001_Char_RL[];
extern const u8 idlefacesend0003_Char_RL[];
extern const u8 idlefacesend0005_Char_RL[];
extern const u8 idlefacesend0007_Char_RL[];

extern const u8 idlefacesstart0000_Char_RL[];
extern const u8 idlefacesstart0001_Char_RL[];

extern const u8 idlehoola0001_Char_RL[];
extern const u8 idlehoola0003_Char_RL[];
extern const u8 idlehoola0005_Char_RL[];
extern const u8 idlehoola0007_Char_RL[];
extern const u8 idlehoola0009_Char_RL[];
extern const u8 idlehoola0011_Char_RL[];
extern const u8 idlehoola0013_Char_RL[];
extern const u8 idlehoola0015_Char_RL[];

extern const u8 idlekarate0001_Char_RL[];
extern const u8 idlekarate0003_Char_RL[];
extern const u8 idlekarate0005_Char_RL[];
extern const u8 idlekarate0007_Char_RL[];
extern const u8 idlekarate0009_Char_RL[];
extern const u8 idlekarate0011_Char_RL[];
extern const u8 idlekarate0013_Char_RL[];
extern const u8 idlekarate0015_Char_RL[];

extern const u8 idlesleep0001_Char_RL[];
extern const u8 idlesleep0003_Char_RL[];
extern const u8 idlesleep0005_Char_RL[];
extern const u8 idlesleep0007_Char_RL[];

extern const u8 idlesleepend0001_Char_RL[];
extern const u8 idlesleepend0003_Char_RL[];

extern const u8 idlesleepstart0001_Char_RL[];
extern const u8 idlesleepstart0003_Char_RL[];

extern const u8 idlesplitpants0001_Char_RL[];
extern const u8 idlesplitpants0003_Char_RL[];
extern const u8 idlesplitpants0005_Char_RL[];
extern const u8 idlesplitpants0007_Char_RL[];
extern const u8 idlesplitpants0009_Char_RL[];
extern const u8 idlesplitpants0011_Char_RL[];
extern const u8 idlesplitpants0013_Char_RL[];
extern const u8 idlesplitpants0015_Char_RL[];
extern const u8 idlesplitpants0017_Char_RL[];
extern const u8 idlesplitpants0019_Char_RL[];
extern const u8 idlesplitpants0021_Char_RL[];
extern const u8 idlesplitpants0023_Char_RL[];

extern const u8 idleweapon0001_Char_RL[];
extern const u8 idleweapon0003_Char_RL[];
extern const u8 idleweapon0005_Char_RL[];
extern const u8 idleweapon0007_Char_RL[];
extern const u8 idleweapon0009_Char_RL[];
extern const u8 idleweapon0011_Char_RL[];
extern const u8 idleweapon0013_Char_RL[];
extern const u8 idleweapon0015_Char_RL[];

extern const u8 idlewigglearms0001_Char_RL[];
extern const u8 idlewigglearms0003_Char_RL[];
extern const u8 idlewigglearms0005_Char_RL[];
extern const u8 idlewigglearms0007_Char_RL[];
extern const u8 idlewigglearms0009_Char_RL[];
extern const u8 idlewigglearms0011_Char_RL[];
extern const u8 idlewigglearms0013_Char_RL[];
extern const u8 idlewigglearms0015_Char_RL[];

extern const u8 idlewind0001_Char_RL[];
extern const u8 idlewind0003_Char_RL[];
extern const u8 idlewind0005_Char_RL[];
extern const u8 idlewind0007_Char_RL[];
extern const u8 idlewind0009_Char_RL[];
extern const u8 idlewind0011_Char_RL[];
extern const u8 idlewind0013_Char_RL[];
extern const u8 idlewind0015_Char_RL[];

extern const u8 jumpend0001_Char_RL[];
extern const u8 jumpend0003_Char_RL[];

extern const u8 karate0001_Char_RL[];
extern const u8 karate0003_Char_RL[];
extern const u8 karate0005_Char_RL[];
extern const u8 karate0007_Char_RL[];
extern const u8 karate0009_Char_RL[];
extern const u8 karate0011_Char_RL[];
extern const u8 karate0013_Char_RL[];
extern const u8 karate0015_Char_RL[];

extern const u8 netfirelob0001_Char_RL[];
extern const u8 netfirelob0003_Char_RL[];
extern const u8 netfirelob0005_Char_RL[];
extern const u8 netfirelob0007_Char_RL[];
extern const u8 netfirelob0009_Char_RL[];
extern const u8 netfirelob0011_Char_RL[];
extern const u8 netfirelob0013_Char_RL[];
extern const u8 netfirelob0015_Char_RL[];

extern const u8 netswipe0001_Char_RL[];
extern const u8 netswipe0003_Char_RL[];
extern const u8 netswipe0005_Char_RL[];
extern const u8 netswipe0007_Char_RL[];
extern const u8 netswipe0009_Char_RL[];
extern const u8 netswipe0011_Char_RL[];
extern const u8 netswipe0013_Char_RL[];
extern const u8 netswipe0015_Char_RL[];

extern const u8 run0000_Char_RL[];
extern const u8 run0001_Char_RL[];
extern const u8 run0002_Char_RL[];
extern const u8 run0003_Char_RL[];
extern const u8 run0004_Char_RL[];
extern const u8 run0005_Char_RL[];
extern const u8 run0006_Char_RL[];
extern const u8 run0007_Char_RL[];
extern const u8 run0008_Char_RL[];
extern const u8 run0009_Char_RL[];
extern const u8 run0010_Char_RL[];
extern const u8 run0011_Char_RL[];
extern const u8 run0012_Char_RL[];
extern const u8 run0013_Char_RL[];
extern const u8 run0014_Char_RL[];
extern const u8 run0015_Char_RL[];

extern const u8 soakup0001_Char_RL[];
extern const u8 soakup0003_Char_RL[];
extern const u8 soakup0005_Char_RL[];
extern const u8 soakup0007_Char_RL[];

extern const u8 teeterfront0001_Char_RL[];
extern const u8 teeterfront0003_Char_RL[];
extern const u8 teeterfront0005_Char_RL[];
extern const u8 teeterfront0007_Char_RL[];
extern const u8 teeterfront0009_Char_RL[];
extern const u8 teeterfront0011_Char_RL[];
extern const u8 teeterfront0013_Char_RL[];
extern const u8 teeterfront0015_Char_RL[];

extern const u8 walkforward0001_Char_RL[];
extern const u8 walkforward0003_Char_RL[];
extern const u8 walkforward0005_Char_RL[];
extern const u8 walkforward0007_Char_RL[];
extern const u8 walkforward0009_Char_RL[];
extern const u8 walkforward0011_Char_RL[];
extern const u8 walkforward0013_Char_RL[];
extern const u8 walkforward0015_Char_RL[];

//---------------------------------------------------------------------------------------------------

// Clam animation sequences.

extern const u8 clamsidesnap0001_Char[];
extern const u8 clamsidesnap0003_Char[];
extern const u8 clamsidesnap0005_Char[];
extern const u8 clamsidesnap0007_Char[];

extern const u8 clamsnapup0001_Char[];
extern const u8 clamsnapup0003_Char[];
extern const u8 clamsnapup0005_Char[];

//---------------------------------------------------------------------------------------------------

// Misc. sprites.

extern const u8 patrick0001_Char[];
extern const u8 platform0001_Char[];

//---------------------------------------------------------------------------------------------------

#endif

//***************************************************************************************************




























