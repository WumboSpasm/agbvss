//------------------------------------------------------------//
//             mks4agbLib.h ( m4aLib.h ) ver1.01              //
//                                                            //
//          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.         //
//------------------------------------------------------------//

#ifndef _M4A_LIB_H
#define _M4A_LIB_H

#define _M4A_LIB_VER 101

#include <AgbSound.h>


//ＣＧＢ仮想チャンネルの構造
typedef struct {
    u8 ch1[64];
    u8 ch2[64];
    u8 ch3[64];
    u8 ch4[64];
} CgbChannels;

//ミュージックプレイヤー・テーブルの構造
typedef struct {
    MusicPlayerArea *ma;
    MusicPlayerTrack *ta;
    u32 tn;
} MPlayTable;

//ソング・テーブルの構造
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

extern const MPlayTable mplay_table[];
extern const SongTable song_table[];


extern void m4aSoundInit(void);

#define m4aSoundMode(P1) SoundMode(P1)
extern void SoundMode(u32 mode);

extern void m4aSoundMain(void);

#define m4aSoundVSync() SoundVSync()
extern void SoundVSync(void);

#define m4aSoundVSyncOff() SoundVSyncOff()
extern void SoundVSyncOff(void);

#define m4aSoundVSyncOn() SoundVSyncOn()
extern void SoundVSyncOn(void);

#define m4aMPlayStart(P1,P2) MPlayStart_rev01(P1,P2)
extern void MPlayStart_rev01(MusicPlayerArea *ma, SongHeader *so);

extern void m4aSongNumStart(u16 n);

extern void m4aSongNumStartOrChange(u16 n);

extern void m4aSongNumStartOrContinue(u16 n);

#define m4aMPlayStop(P1) MPlayStop_rev01(P1)
extern void MPlayStop_rev01(MusicPlayerArea *ma);

extern void m4aSongNumStop(u16 n);

extern void m4aMPlayAllStop(void);

#define m4aMPlayContinue(P1) MPlayContinue(P1)
extern void MPlayContinue(MusicPlayerArea *ma);

extern void m4aSongNumContinue(u16 n);

extern void MPlayAllContinue(void);

#define m4aMPlayFadeOut(P1,P2) MPlayFadeOut(P1,P2)
extern void MPlayFadeOut(MusicPlayerArea *ma, u16 sp);

#define m4aMPlayTempoControl(P1,P2) MPlayTempoControl(P1,P2)
extern void MPlayTempoControl(MusicPlayerArea *ma, u16 te);

#define m4aMPlayVolumeControl(P1,P2,P3) MPlayVolumeControl(P1,P2,P3)
extern void MPlayVolumeControl(MusicPlayerArea *ma, u16 tb, u16 vo);

#define m4aMPlayPitchControl(P1,P2,P3) MPlayPitchControl(P1,P2,P3)
extern void MPlayPitchControl(MusicPlayerArea *ma, u16 tb, s16 pi);

#define m4aMPlayPampotControl(P1,P2,P3) MPlayPampotControl(P1,P2,P3)
extern void MPlayPampotControl(MusicPlayerArea *ma, u16 tb, s8 pa);

#define m4aMPlayModDepthSet(P1,P2,P3) MPlayModDepthSet(P1,P2,P3)
extern void MPlayModDepthSet(MusicPlayerArea *ma, u16 tb, u8 md);

#define m4aMPlayLFOSpeedSet(P1,P2,P3) MPlayLFOSpeedSet(P1,P2,P3)
extern void MPlayLFOSpeedSet(MusicPlayerArea *ma, u16 tb, u8 ls);


#endif // _M4A_LIB_H

// MusicPlayers
extern MusicPlayerArea m4a_mplay000;
extern MusicPlayerArea m4a_mplay001;
extern MusicPlayerArea m4a_mplay002;

// Song files
extern SongHeader mm_1game;
extern SongHeader mm_gover;
extern SongHeader my_hipkr;
extern SongHeader my_hipha;
extern SongHeader my_stpn1;
extern SongHeader my_jmph1;
extern SongHeader my_jmpy1;
extern SongHeader my_jmpfm;
extern SongHeader my_dwnau;
extern SongHeader mov_arra;
extern SongHeader mtp_stat;
extern SongHeader my_stph1;
extern SongHeader my_tont1;
extern SongHeader my_tont2;
extern SongHeader my_upup;
extern SongHeader my_jmpst;
extern SongHeader my_pakon;
extern SongHeader my_dmgn1;
extern SongHeader my_dmgn2;
extern SongHeader me_onpp2;
extern SongHeader me_onpp1;
extern SongHeader me_derup;
extern SongHeader me_torup;
extern SongHeader mm_title;
extern SongHeader mh_kaitn;
extern SongHeader mki_sid1;
extern SongHeader mki_sid2;
extern SongHeader m5t_dsin;
extern SongHeader me_onpp3;
extern SongHeader mtg_raka;
extern SongHeader mkm_ukuu;
extern SongHeader mc_gaonn;
extern SongHeader mht_apir;
extern SongHeader mht_ware;
extern SongHeader mht_atar;
