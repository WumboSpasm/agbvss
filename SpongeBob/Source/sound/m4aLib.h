//------------------------------------------------------------//
//             mks4agbLib.h ( m4aLib.h ) ver1.05              //
//                                                            //
//          Copyright (C) 1999-2001 NINTENDO Co.,Ltd.         //
//------------------------------------------------------------//

#ifndef _M4A_LIB_H
#define _M4A_LIB_H

#define _M4A_LIB_VER 105

#include <AgbSound.h>


//Structure of CGB Virtual Channel
typedef struct {
    u8 ch1[64];
    u8 ch2[64];
    u8 ch3[64];
    u8 ch4[64];
} CgbChannels;

//Structure of Music Player Table
typedef struct {
    MusicPlayerArea *ma;
    MusicPlayerTrack *ta;
    u32 tn;
} MPlayTable;

//Structure of Song Table
typedef struct {
    SongHeader *so;
    u16 ms, me;
} SongTable;


#define CGB1_P12 ((WaveData *)0)
#define CGB1_P25 ((WaveData *)1)
#define CGB1_P50 ((WaveData *)2)
#define CGB1_P75 ((WaveData *)3)
#define CGB2_P12 CGB1_P12
#define CGB2_P25 CGB1_P25
#define CGB2_P50 CGB1_P50
#define CGB2_P75 CGB1_P75
#define CGB4_C15 ((WaveData *)0)
#define CGB4_C07 ((WaveData *)1)


extern const u8 __sound_mode_i[];
#define sound_mode_i ((u32)__sound_mode_i)
extern const u8 __total_mplay_n[];
#define total_mplay_n ((u16)__total_mplay_n)
extern const u8 __total_song_n[];
#define total_song_n ((u16)__total_song_n)

extern SoundArea m4a_sound;
extern const MPlayTable mplay_table[];
extern const SongTable song_table[];
extern u8 m4a_memacc_area[];


extern void m4aSoundInit(void);

#define m4aSoundMode(P1) SoundMode_rev01(P1)
extern void SoundMode_rev01(u32 mode);

extern void m4aSoundMain(void);

#define m4aSoundVSync() SoundVSync_rev01()
extern void SoundVSync_rev01(void);

#define m4aSoundVSyncOff() SoundVSyncOff_rev01()
extern void SoundVSyncOff_rev01(void);

#define m4aSoundVSyncOn() SoundVSyncOn_rev01()
extern void SoundVSyncOn_rev01(void);

#define m4aMPlayStart(P1,P2) MPlayStart_rev01(P1,P2)
extern void MPlayStart_rev01(MusicPlayerArea *ma, SongHeader *so);

extern void m4aSongNumStart(u16 n);

extern void m4aSongNumStartOrChange(u16 n);

extern void m4aSongNumStartOrContinue(u16 n);

extern void m4aMPlayImmInit(MusicPlayerArea *ma);

#define m4aMPlayStop(P1) MPlayStop_rev01(P1)
extern void MPlayStop_rev01(MusicPlayerArea *ma);

extern void m4aSongNumStop(u16 n);

extern void m4aMPlayAllStop(void);

extern void m4aMPlayContinue(MusicPlayerArea *ma);

extern void m4aSongNumContinue(u16 n);

extern void m4aMPlayAllContinue(void);

extern void m4aMPlayFadeOut(MusicPlayerArea *ma, u16 sp);

#define m4aMPlayTempoControl(P1,P2) MPlayTempoControl(P1,P2)
extern void MPlayTempoControl(MusicPlayerArea *ma, u16 te);

#define m4aMPlayVolumeControl(P1,P2,P3) MPlayVolumeControl(P1,P2,P3)
extern void MPlayVolumeControl(MusicPlayerArea *ma, u16 tb, u16 vo);

#define m4aMPlayPitchControl(P1,P2,P3) MPlayPitchControl(P1,P2,P3)
extern void MPlayPitchControl(MusicPlayerArea *ma, u16 tb, s16 pi);

#define m4aMPlayPampotControl(P1,P2,P3) MPlayPanpotControl(P1,P2,P3)
#define m4aMPlayPanpotControl(P1,P2,P3) MPlayPanpotControl(P1,P2,P3)
extern void MPlayPanpotControl(MusicPlayerArea *ma, u16 tb, s8 pa);

#define m4aMPlayModDepthSet(P1,P2,P3) MPlayModDepthSet(P1,P2,P3)
extern void MPlayModDepthSet(MusicPlayerArea *ma, u16 tb, u8 md);

#define m4aMPlayLFOSpeedSet(P1,P2,P3) MPlayLFOSpeedSet(P1,P2,P3)
extern void MPlayLFOSpeedSet(MusicPlayerArea *ma, u16 tb, u8 ls);


#endif // _M4A_LIB_H

// MusicPlayers
extern MusicPlayerArea m4a_mplay000;

// Song files
extern SongHeader chp1lvl2;
