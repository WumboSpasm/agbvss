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

#define SBP_CHAP_1_LEVEL_1	(0)
#define SBP_CHAP_1_LEVEL_3	(1)
#define SBP_CHAP_1_LEVEL_4	(2)
#define SBP_CHAP_1_BOSS   	(3)
#define SBP_CHAP_2_LEVEL_1	(4)
#define SBP_CHAP_2_LEVEL_2	(5)
#define SBP_CHAP_2_LEVEL_4 	(6)
#define SBP_CHAP_2_BOSS         (7)
#define SBP_CHAP_3_LEVEL_1      (8)
#define SBP_CHAP_3_LEVEL_2      (9)
#define SBP_CHAP_3_LEVEL_4      (10)
#define SBP_CHAP_3_BOSS_1       (11)
#define SBP_CHAP_3_BOSS_2       (12)
#define SBP_CHAP_4_LEVEL_1      (13)
#define SBP_CHAP_4_LEVEL_2      (14)
#define SBP_CHAP_4_LEVEL_3      (15)
#define SBP_CHAP_4_BOSS         (16)
#define SBP_CHAP_5_LEVEL_1      (17)
#define SBP_CHAP_5_LEVEL_2      (18)
#define SBP_CHAP_5_LEVEL_4      (19)
#define SBP_CHAP_5_BOSS         (20)
#define SBP_CHAP_6_LEVEL_BT     (21)
#define SBP_CHAP_6_LEVEL_G      (22)
#define SBP_CHAP_6_LEVEL_RS     (23)
#define SBP_CHAP_6_LEVEL_TOP    (24)
#define SBP_GAMEOVER            (25)
#define SBP_OPTIONS             (26)
#define SBP_TITLEMUSIC          (27)

#define SBP_SFX1		(28)
#define SBP_SFX2                (29)
#define SBP_SFX3                (30)
#define SBP_SFX4                (31)
#define SBP_SFX5                (32)
#define SBP_SFX6                (33)
#define SBP_SFX7                (34)
#define SBP_SFX8                (35)
#define SBP_SFX9                (36)
#define SBP_SFXA                (37)
#define SBP_SFXB                (38)
#define SBP_SFXC                (39)
#define SBP_SFXD                (40)
#define SBP_SFXE                (41)
#define SBP_SFXF                (42)
#define SBP_SFXG                (43)


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