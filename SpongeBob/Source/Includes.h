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

#include "Sound/m4aLib.h"

#define MUSIC_ON


#define SBP_CHAP1LEV2      (0)

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

// note only uncomment one of these or it will be fucked...
#define ENGLISH
//#define AMERICAN
//#define GERMAN
//#define FRENCH
//#define SPANISH							 

#endif

//***************************************************************************************************