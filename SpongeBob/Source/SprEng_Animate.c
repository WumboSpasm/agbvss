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

// SpongeBob animation sequences.
u8 const *SB_Stand_Anim[]={&Stand_Char[0],(char*)((int)HOLD),};
u8 const *SB_StandJump_Anim[]={&StandJump1_Char[0],&StandJump2_Char[0],&StandJump3_Char[0],(char*)((int)HOLD),};
u8 const *SB_StandJumpLand_Anim[]={&StandJump3_Char[0],&StandJump2_Char[0],&StandJump1_Char[0],(char*)((int)HOLD),};
u8 const *SB_Walk_Anim[]={&Walk1_Char[0],&Walk2_Char[0],&Walk3_Char[0],&Walk4_Char[0],&Walk5_Char[0],&Walk6_Char[0],&Walk7_Char[0],&Walk8_Char[0],&Walk9_Char[0],(char*)((int)LOOP),};
u8 const *SB_Run_Anim[]={&Run1_Char[0],&Run2_Char[0],&Run3_Char[0],&Run4_Char[0],&Run5_Char[0],&Run6_Char[0],&Run7_Char[0],&Run8_Char[0],&Run9_Char[0],&Run10_Char[0],&Run11_Char[0],&Run12_Char[0],&Run13_Char[0],&Run14_Char[0],&Run15_Char[0],&Run16_Char[0],(char*)((int)LOOP),};
u8 const *SB_RunTurn_Anim[]={&RunTurn1_Char[0],&RunTurn2_Char[0],&RunTurn3_Char[0],&RunTurn4_Char[0],&RunTurn5_Char[0],&RunTurn6_Char[0],&RunTurn7_Char[0],&RunTurn8_Char[0],&RunTurn9_Char[0],(char*)((int)HOLD),};
u8 const *SB_RunJump_Anim[]={&RunJump1_Char[0],&RunJump2_Char[0],&RunJump3_Char[0],(char*)((int)HOLD),};
u8 const *SB_RunJumpLand_Anim[]={&RunJump1_Char[0],&RunJump2_Char[0],&RunJump3_Char[0],(char*)((int)HOLD),};
u8 const *SB_JumpTop_Anim[]={&JumpTop_Char[0],(char*)((int)HOLD),};
u8 const *SB_ButtBounce_Anim[]={&ButtBounce1_Char[0],&ButtBounce2_Char[0],&ButtBounce3_Char[0],&ButtBounce4_Char[0],&ButtBounce5_Char[0],(char*)((int)HOLD),};
u8 const *SB_Karate_Anim[]={&Karate1_Char[0],&Karate2_Char[0],&Karate3_Char[0],&Karate4_Char[0],&Karate3_Char[0],&Karate2_Char[0],&Karate1_Char[0],(char*)((int)HOLD),};

// Misc. animations sequences.
u8 const *Misc_Anim[]={&Patrick64_Char[0],(char*)((int)HOLD),};

//---------------------------------------------------------------------------------------------------

// Animation sequence list.

u8 const **Anim_List[]=
{
	&SB_Stand_Anim[0],					// 000 - Animation sequence number etc...
	&SB_StandJump_Anim[0],			   	// 001.
	&SB_StandJumpLand_Anim[0],		   	// 002.
	&SB_Walk_Anim[0],	   			   	// 003.
	&SB_Run_Anim[0],	   			   	// 004.
	&SB_RunTurn_Anim[0],   			   	// 005.
	&SB_RunJump_Anim[0],   			   	// 006.
	&SB_RunJumpLand_Anim[0],		   	// 007.
	&SB_JumpTop_Anim[0],   			   	// 008.
	&SB_ButtBounce_Anim[0],			   	// 009.
	&SB_Karate_Anim[0],	   			   	// 010.

	&Misc_Anim[0],					   	// 011.
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
	// Update anim. frame here for current sprite.
	DmaCopy(3,Anim_List[pAO->sp_aninum][pAO->sp_aniframe],OBJ_MODE0_VRAM+(64*64*(gOAMOffset>>4)),pAO->sp_xsize*pAO->sp_ysize,16); // Copy sprite character data.

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
