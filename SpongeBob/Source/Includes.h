//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		All Game Includes (Header).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _INCLUDES_H
#define _INCLUDES_H

#include <Agb.h>
#include <stdio.h>

#include "Main.h"
#include "Game.h"

// compilier triggers
#define MUSIC_ON
#define BEANER

//sound
#include "../Sound/out/m4aLib.h"

#define SBP_CHAP1LEV1		(0)
#define SBP_CHAP1LEV2		(1)
#define SBP_CHAP1LEV3		(2)
#define SBP_CHAP1BOSS		(3)

#define SBP_WALKSFX		(4)
#define SBP_JUMPSFX		(5)
#define SBP_BUTTSFX		(6)
#define SBP_JELLYLAUNCHSFX	(7)
#define SBP_KARATESWISHSFX	(8)
#define SBP_KARATEHITSFX	(9)
#define SBP_NETSWISHSFX		(10)

extern SoundArea sound;
extern MusicPlayerArea music;
extern MusicPlayerArea phrase;
extern MusicPlayerTrack track[8];
extern int maxchn;
extern SongHeader *demosong[43];

#define SoundInit(P1)   SoundDriverInit(P1)
#define SoundMode(P1)   SoundDriverMode(P1)
#define SoundMain()     SoundDriverMain()
#define SoundVSync()    SoundDriverVSync()
#define SoundClearAll() SoundChannelClear()
#define MidiKey2fr(P1,P2,P3)    MidiKey2Freq(P1,P2,P3)

#define MPlayOpen(P1,P2,P3)     MusicPlayerOpen(P1,P2,P3)
#define MPlayStart(P1,P2)       MusicPlayerStart(P1,P2)
#define MPlayStop(P1)           MusicPlayerStop(P1)
#define MPlayContinue(P1)       MusicPlayerContinue(P1)
#define MPlayFadeOut(P1,P2)     MusicPlayerFadeOut(P1,P2)

//LANGUAGE VERSIONS

// note only uncomment one of these or it will be fucked...
#define ENGLISH
#define AMERICAN
//#define GERMAN
//#define FRENCH
//#define SPANISH							 

#endif

//***************************************************************************************************