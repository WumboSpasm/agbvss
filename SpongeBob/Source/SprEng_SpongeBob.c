//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - SpongeBob Sprite Control (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "Scroll_Engine.h"
#include "Contours.h"

//***************************************************************************************************

void SpriteControl01()
{
	Object *pAO;

	pAO=g_pObject;					// Get copy of global object pointer.
		
//--

	pAO->sp_xpos+=(pAO->sp_xvel>>8); // Add velocity into sprite positions.
	pAO->sp_ypos+=(pAO->sp_yvel>>8);

	switch (pAO->sp_mode)			// Get sprite's current mode.
	{

//--

// Butt bounce end.

	case MODE_BUTTBOUNCEEND:		// Sprite in this mode ?.

		break;

//--

// Butt bounce start.

	case MODE_BUTTBOUNCESTART:		// Sprite in this mode ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(pAO->sp_xvel<0) {pAO->sp_xvel+=RUNVEL;} // Reduce the velocities.
		if(pAO->sp_xvel>0) {pAO->sp_xvel-=RUNVEL;}
				 
		if(gKeyInput&L_KEY||gKeyInput&R_KEY) // Left or right direction ?.
		{									 
			if(gKeyInput&L_KEY&&pAO->sp_xpos>0)
			{
				gPushScrollX-=VIEWSPEED; // Add push scroll.
		 		pAO->sp_xvel=-RUNMAXVEL;// Add inertia.
				pAO->sp_flipX=ON;	 // Set sprite h-flip.
			}

			if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels_bg1-pAO->sp_xsize)
			{
				gPushScrollX+=VIEWSPEED; // Add push scroll.
 			 	pAO->sp_xvel=RUNMAXVEL;// Add inertia.
	 			pAO->sp_flipX=OFF;	 // Set sprite h-flip.
			}
  		}
 		else
		{
			pAO->sp_xvel=0;			// Stop sprite now !.
		}

		pAO->sp_yvel+=GRAVITY;		// Add gravity.
		if(pAO->sp_yvel>=MAXGRAVITY) {pAO->sp_yvel=MAXGRAVITY;} // Limit gravity (else we could go right through a ground tile !).

		if(pAO->sp_var4==ON)		// Hit ground contour tile ?.
		{
			pAO->sp_var4=OFF;		// Reset hit ground flag for next time.

  	 		pAO->sp_xvel=0;			// Freeze velocities.
			pAO->sp_yvel=0;

		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=47;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_STAND; // Enter stand mode.
		}

		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

		break;

//--

// Death angel.

	case MODE_DEATHANGEL:			// Sprite in this mode ?.

		break;

//--

// Death backwards.

	case MODE_DEATHBACKWARDS:		// Sprite in this mode ?.

		break;

//--

// Death dry.

	case MODE_DEATHDRY:				// Sprite in this mode ?.

		break;

//--

// Death forwards.

	case MODE_DEATHFORWARDS:		// Sprite in this mode ?.

		break;

//--

// Death spin.

	case MODE_DEATHSPIN:			// Sprite in this mode ?.

		break;

//--

// Death squash.

	case MODE_DEATHSQUASH:			// Sprite in this mode ?.

		break;

//--

// Death tar.

	case MODE_DEATHTAR:				// Sprite in this mode ?.

		break;

//--

// Death tar start.

	case MODE_DEATHTARSTART:		// Sprite in this mode ?.

		break;

//--

// Electric shock.

	case MODE_ELECTRICSHOCK: 		// Sprite in this mode ?.

		break;

//--

// Electric shock end.

	case MODE_ELECTRICSHOCKEND: 	// Sprite in this mode ?.

		break;

//--

// Electric shock start.

	case MODE_ELECTRICSHOCKSTART:	// Sprite in this mode ?.

		break;

//--

// Face back.

	case MODE_FACEBACK:				// Sprite in this mode ?.

		break;

//--

// Face front.

	case MODE_FACEFRONT:			// Sprite in this mode ?.

		break;

//--

// Fall.

	case MODE_FALL:					// Sprite in this mode ?.

		break;

//--

// Fire end.

	case MODE_FIREEND: 				// Sprite in this mode ?.

		break;

//--

// Fire start.

	case MODE_FIRESTART:			// Sprite in this mode ?.

		break;

//--

// Get up.

	case MODE_GETUP:				// Sprite in this mode ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;}  // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(pAO->sp_aniuser==ON)		// Animation sequence completed ?.
		{
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=47;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_STAND; // Enter stand mode.
   		}

		break;

//--

// Get up run.

	case MODE_GETUPRUN:				// Sprite in this mode ?.

		break;

//--

// Get hit ground.

	case MODE_HITGROUND:			// Sprite in this mode ?.

		break;

//--

// Hover.

	case MODE_HOVER:				// Sprite in this mode ?.

		break;

//--

// Hover end.

	case MODE_HOVEREND:				// Sprite in this mode ?.

		break;

//--

// Hover start.

	case MODE_HOVERSTART: 			// Sprite in this mode ?.

		break;

//--

// Generic idle (used for all idle modes).

	case MODE_IDLE:					// Sprite in this mode ?.

		if(gKeyInput&U_KEY||gKeyInput&D_KEY||gKeyInput&L_KEY||gKeyInput&R_KEY||gKeyTap&A_BUTTON||gKeyTap&B_BUTTON) // Any player input ?.
		{	
			gTimer=0;				// Reset game timer.
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=47;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_RUN;	// Enter run mode.

			if(gKeyTap&A_BUTTON)
			{
				gTimer=0;			// Reset game timer.
		 		pAO->sp_aniframe=0;	// Reset animation frame counter.
		 		pAO->sp_aninum=48;	// Set aninmation sequence.
				pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=4;	// Set animation speed.
				pAO->sp_aniuser=OFF;// Reset HOLD anim. sequence variable.
				pAO->sp_mode=MODE_JUMP; // Enter jump mode.
			}

			if(gKeyTap&B_BUTTON)
			{
				gTimer=0;			// Reset game timer.
			 	pAO->sp_aniframe=0;	// Reset animation frame counter.
			 	pAO->sp_aninum=40;	// Set aninmation sequence.
				pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=5;	// Set animation speed.
				pAO->sp_aniuser=OFF;// Reset HOLD anim. sequence variable.
				pAO->sp_mode=MODE_KARATE; // Enter karate mode.
			}
		}

		break;

//--

// Jump end.

	case MODE_JUMPEND:				// Sprite in this mode ?.

		if(pAO->sp_aniuser==ON)		// Animation sequence completed ?.
		{
  	 		pAO->sp_xvel=0;			// Freeze velocities.
			pAO->sp_yvel=0;

		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=47;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_STAND; // Enter stand mode.
		}

		break;

//--

// Karate.

	case MODE_KARATE:				// Sprite in this mode ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

	 	pAO->sp_xvel=0;				// Freeze velocities.
		pAO->sp_yvel=0;

		if(pAO->sp_aniuser==ON)		// HOLD anim sequence ?.
		{
			pAO->sp_mode=MODE_STAND; // Enter stand mode.
		}

		break;

//--

// Net fire lob.

	case MODE_NETFIRELOB:			// Sprite in this mode ?.

		break;

//--

// Net swipe.

	case MODE_NETSWIPE:				// Sprite in this mode ?.

		break;

//--

// Run.

	case MODE_RUN:					// Sprite in this mode ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(gKeyInput&L_KEY&&pAO->sp_xpos>0)
		{
			pAO->sp_flipX=ON;		// Set sprite h-flip.

 			if(pAO->sp_aninum!=43)	// Already doing animation for this mode ?.
			{
			 	pAO->sp_aniframe=0;	// Reset animtaion frame counter.
			 	pAO->sp_aninum=43;	// Set aninmation sequence.
				pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=2;	// Set animation speed.
				pAO->sp_var1=DIR_LEFT; // Flag current direction.
				pAO->sp_aniuser=OFF; // Reset HOLD anim. sequence variable.
			}

			if(pAO->sp_xvel<-RUNVEL){gPushScrollX-=VIEWSPEED;} // Add push scroll.
		 	pAO->sp_xvel-=RUNVEL;	// Add inertia.
		}

		else if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels_bg1-pAO->sp_xsize)
		{
			pAO->sp_flipX=OFF;		// Set sprite h-flip.

			if(pAO->sp_aninum!=43)	// Already doing animation for this mode ?.
			{
			 	pAO->sp_aniframe=0;	// Reset animtaion frame counter.
			 	pAO->sp_aninum=43;	// Set aninmation sequence.
				pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=2;	// Set animation speed.
				pAO->sp_var1=DIR_RIGHT; // Flag current direction.
				pAO->sp_aniuser=OFF; // Reset HOLD anim. sequence variable.
			}
			
			if(pAO->sp_xvel>RUNVEL){gPushScrollX+=VIEWSPEED;} // Add push scroll.
		 	pAO->sp_xvel+=RUNVEL;	// Add inertia.
		}
 
		else
		{
			pAO->sp_mode=MODE_STAND;// Enter stand mode.

			if(pAO->sp_xpos<0||pAO->sp_xpos>map_x_size_pixels_bg1-pAO->sp_xsize) // @ map scroll limits in x ?.
			{
				pAO->sp_xvel=0;		// Stop sprite now !.
			}
	   	}

		if(gKeyTap&A_BUTTON)
		{
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=48;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4-3;	// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_JUMP; // Enter jump mode.
		}

		if(gKeyTap&B_BUTTON)
		{
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=40;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=5;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_KARATE; // Enter karate mode.
		}

		if(pAO->sp_xvel<=-RUNMAXVEL) {pAO->sp_xvel=-RUNMAXVEL;} // Limit the velocities.
		if(pAO->sp_xvel>=RUNMAXVEL) {pAO->sp_xvel=RUNMAXVEL;}
		
		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

		break;

