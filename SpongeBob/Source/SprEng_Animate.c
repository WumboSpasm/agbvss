//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Animate (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "Scroll_Engine.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "SprEng_Animate.h"
#include "SprEng_Display.h"
#include "SineCos.h"

//---------------------------------------------------------------------------------------------------

// Animation sequence tables.

//--

// SpongeBob animation sequences.

u8 const *SB_ButtBounceEnd_Anim[]=
{
	&buttbounceend0001_Char_RL[0],
	&buttbounceend0003_Char_RL[0],
	&buttbounceend0005_Char_RL[0],
	&buttbounceend0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_ButtBounceStart_Anim[]=
{
	&buttbouncestart0001_Char_RL[0],
	&buttbouncestart0003_Char_RL[0],
	&buttbouncestart0005_Char_RL[0],
	&buttbouncestart0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_DeathBackwards_Anim[]=
{
	&deathbackwards0001_Char_RL[0],
	&deathbackwards0003_Char_RL[0],
	&deathbackwards0005_Char_RL[0],
	&deathbackwards0007_Char_RL[0],
	&deathbackwards0009_Char_RL[0],
	&deathbackwards0011_Char_RL[0],
	&deathbackwards0013_Char_RL[0],
	&deathbackwards0015_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_DeathDry_Anim[]=
{
	&deathdry0001_Char_RL[0],
	&deathdry0003_Char_RL[0],
	&deathdry0005_Char_RL[0],
	&deathdry0007_Char_RL[0],
	&deathdry0009_Char_RL[0],
	&deathdry0011_Char_RL[0],
	&deathdry0013_Char_RL[0],
	&deathdry0015_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_DeathForwards_Anim[]=
{
	&deathforwards0001_Char_RL[0],
	&deathforwards0003_Char_RL[0],
	&deathforwards0005_Char_RL[0],
	&deathforwards0007_Char_RL[0],
	&deathforwards0009_Char_RL[0],
	&deathforwards0011_Char_RL[0],
	&deathforwards0013_Char_RL[0],
	&deathforwards0015_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_DeathSpin_Anim[]=
{
	&deathspin0001_Char_RL[0],
	&deathspin0003_Char_RL[0],
	&deathspin0005_Char_RL[0],
	&deathspin0007_Char_RL[0],
	&deathspin0009_Char_RL[0],
	&deathspin0011_Char_RL[0],
	&deathspin0013_Char_RL[0],
	&deathspin0015_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_DeathSquash_Anim[]=
{
	&deathsquash0001_Char_RL[0],
	&deathsquash0003_Char_RL[0],
	&deathsquash0005_Char_RL[0],
	&deathsquash0007_Char_RL[0],
	&deathsquash0009_Char_RL[0],
	&deathsquash0011_Char_RL[0],
	&deathsquash0013_Char_RL[0],
	&deathsquash0015_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_DeathTar_Anim[]=
{
	&deathtar0001_Char_RL[0],
	&deathtar0003_Char_RL[0],
	&deathtar0005_Char_RL[0],
	&deathtar0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_DeathTarStart_Anim[]=
{
	&deathtarstart0001_Char_RL[0],
	&deathtarstart0003_Char_RL[0],
	&deathtarstart0005_Char_RL[0],
	&deathtarstart0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_ElectricShock_Anim[]=
{
	&electricshock0001_Char_RL[0],
	&electricshock0003_Char_RL[0],
	&electricshock0005_Char_RL[0],
	&electricshock0007_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_ElectricShockEnd_Anim[]=
{
	&electricshockend0000_Char_RL[0],
	&electricshockend0001_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_ElectricShockStart_Anim[]=
{
	&electricshockstart0000_Char_RL[0],
	&electricshockstart0001_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_FaceBack_Anim[]=
{
	&faceback0001_Char_RL[0],
	&faceback0003_Char_RL[0],
	&faceback0005_Char_RL[0],
	&faceback0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_FaceFront_Anim[]=
{
	&facefront0000_Char_RL[0],
	&facefront0001_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_Fall_Anim[]=
{
	&fall0001_Char_RL[0],
	&fall0003_Char_RL[0],
	&fall0005_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_FireEnd_Anim[]=
{
	&fireend0000_Char_RL[0],
	&fireend0001_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_FireStart_Anim[]=
{
	&firestart0000_Char_RL[0],
	&firestart0001_Char_RL[0],
	&firestart0002_Char_RL[0],
	&firestart0003_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_GetUp_Anim[]=
{
	&getup0001_Char_RL[0],
	&getup0003_Char_RL[0],
	&getup0005_Char_RL[0],
	&getup0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_GetUpRun_Anim[]=
{
	&getuprun0001_Char_RL[0],
	&getuprun0003_Char_RL[0],
	&getuprun0005_Char_RL[0],
	&getuprun0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_HitGround_Anim[]=
{
	&hitground0001_Char_RL[0],
	&hitground0003_Char_RL[0],
	&hitground0005_Char_RL[0],
	&hitground0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_Hover_Anim[]=
{
	&hover0001_Char_RL[0],
	&hover0003_Char_RL[0],
	&hover0005_Char_RL[0],
	&hover0007_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_HoverEnd_Anim[]=
{
	&hoverend0000_Char_RL[0],
	&hoverend0001_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_HoverStart_Anim[]=
{
	&hoverstart0000_Char_RL[0],
	&hoverstart0001_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_IdleBounceHead_Anim[]=
{
	&idlebounceheadstart0001_Char_RL[0],
	&idlebounceheadstart0003_Char_RL[0],
	&idlebounceheadstart0005_Char_RL[0],
	&idlebounceheadstart0007_Char_RL[0],

	&idlebouncehead0001_Char_RL[0],
	&idlebouncehead0003_Char_RL[0],
	&idlebouncehead0005_Char_RL[0],
	&idlebouncehead0007_Char_RL[0],
	&idlebouncehead0009_Char_RL[0],
	&idlebouncehead0011_Char_RL[0],
	&idlebouncehead0013_Char_RL[0],
	&idlebouncehead0015_Char_RL[0],

	&idlebounceheadend0001_Char_RL[0],
	&idlebounceheadend0003_Char_RL[0],
	&idlebounceheadend0005_Char_RL[0],
	&idlebounceheadend0007_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_IdleBounceHeadEnd_Anim[]=
{
	&idlebounceheadend0001_Char_RL[0],
	&idlebounceheadend0003_Char_RL[0],
	&idlebounceheadend0005_Char_RL[0],
	&idlebounceheadend0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_IdleBounceHeadStart_Anim[]=
{
	&idlebounceheadstart0001_Char_RL[0],
	&idlebounceheadstart0003_Char_RL[0],
	&idlebounceheadstart0005_Char_RL[0],
	&idlebounceheadstart0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_IdleBreathe_Anim[]=
{
	&idlebreathe0000_Char_RL[0],
	&idlebreathe0001_Char_RL[0],
	&idlebreathe0002_Char_RL[0],
	&idlebreathe0003_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_IdleFaces_Anim[]=
{
	&idlefacesstart0000_Char_RL[0],
	&idlefacesstart0001_Char_RL[0],

	&idlefaces0001_Char_RL[0],
	&idlefaces0003_Char_RL[0],
	&idlefaces0005_Char_RL[0],
	&idlefaces0007_Char_RL[0],

	&idlefacesend0001_Char_RL[0],
	&idlefacesend0003_Char_RL[0],
	&idlefacesend0005_Char_RL[0],
	&idlefacesend0007_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_IdleFacesEnd_Anim[]=
{
	&idlefacesend0001_Char_RL[0],
	&idlefacesend0003_Char_RL[0],
	&idlefacesend0005_Char_RL[0],
	&idlefacesend0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_IdleFacesStart_Anim[]=
{
	&idlefacesstart0000_Char_RL[0],
	&idlefacesstart0001_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_IdleHoola_Anim[]=
{
	&idlehoola0001_Char_RL[0],
	&idlehoola0003_Char_RL[0],
	&idlehoola0005_Char_RL[0],
	&idlehoola0007_Char_RL[0],
	&idlehoola0009_Char_RL[0],
	&idlehoola0011_Char_RL[0],
	&idlehoola0013_Char_RL[0],
	&idlehoola0015_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_IdleKarate_Anim[]=
{
	&idlekarate0001_Char_RL[0],
	&idlekarate0003_Char_RL[0],
	&idlekarate0005_Char_RL[0],
	&idlekarate0007_Char_RL[0],
	&idlekarate0009_Char_RL[0],
	&idlekarate0011_Char_RL[0],
	&idlekarate0013_Char_RL[0],
	&idlekarate0015_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_IdleSleep_Anim[]=
{
	&idlesleepstart0001_Char_RL[0],
	&idlesleepstart0003_Char_RL[0],

	&idlesleep0001_Char_RL[0],
	&idlesleep0003_Char_RL[0],
	&idlesleep0005_Char_RL[0],
	&idlesleep0007_Char_RL[0],

	&idlesleepend0001_Char_RL[0],
	&idlesleepend0003_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_IdleSleepEnd_Anim[]=
{
	&idlesleepend0001_Char_RL[0],
	&idlesleepend0003_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_IdleSleepStart_Anim[]=
{
	&idlesleepstart0001_Char_RL[0],
	&idlesleepstart0003_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_IdleSplitPants_Anim[]=
{
	&idlesplitpants0001_Char_RL[0],
	&idlesplitpants0003_Char_RL[0],
	&idlesplitpants0005_Char_RL[0],
	&idlesplitpants0007_Char_RL[0],
	&idlesplitpants0009_Char_RL[0],
	&idlesplitpants0011_Char_RL[0],
	&idlesplitpants0013_Char_RL[0],
	&idlesplitpants0015_Char_RL[0],
	&idlesplitpants0017_Char_RL[0],
	&idlesplitpants0019_Char_RL[0],
	&idlesplitpants0021_Char_RL[0],
	&idlesplitpants0023_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_IdleWeapon_Anim[]=
{
	&idleweapon0001_Char_RL[0],
	&idleweapon0003_Char_RL[0],
	&idleweapon0005_Char_RL[0],
	&idleweapon0007_Char_RL[0],
	&idleweapon0009_Char_RL[0],
	&idleweapon0011_Char_RL[0],
	&idleweapon0013_Char_RL[0],
	&idleweapon0015_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_IdleWiggleArms_Anim[]=
{
	&idlewigglearms0001_Char_RL[0],
	&idlewigglearms0003_Char_RL[0],
	&idlewigglearms0005_Char_RL[0],
	&idlewigglearms0007_Char_RL[0],
	&idlewigglearms0009_Char_RL[0],
	&idlewigglearms0011_Char_RL[0],
	&idlewigglearms0013_Char_RL[0],
	&idlewigglearms0015_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_IdleWind_Anim[]=
{
	&idlewind0001_Char_RL[0],
	&idlewind0003_Char_RL[0],
	&idlewind0005_Char_RL[0],
	&idlewind0007_Char_RL[0],
	&idlewind0009_Char_RL[0],
	&idlewind0011_Char_RL[0],
	&idlewind0013_Char_RL[0],
	&idlewind0015_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_JumpEnd_Anim[]=
{
	&jumpend0001_Char_RL[0],
	&jumpend0003_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_Karate_Anim[]=
{
	&karate0001_Char_RL[0],
	&karate0003_Char_RL[0],
	&karate0005_Char_RL[0],
	&karate0007_Char_RL[0],
	&karate0009_Char_RL[0],
	&karate0011_Char_RL[0],
	&karate0013_Char_RL[0],
	&karate0015_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_NetFireLob_Anim[]=
{
	&netfirelob0001_Char_RL[0],
	&netfirelob0003_Char_RL[0],
	&netfirelob0005_Char_RL[0],
	&netfirelob0007_Char_RL[0],
	&netfirelob0009_Char_RL[0],
	&netfirelob0011_Char_RL[0],
	&netfirelob0013_Char_RL[0],
	&netfirelob0015_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_NetSwipe_Anim[]=
{
	&netswipe0001_Char_RL[0],
	&netswipe0003_Char_RL[0],
	&netswipe0005_Char_RL[0],
	&netswipe0007_Char_RL[0],
	&netswipe0009_Char_RL[0],
	&netswipe0011_Char_RL[0],
	&netswipe0013_Char_RL[0],
	&netswipe0015_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_Run_Anim[]=
{
	&run0000_Char_RL[0],
	&run0001_Char_RL[0],
	&run0002_Char_RL[0],
	&run0003_Char_RL[0],
	&run0004_Char_RL[0],
	&run0005_Char_RL[0],
	&run0006_Char_RL[0],
	&run0007_Char_RL[0],
	&run0008_Char_RL[0],
	&run0009_Char_RL[0],
	&run0010_Char_RL[0],
	&run0011_Char_RL[0],
	&run0012_Char_RL[0],
	&run0013_Char_RL[0],
	&run0014_Char_RL[0],
	&run0015_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_SoakUp_Anim[]=
{
	&soakup0001_Char_RL[0],
	&soakup0003_Char_RL[0],
	&soakup0005_Char_RL[0],
	&soakup0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_TeeterFront_Anim[]=
{
	&teeterfront0001_Char_RL[0],
	&teeterfront0003_Char_RL[0],
	&teeterfront0005_Char_RL[0],
	&teeterfront0007_Char_RL[0],
	&teeterfront0009_Char_RL[0],
	&teeterfront0011_Char_RL[0],
	&teeterfront0013_Char_RL[0],
	&teeterfront0015_Char_RL[0],
	(char*)((int)LOOP),
};

u8 const *SB_WalkForward_Anim[]=
{
	&walkforward0001_Char_RL[0],
	&walkforward0003_Char_RL[0],
	&walkforward0005_Char_RL[0],
	&walkforward0007_Char_RL[0],
	&walkforward0009_Char_RL[0],
	&walkforward0011_Char_RL[0],
	&walkforward0013_Char_RL[0],
	&walkforward0015_Char_RL[0],
	(char*)((int)LOOP),
};

//-- My extra animations...

u8 const *SB_Stand_Anim[]=
{
	&walkforward0003_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_Jump_Anim[]=
{
	&karate0007_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_JumpFall_Anim[]=
{
	&idlefacesstart0001_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_LookUp_Anim[]=
{
	&deathsquash0001_Char_RL[0],
	&deathsquash0003_Char_RL[0],
	&deathsquash0005_Char_RL[0],
	(char*)((int)HOLD),
};

u8 const *SB_LookDown_Anim[]=
{
	&soakup0001_Char_RL[0],
	&soakup0003_Char_RL[0],
	&soakup0005_Char_RL[0],
	&soakup0007_Char_RL[0],
	(char*)((int)HOLD),
};

//--

// NPC animation sequences.

u8 const *Patrick_Temp_Anim[]=
{
	&patrick0001_Char[0],
	(char*)((int)HOLD),
};

//--

// Platform animation sequences.

u8 const *Platform1_Temp_Anim[]=
{
	&platform0001_Char[0],
	(char*)((int)HOLD),
};

//--

// Monster animation sequences.

u8 const *Clam_Wait_Anim[]=
{
	&clamsidesnap0007_Char[0],	// Wait (closed).
	(char*)((int)HOLD),
};

u8 const *Clam_SidesSnap_Anim[]=
{
	&clamsidesnap0007_Char[0],	// Open.
	&clamsidesnap0007_Char[0],
	&clamsidesnap0007_Char[0],
	&clamsidesnap0007_Char[0],
	&clamsidesnap0007_Char[0],
	&clamsidesnap0005_Char[0],
	&clamsidesnap0005_Char[0],
	&clamsidesnap0005_Char[0],
	&clamsidesnap0005_Char[0],
	&clamsidesnap0005_Char[0],
	&clamsidesnap0003_Char[0],
	&clamsidesnap0003_Char[0],
	&clamsidesnap0003_Char[0],
	&clamsidesnap0003_Char[0],
	&clamsidesnap0003_Char[0],
	&clamsidesnap0001_Char[0],
	&clamsidesnap0001_Char[0],
	&clamsidesnap0001_Char[0],
	&clamsidesnap0001_Char[0],
	&clamsidesnap0001_Char[0],

	&clamsidesnap0001_Char[0],	// Close.
	&clamsidesnap0003_Char[0],
	&clamsidesnap0005_Char[0],
	&clamsidesnap0007_Char[0],
	(char*)((int)HOLD),
};

u8 const *Clam_SnapUp_Anim[]=
{
	&clamsnapup0005_Char[0],	// Open.
	&clamsnapup0005_Char[0],
	&clamsnapup0005_Char[0],
	&clamsnapup0005_Char[0],
	&clamsnapup0005_Char[0],
	&clamsnapup0003_Char[0],
	&clamsnapup0003_Char[0],
	&clamsnapup0003_Char[0],
	&clamsnapup0003_Char[0],
	&clamsnapup0003_Char[0],
	&clamsnapup0001_Char[0],
	&clamsnapup0001_Char[0],
	&clamsnapup0001_Char[0],
	&clamsnapup0001_Char[0],
	&clamsnapup0001_Char[0], 	 	 	 	 

	&clamsnapup0001_Char[0],	// Close.
	&clamsnapup0003_Char[0],
	&clamsnapup0005_Char[0],
	(char*)((int)HOLD),
};

//---------------------------------------------------------------------------------------------------

// Animation sequence list.

u8 const **Anim_List[]=
{
//-- SpongeBob animation sequences.
	&SB_ButtBounceEnd_Anim[0],			// 000 - Animation sequence number etc...
	&SB_ButtBounceStart_Anim[0],		// 001.
	&SB_DeathBackwards_Anim[0],			// 002.
	&SB_DeathDry_Anim[0],				// 003.
	&SB_DeathForwards_Anim[0],			// 004.
	&SB_DeathSpin_Anim[0],				// 005.
	&SB_DeathSquash_Anim[0],			// 006.
	&SB_DeathTar_Anim[0],				// 007.
	&SB_DeathTarStart_Anim[0],			// 008.
	&SB_ElectricShock_Anim[0],			// 009.
	&SB_ElectricShockEnd_Anim[0],		// 010.
	&SB_ElectricShockStart_Anim[0],		// 011.
	&SB_FaceBack_Anim[0],				// 012.
	&SB_FaceFront_Anim[0],				// 013.
	&SB_Fall_Anim[0],					// 014.
	&SB_FireEnd_Anim[0],				// 015.
	&SB_FireStart_Anim[0],				// 016.
	&SB_GetUp_Anim[0],					// 017.
	&SB_GetUpRun_Anim[0],				// 018.
	&SB_HitGround_Anim[0],				// 019.
	&SB_Hover_Anim[0],					// 020.
	&SB_HoverEnd_Anim[0],				// 021.
	&SB_HoverStart_Anim[0],				// 022.
	&SB_IdleBounceHead_Anim[0],			// 023.
	&SB_IdleBounceHeadEnd_Anim[0],		// 024.
	&SB_IdleBounceHeadStart_Anim[0],	// 025.
	&SB_IdleBreathe_Anim[0],			// 026.
	&SB_IdleFaces_Anim[0],				// 027.
	&SB_IdleFacesEnd_Anim[0],			// 028.
	&SB_IdleFacesStart_Anim[0],			// 029.
	&SB_IdleHoola_Anim[0],				// 030.
	&SB_IdleKarate_Anim[0],				// 031.
	&SB_IdleSleep_Anim[0],				// 032.
	&SB_IdleSleepEnd_Anim[0],			// 033.
	&SB_IdleSleepStart_Anim[0],			// 034.
	&SB_IdleSplitPants_Anim[0],			// 035.
	&SB_IdleWeapon_Anim[0],				// 036.
	&SB_IdleWiggleArms_Anim[0],			// 037.
	&SB_IdleWind_Anim[0],				// 038.
	&SB_JumpEnd_Anim[0],				// 039.
	&SB_Karate_Anim[0],					// 040.
	&SB_NetFireLob_Anim[0],				// 041.
	&SB_NetSwipe_Anim[0],				// 042.
	&SB_Run_Anim[0],					// 043.
	&SB_SoakUp_Anim[0],					// 044.
	&SB_TeeterFront_Anim[0],			// 045.
	&SB_WalkForward_Anim[0],			// 046.
//-- My extra SpongeBob animation sequences.
	&SB_Stand_Anim[0],					// 047.
	&SB_Jump_Anim[0],					// 048.
	&SB_JumpFall_Anim[0],				// 049.
	&SB_LookUp_Anim[0],					// 050.
	&SB_LookDown_Anim[0],				// 051.
//-- Reserved for future SpongeBob animation sequences.
	&SB_LookDown_Anim[0],				// 052.
	&SB_LookDown_Anim[0],				// 053.
	&SB_LookDown_Anim[0],				// 054.
	&SB_LookDown_Anim[0],				// 055.
	&SB_LookDown_Anim[0],				// 056.
	&SB_LookDown_Anim[0],				// 057.
	&SB_LookDown_Anim[0],				// 058.
	&SB_LookDown_Anim[0],				// 059.
	&SB_LookDown_Anim[0],				// 060.
	&SB_LookDown_Anim[0],				// 061.
	&SB_LookDown_Anim[0],				// 062.
	&SB_LookDown_Anim[0],				// 063.

//-- NPC animation sequences.
	&Patrick_Temp_Anim[0], 			   	// 064.
//-- Reserved for future NPC animation sequences.
	&Patrick_Temp_Anim[0], 			   	// 065.
	&Patrick_Temp_Anim[0], 			   	// 066.
	&Patrick_Temp_Anim[0], 			   	// 067.
	&Patrick_Temp_Anim[0], 			   	// 068.
	&Patrick_Temp_Anim[0], 			   	// 069.
	&Patrick_Temp_Anim[0], 			   	// 070.
	&Patrick_Temp_Anim[0], 			   	// 071.
	&Patrick_Temp_Anim[0], 			   	// 072.
	&Patrick_Temp_Anim[0], 			   	// 073.
	&Patrick_Temp_Anim[0], 			   	// 074.
	&Patrick_Temp_Anim[0], 			   	// 075.
	&Patrick_Temp_Anim[0], 			   	// 076.
	&Patrick_Temp_Anim[0], 			   	// 077.
	&Patrick_Temp_Anim[0], 			   	// 078.
	&Patrick_Temp_Anim[0], 			   	// 079.
	&Patrick_Temp_Anim[0], 			   	// 080.
	&Patrick_Temp_Anim[0], 			   	// 081.
	&Patrick_Temp_Anim[0], 			   	// 082.
	&Patrick_Temp_Anim[0], 			   	// 083.

//-- Platform animation sequences.
	&Platform1_Temp_Anim[0],		   	// 084.
//-- Reserved for future Platform animation sequences.
	&Platform1_Temp_Anim[0],		   	// 085.
	&Platform1_Temp_Anim[0],		   	// 086.
	&Platform1_Temp_Anim[0],		   	// 087.
	&Platform1_Temp_Anim[0],		   	// 088.
	&Platform1_Temp_Anim[0],		   	// 089.
	&Platform1_Temp_Anim[0],		   	// 090.
	&Platform1_Temp_Anim[0],		   	// 091.
	&Platform1_Temp_Anim[0],		   	// 092.
	&Platform1_Temp_Anim[0],		   	// 093.
	&Platform1_Temp_Anim[0],		   	// 094.
	&Platform1_Temp_Anim[0],		   	// 095.
	&Platform1_Temp_Anim[0],		   	// 096.
	&Platform1_Temp_Anim[0],		   	// 097.
	&Platform1_Temp_Anim[0],		   	// 098.
	&Platform1_Temp_Anim[0],		   	// 099.
	&Platform1_Temp_Anim[0],		   	// 100.
	&Platform1_Temp_Anim[0],		   	// 101.
	&Platform1_Temp_Anim[0],		   	// 102.
	&Platform1_Temp_Anim[0],		   	// 103.
	&Platform1_Temp_Anim[0],		   	// 104.
	&Platform1_Temp_Anim[0],		   	// 105.
	&Platform1_Temp_Anim[0],		   	// 106.
	&Platform1_Temp_Anim[0],		   	// 107.

//-- Monster animation sequences.
	&Clam_Wait_Anim[0],					// 108.
	&Clam_SidesSnap_Anim[0],			// 109.
	&Clam_SnapUp_Anim[0],				// 110.
};

//***************************************************************************************************

// Update sprites (animate) - (called from update sprites (display) routine).

// Note: The address pointer to the current sprite being plotted on screen, is passed into this routine.
//		 This way we only animate sprites that are actually on screen and being drawn - cool eh :) 

//		 Variables: u16 sp_aninum;   // Current animation sequence number.
//					u16 sp_aniframe; // Object's sprite frame number.
//					u16 sp_anispeed; // Animation loop repetition speed.
//					u16 sp_anitimer; // Timer for animation frame duration.
//					u16 sp_aniuser;	 // General purpose variable (used to denote HOLD frame in animation sequence).

//		 Functions:	LOOP 0			 // Loop to start of animation sequence.
//					HOLD 1			 // Hold last frame & trigger 'sp_aniuser' variable.

void ObjectAnimate(Object* pAO)
{
    u32* Frame_Hdr;					// Local variable.

    Frame_Hdr=(u32*)Anim_List[pAO->sp_aninum][pAO->sp_aniframe]; // Get current animation frame base address.

	if(Frame_Hdr[0]==0x00040030)	// Check for RLE compression header ? (0x30,0x00,0x04,0x00 in reverse 'big endian' data format).
	{
		// Update anim. frame here for current sprite - (RLE UNCOMPRESS TO VRAM METHOD).
		RLUnCompVram((void*)Anim_List[pAO->sp_aninum][pAO->sp_aniframe],(void*)OBJ_MODE0_VRAM+(gOAMOffset<<6));
	}
	else
	{
		// Update anim. frame here for current sprite - (DMA COPY RAW DATA TO VRAM METHOD).
		DmaCopy(3,Anim_List[pAO->sp_aninum][pAO->sp_aniframe],OBJ_MODE0_VRAM+(gOAMOffset<<6),pAO->sp_xsize*pAO->sp_ysize,16); // Copy sprite character data (every 4th 64*64 sprite window in vram !!!).
	}

	pAO->sp_anitimer++;			 	// Check for next frame in sequence yet ?.
	if(pAO->sp_anitimer==pAO->sp_anispeed)
	{
		pAO->sp_anitimer=0;		 	// Clear for next frame.
 		pAO->sp_aniframe++;		 	// Next frame in current animation sequence.
	}

	switch((int)Anim_List[pAO->sp_aninum][pAO->sp_aniframe]) // Get animation sequence control funtion.
	{
		case LOOP:
			pAO->sp_aniframe=0;		// Loop to start of animation sequence ?.    			
			break;

		case HOLD:
			pAO->sp_aniframe--;		// Hold last frame & trigger 'sp_aniuser' variable ?.    			
			pAO->sp_aniuser=ON;		// Set 'sp_aniuser' variable.
			break;
	};
}

//***************************************************************************************************