//--

// Soak up.

	case MODE_SOAKUP:				// Sprite in this mode ?.

		break;

//--

// Talk 01.

	case MODE_TALK01: 				// Sprite in this mode ?.

		break;

//--

// Teeter front.

	case MODE_TEETERFRONT:			// Sprite in this mode ?.

		pAO->sp_mode=MODE_IDLE;		// Enter generic idle mode (as we want to use same code here).

		break;

//--

// Walk forward.

	case MODE_WALKFORWARD:			// Sprite in this mode ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(gKeyInput&L_KEY&&pAO->sp_xpos>0)
		{
			if(pAO->sp_var1!=DIR_LEFT) // Already doing animation for this mode ?.
			{
			 	pAO->sp_aniframe=0;	// Reset animtaion frame counter.
			 	pAO->sp_aninum=46;	// Set aninmation sequence.
				pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=4;	// Set animation speed.
				pAO->sp_var1=DIR_LEFT;// Flag current direction.
			}

			if(pAO->sp_xvel<-WALKVEL){gPushScrollX-=VIEWSPEED;} // Add push scroll.
			pAO->sp_xvel-=WALKVEL;	// Add inertia.
			pAO->sp_flipX=ON;		// Set sprite h-flip.
		}

		else if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels_bg1-pAO->sp_xsize)
		{
			if(pAO->sp_var1!=DIR_RIGHT)	// Already doing animation for this mode ?.
			{
			 	pAO->sp_aniframe=0;	// Reset animtaion frame counter.
			 	pAO->sp_aninum=46;	// Set aninmation sequence.
				pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=4;	// Set animation speed.
				pAO->sp_var1=DIR_RIGHT;	// Flag current direction.
			}

			if(pAO->sp_xvel>WALKVEL){gPushScrollX+=VIEWSPEED;} // Add push scroll.
			pAO->sp_xvel+=WALKVEL;	// Add inertia.
	 		pAO->sp_flipX=OFF;		// Set sprite h-flip.
		}
 
		else
		{
			pAO->sp_mode=MODE_STAND;// Enter stand mode.

			if(pAO->sp_xpos<0||pAO->sp_xpos>map_x_size_pixels_bg1-pAO->sp_xsize) // @ map scroll limits in x ?.
			{
				pAO->sp_xvel=0;		// Stop sprite now !.
			}
	   	}

		if(gKeyTap&A_BUTTON)
		{
		 	pAO->sp_aniframe=0;		// Reset animation frame counter.
		 	pAO->sp_aninum=48;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_JUMP; // Enter jump mode.
		}

		if(gKeyTap&B_BUTTON)
		{
		 	pAO->sp_aniframe=0;		// Reset animation frame counter.
		 	pAO->sp_aninum=40;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=5;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_KARATE; // Enter karate mode.
		}

		if(pAO->sp_xvel<=-WALKMAXVEL) {pAO->sp_xvel=-WALKMAXVEL;} // Limit the velocities.
		if(pAO->sp_xvel>=WALKMAXVEL) {pAO->sp_xvel=WALKMAXVEL;}

		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

		break;

//--

// Stand.

	case MODE_STAND:				// Sprite in this mode ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;}  // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

 		if(pAO->sp_xvel<0) {pAO->sp_xvel+=WALKVEL>>1;} // Reduce the velocities.
		if(pAO->sp_xvel>0) {pAO->sp_xvel-=WALKVEL>>1;}

		if(pAO->sp_xvel==0)			// Sprite stopped moving in x ?.
		{
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=47; 		// Set aninmation sequence.
			pAO->sp_var1=DIR_CLR;	// Clear direction variable.
	   	}

		if(gKeyInput&U_KEY||gKeyInput&D_KEY) // Up or down direction ?.
		{	
			if((gTimer&63)==63)		// Trigger look mode delay ?.
			{
				gTimer=0;		 	// Reset game timer.

		 		pAO->sp_xvel=0;	 	// Freeze velocities.
				pAO->sp_yvel=0;

				if(gKeyInput&U_KEY)	// Look up ?.
				{
				 	pAO->sp_aniframe=0;	// Reset animation frame counter.
				 	pAO->sp_aninum=50; 	// Set aninmation sequence.
					pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
					pAO->sp_anispeed=5;	// Set animation speed.
					pAO->sp_aniuser=OFF;// Reset HOLD anim. sequence variable.
					pAO->sp_mode=MODE_LOOKUP; // Enter look up mode.
 				}
				if(gKeyInput&D_KEY)	// Look down ?.
				{
 			 		pAO->sp_aniframe=0;	// Reset animation frame counter.
				 	pAO->sp_aninum=51;	// Set aninmation sequence.
					pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
					pAO->sp_anispeed=7;	// Set animation speed.
					pAO->sp_aniuser=OFF;// Reset HOLD anim. sequence variable.
					pAO->sp_mode=MODE_LOOKDOWN; // Enter look down mode.
				}
			}
		}
												
		if(gKeyInput&L_KEY||gKeyInput&R_KEY) // Enter run mode.
		{
			gTimer=0;				// Reset game timer.
//			pAO->sp_mode=MODE_WALKFORWARD;	// Enter walk mode.
			pAO->sp_mode=MODE_RUN;	// Enter run mode.
		}

		if(gKeyTap&A_BUTTON)
		{
			gTimer=0;				// Reset game timer.
		 	pAO->sp_aniframe=0;		// Reset animation frame counter.
		 	pAO->sp_aninum=48;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=3;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_JUMP; // Enter jump mode.
		}

		if(gKeyTap&B_BUTTON)
		{
			gTimer=0;				// Reset game timer.
		 	pAO->sp_aniframe=0;		// Reset animation frame counter.
		 	pAO->sp_aninum=40;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=5;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_KARATE; // Enter karate mode.
		}

		if((gTimer&512)==512)		// Trigger idle mode ?.
		{
			pAO->sp_xvel=0;		   	// Stop sprite now !.
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.

			IdleSequencer++;  		// Next idle sequence this time.
			if(IdleSequencer>IDLETERM){IdleSequencer=1;}
			pAO->sp_mode=MODE_IDLE; // Enter generic idle mode.

			switch (IdleSequencer)	// Get sprite's current mode.
			{
				// Idle bounce head.
				case 1:				// Set idle sequence required ?.
				 	pAO->sp_aninum=23; 	// Set animation sequence.
					pAO->sp_anispeed=7;	// Set animation speed.
					break;
				// Idle breathe.
				case 2:				// Set idle sequence required ?.
				 	pAO->sp_aninum=26; 	// Set animation sequence.
					pAO->sp_anispeed=7;	// Set animation speed.
 					break;
				// Idle faces.
				case 3:				// Set idle sequence required ?.
				 	pAO->sp_aninum=27; 	// Set animation sequence.
					pAO->sp_anispeed=7;	// Set animation speed.
 					break;
				// Idle hoola.
				case 4:				// Set idle sequence required ?.
				 	pAO->sp_aninum=30; 	// Set animation sequence.
					pAO->sp_anispeed=7;	// Set animation speed.
 					break;
				// Idle karate.
				case 5:				// Set idle sequence required ?.
				 	pAO->sp_aninum=31; 	// Set animation sequence.
					pAO->sp_anispeed=7;	// Set animation speed.
 					break;
				// Idle sleep.
				case 6:				// Set idle sequence required ?.
				 	pAO->sp_aninum=32; 	// Set animation sequence.
					pAO->sp_anispeed=7;	// Set animation speed.
 					break;
				// Idle splitpants.
				case 7:				// Set idle sequence required ?.
				 	pAO->sp_aninum=35; 	// Set animation sequence.
					pAO->sp_anispeed=7;	// Set animation speed.
 					break;
				// Idle weapon.
				case 8:				// Set idle sequence required ?.
				 	pAO->sp_aninum=36; 	// Set animation sequence.
					pAO->sp_anispeed=7;	// Set animation speed.
 					break;
				// Idle wiggle arms.
				case 9:				// Set idle sequence required ?.
				 	pAO->sp_aninum=37; 	// Set animation sequence.
					pAO->sp_anispeed=7;	// Set animation speed.
 					break;
				// Idle wind.
				case 10:				// Set idle sequence required ?.
				 	pAO->sp_aninum=38; 	// Set animation sequence.
					pAO->sp_anispeed=7;	// Set animation speed.
 					break;
			}
		}

		break;

//--

// Jump.

	case MODE_JUMP:					// Sprite in this mode ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(pAO->sp_xvel<0) {pAO->sp_xvel+=RUNVEL;}	// Reduce the velocities.
		if(pAO->sp_xvel>0) {pAO->sp_xvel-=RUNVEL;}

		if(pAO->sp_aniuser==ON)		// HOLD anim sequence ?.
		{
			if(gKeyInput&L_KEY&&pAO->sp_xpos>0) {pAO->sp_xvel=-RUNMAXVEL;} // Do full jump left.
			if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels_bg1-pAO->sp_xsize) {pAO->sp_xvel=RUNMAXVEL;} // Do full jump right.
			pAO->sp_yvel=JUMPVEL;	// Jump up.
			pAO->sp_mode=MODE_JUMPFALL; // Enter run jump fall mode.
		}

		if((pAO->sp_var1==DIR_LEFT&&pAO->sp_xpos<0)||(pAO->sp_var1==DIR_RIGHT&&pAO->sp_xpos>map_x_size_pixels_bg1-pAO->sp_xsize)) // @ map scroll limits in x ?.
		{
			pAO->sp_xvel=0;			// Stop sprite now !.
		}

		if(gKeyTap&A_BUTTON)
		{
		 	pAO->sp_aniframe=0;		// Reset animation frame counter.
		 	pAO->sp_aninum=1;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=5;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_BUTTBOUNCESTART; // Enter butt bounce mode.
		}

		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

		pAO->sp_var4=OFF;			// Flag not hit ground.

		break;

//--

// Jump fall.

	case MODE_JUMPFALL:				// Sprite in this mode ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(pAO->sp_xvel<0) {pAO->sp_xvel+=RUNVEL;} // Reduce the velocities.
		if(pAO->sp_xvel>0) {pAO->sp_xvel-=RUNVEL;}

		if(gKeyInput&L_KEY||gKeyInput&R_KEY) // Left or right direction ?.
		{									 
			if(gKeyInput&L_KEY&&pAO->sp_xpos>0)
			{
				gPushScrollX-=VIEWSPEED; // Add push scroll.
		 		pAO->sp_xvel=-RUNMAXVEL;// Add inertia.
				pAO->sp_flipX=ON;	 // Set sprite h-flip.
			}

			if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels_bg1-pAO->sp_xsize)
			{
				gPushScrollX+=VIEWSPEED; // Add push scroll.
 			 	pAO->sp_xvel=RUNMAXVEL;// Add inertia.
	 			pAO->sp_flipX=OFF;	 // Set sprite h-flip.
			}
  		}
 		else
		{
			pAO->sp_xvel=0;			// Stop sprite now !.
		}

		pAO->sp_yvel+=GRAVITY;		// Add gravity.
		if(pAO->sp_yvel>=MAXGRAVITY) {pAO->sp_yvel=MAXGRAVITY;} // Limit gravity (else we could go right through a ground tile !).

		if(pAO->sp_var4==ON)		// Hit ground contour tile ?.
		{
			pAO->sp_var4=OFF;		// Reset hit ground flag for next time.

  	 		pAO->sp_yvel=0;			// Freeze y velocity only.

		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=47;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_STAND; // Enter stand mode.

			if(pAO->sp_xvel==0)		// No movement in x ? - then do jump end animation.
			{
			 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
			 	pAO->sp_aninum=39;		// Set aninmation sequence.
				pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=5;		// Set animation speed.
				pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
				pAO->sp_mode=MODE_JUMPEND; // Enter jump end mode.
			}
		}

		if(gKeyTap&A_BUTTON)
		{
		 	pAO->sp_aniframe=0;		// Reset animation frame counter.
		 	pAO->sp_aninum=1;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=5;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_BUTTBOUNCESTART; // Enter butt bounce mode.
		}

		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

		break;

//--

// Look up.

	case MODE_LOOKUP:				// Sprite in this mode ?.

		if(gKeyInput&U_KEY)	  	 	// Look up ?.
		{
			if(map_ypos>0&&gPushScrollY>-PUSHBOXY) {gPushScrollY-=LOOKSPEED<<1;}	
		}
		else
		{
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=47;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_STAND; // Enter stand mode.
		}

		break;

//--

// Look down.

	case MODE_LOOKDOWN:				// Sprite in this mode ?.

		if(gKeyInput&D_KEY)		   	// Look down ?.
		{
			if((map_ypos<map_y_size_pixels_bg1-LCD_HEIGHT)&&gPushScrollY<PUSHBOXY) {gPushScrollY+=LOOKSPEED<<1;}	
		}
		else
		{
			if(pAO->sp_aniuser==ON)		// Animation sequence completed ?.
			{
			 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
			 	pAO->sp_aninum=17;		// Set aninmation sequence.
				pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=7;		// Set animation speed.
				pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
				pAO->sp_mode=MODE_GETUP; // Enter get up mode.
	   		}
		}

		break;
//--

// Free flight.

	case MODE_FREEFLIGHT:			// Sprite in this mode ?.

		if(gKeyInput&U_KEY&&pAO->sp_ypos>0){pAO->sp_ypos-=2;}
		if(gKeyInput&D_KEY&&pAO->sp_ypos<map_y_size_pixels_bg1-pAO->sp_ysize){pAO->sp_ypos+=2;}
		if(gKeyInput&L_KEY&&pAO->sp_xpos>0){pAO->sp_xpos-=2;}
		if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels_bg1-pAO->sp_xsize){pAO->sp_xpos+=2;}

		break;

//--

	}								// End of switch statement.

//--

	if(pAO->sp_mode!=MODE_FREEFLIGHT) // SpongeBob free flight test mode ?.
	{
		CheckContour(pAO);			// Check for platform contours and offset sprite accordingly.
	}

	old_map_xpos_bg2=map_xpos>>1;	// Update map co-ords store (bg2) (half scroll speed !).
	old_map_ypos_bg2=map_ypos>>1;
	old_map_xpos_bg1=map_xpos;		// Update map co-ords store (bg1).
	old_map_ypos_bg1=map_ypos;
							 
	map_xpos=pAO->sp_xpos-((LCD_WIDTH>>1)-(pAO->sp_xsize>>1))+gPushScrollX; // Drive scroll from this sprite.
	map_ypos=pAO->sp_ypos-((LCD_HEIGHT>>1)-(pAO->sp_ysize>>1))+gPushScrollY;

	if (map_xpos<0) {map_xpos=0;}	// Limit map position.
	if (map_xpos>map_x_size_pixels_bg1-LCD_WIDTH) {map_xpos=map_x_size_pixels_bg1-LCD_WIDTH;}
	if (map_ypos<0) {map_ypos=0;}
	if (map_ypos>map_y_size_pixels_bg1-LCD_HEIGHT) {map_ypos=map_y_size_pixels_bg1-LCD_HEIGHT;}
}

//***************************************************************************************************