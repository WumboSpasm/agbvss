//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - SpongeBob Sprite Control (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "Scroll_Engine.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "Scroll_Engine.h"
#include "Contours.h"

//***************************************************************************************************

void SpriteControl01()
{
	Object *pAO;

	pAO=g_pObject;					// Get copy of global pointer instead of using it directly coz it's cozy.
		
//--

	pAO->sp_xpos+=(pAO->sp_xvel>>8); // Add velocity into sprite positions.
	pAO->sp_ypos+=(pAO->sp_yvel>>8);

	switch (pAO->sp_mode)			// Get sprite's current mode.
	{

//--

// Stand.

	case MODE_STAND:				// SpongeBob stand left or right ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;}
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

 		if(pAO->sp_xvel<0) {pAO->sp_xvel+=WALKVEL>>1;} // Reduce the velocities.
		if(pAO->sp_xvel>0) {pAO->sp_xvel-=WALKVEL>>1;}

		if(pAO->sp_xvel==0)			// Sprite stopped moving in x ?.
		{
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=0;  		// Set aninmation sequence.
			pAO->sp_var1=DIR_CLR;	// Clear direction variable.
	   	}
												
		if(gKeyInput&U_KEY)			// Look up ?.
		{
//			Wait for 'PushScrollX=0' before looking up.
//			if(map_ypos>0&&gPushScrollX==0&&gPushScrollY>-PUSHBOXY) {gPushScrollY-=LOOKSPEED<<1;}	
			if(map_ypos>0&&gPushScrollY>-PUSHBOXY) {gPushScrollY-=LOOKSPEED<<1;}	
		}

		else if(gKeyInput&D_KEY)	// Look down ?.
		{
//			Wait for 'PushScrollX=0' before looking up.
//			if((map_ypos<map_y_size_pixels-LCD_HEIGHT)&&gPushScrollX==0&&gPushScrollY<PUSHBOXY) {gPushScrollY+=LOOKSPEED<<1;}	
			if((map_ypos<map_y_size_pixels-LCD_HEIGHT)&&gPushScrollY<PUSHBOXY) {gPushScrollY+=LOOKSPEED<<1;}	
	}

		else if(gKeyInput&L_KEY||gKeyInput&R_KEY) // Enter run mode.
		{
			pAO->sp_mode=MODE_RUN;	// Enter run mode.
		}

		if(gKeyTap&A_BUTTON)	   	// Enter stand jump mode.
		{
		 	pAO->sp_aniframe=0;		// Reset animation frame counter.
		 	pAO->sp_aninum=1;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_STANDJUMP; // Enter stand jump mode.
		}

		if(gKeyTap&B_BUTTON)	   	// Enter karate chop mode.
		{
		 	pAO->sp_aniframe=0;		// Reset animation frame counter.
		 	pAO->sp_aninum=10;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=3;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_KARATE; // Enter karate chop mode.
		}

		break;

//--

// Walk.

	case MODE_WALK:	 				// SpongeBob walk left or right ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(gKeyInput&L_KEY&&pAO->sp_xpos>0)
		{
			if(pAO->sp_var1!=DIR_LEFT) // Already doing animation for this direction ?.
			{
			 	pAO->sp_aniframe=0;	// Reset animtaion frame counter.
			 	pAO->sp_aninum=3;	// Set aninmation sequence.
				pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=4;	// Set animation speed.
				pAO->sp_var1=DIR_LEFT;// Flag current direction.
			}

			if(pAO->sp_xvel<-WALKVEL){gPushScrollX-=VIEWSPEED;} // Add push scroll.
			pAO->sp_xvel-=WALKVEL;	// Add inertia.
			pAO->sp_flipX=ON;		// Set sprite h-flip.
		}

		else if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels-pAO->sp_xsize)
		{
			if(pAO->sp_var1!=DIR_RIGHT)	// Already doing animation for this direction ?.
			{
			 	pAO->sp_aniframe=0;	// Reset animtaion frame counter.
			 	pAO->sp_aninum=3;	// Set aninmation sequence.
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

			if(pAO->sp_xpos<0||pAO->sp_xpos>map_x_size_pixels-pAO->sp_xsize) // @ map scroll limits in x ?.
			{
				pAO->sp_xvel=0;		// Stop sprite now !.
			}
	   	}

		if(gKeyTap&A_BUTTON)	   	// Enter stand jump mode.
		{
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=1;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_STANDJUMP; // Enter stand jump mode.
		}

		if(gKeyTap&B_BUTTON)	   	// Enter karate chop mode.
		{
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=10;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=3;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_KARATE; // Enter karate chop mode.
		}

		if(pAO->sp_xvel<=-WALKMAXVEL) {pAO->sp_xvel=-WALKMAXVEL;} // Limit the velocities.
		if(pAO->sp_xvel>=WALKMAXVEL) {pAO->sp_xvel=WALKMAXVEL;}

		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

	   	break;

//--

// Run.

	case MODE_RUN:	  				// SpongeBob run left or right ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(gKeyInput&L_KEY&&pAO->sp_xpos>0)
		{
			if(pAO->sp_var1!=DIR_LEFT&&pAO->sp_aninum!=5) // Do turn animation ?.
			{
			 	pAO->sp_aniframe=0;	// Reset animtaion frame counter.
			 	pAO->sp_aninum=5;	// Set aninmation sequence.
				pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=3;	// Set animation speed.
				pAO->sp_var1=DIR_LEFT; // Flag current direction.
			}

			else if(pAO->sp_aniuser==ON&&pAO->sp_aninum!=4) // Already doing animation for this direction ?.
			{
				pAO->sp_flipX=ON;	// Set sprite h-flip.
			 	pAO->sp_aniframe=0;	// Reset animtaion frame counter.
			 	pAO->sp_aninum=4;	// Set aninmation sequence.
				pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=2;	// Set animation speed.
				pAO->sp_var1=DIR_LEFT; // Flag current direction.
				pAO->sp_aniuser=OFF; // Reset HOLD anim. sequence variable.
			}

			if(pAO->sp_xvel<-RUNVEL){gPushScrollX-=VIEWSPEED;} // Add push scroll.
		 	pAO->sp_xvel-=RUNVEL;	// Add inertia.
		}

		else if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels-pAO->sp_xsize)
		{
			if(pAO->sp_var1!=DIR_RIGHT&&pAO->sp_aninum!=5) // Do turn animation ?.
			{
			 	pAO->sp_aniframe=0;	// Reset animtaion frame counter.
			 	pAO->sp_aninum=5;	// Set aninmation sequence.
				pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=3;	// Set animation speed.
				pAO->sp_var1=DIR_RIGHT; // Flag current direction.
			}

			else if(pAO->sp_aniuser==ON&&pAO->sp_aninum!=4) // Already doing animation for this direction ?.
			{
				pAO->sp_flipX=OFF;	// Set sprite h-flip.
			 	pAO->sp_aniframe=0;	// Reset animtaion frame counter.
			 	pAO->sp_aninum=4;	// Set aninmation sequence.
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

			if(pAO->sp_xpos<0||pAO->sp_xpos>map_x_size_pixels-pAO->sp_xsize) // @ map scroll limits in x ?.
			{
				pAO->sp_xvel=0;		// Stop sprite now !.
			}
	   	}

		if(gKeyTap&A_BUTTON)	   	// Enter stand jump mode.
		{
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=6;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_RUNJUMP; // Enter run jump mode.
		}

		if(gKeyTap&B_BUTTON&&pAO->sp_aninum!=5) // Enter karate chop mode if not turning.
		{
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=10;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=3;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_KARATE; // Enter karate chop mode.
		}

		if(pAO->sp_xvel<=-RUNMAXVEL) {pAO->sp_xvel=-RUNMAXVEL;} // Limit the velocities.
		if(pAO->sp_xvel>=RUNMAXVEL) {pAO->sp_xvel=RUNMAXVEL;}
		
		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

	   	break;

//--

// Stand Jump.

	case MODE_STANDJUMP:  			// SpongeBob stand jump left or right ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

	 	pAO->sp_xvel=0;				// Freeze velocities.
		pAO->sp_yvel=0;

		if(pAO->sp_aniuser==ON)		// HOLD anim sequence ?.
		{
			if(gKeyInput&L_KEY&&pAO->sp_xpos>0) {pAO->sp_xvel=-WALKMAXVEL;} // Do full jump left.
			if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels-pAO->sp_xsize) {pAO->sp_xvel=WALKMAXVEL;} // Do full jump right.
			pAO->sp_yvel=JUMPVEL;	// Jump up.
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=8;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=3;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_STANDJUMPFALL; // Enter stand jump fall mode.
		}

		if((pAO->sp_var1==DIR_LEFT&&pAO->sp_xpos<0)||(pAO->sp_var1==DIR_RIGHT&&pAO->sp_xpos>map_x_size_pixels-pAO->sp_xsize)) // @ map scroll limits in x ?.
		{
			pAO->sp_xvel=0;			// Stop sprite now !.
		}

		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

		pAO->sp_var4=OFF;			// Flag not hit ground.

	   	break;

//--

// Stand Jump Fall.

	case MODE_STANDJUMPFALL:

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(pAO->sp_xvel<0) {pAO->sp_xvel+=WALKVEL;} // Reduce the velocities.
		if(pAO->sp_xvel>0) {pAO->sp_xvel-=WALKVEL;}
				 
		if(gKeyInput&L_KEY&&pAO->sp_xpos>0)
		{
			gPushScrollX-=VIEWSPEED; // Add push scroll.
		 	pAO->sp_xvel-=WALKVEL;	// Add inertia.
			pAO->sp_flipX=ON;		// Set sprite h-flip.
		}

		else if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels-pAO->sp_xsize)
		{
			gPushScrollX+=VIEWSPEED; // Add push scroll.
 		 	pAO->sp_xvel+=WALKVEL;	// Add inertia.
	 		pAO->sp_flipX=OFF;		// Set sprite h-flip.
		}

		pAO->sp_yvel+=GRAVITY;		// Add gravity.
		if(pAO->sp_yvel>=MAXGRAVITY) {pAO->sp_yvel=MAXGRAVITY;} // Limit gravity (else we could go right through a ground tile !).

		if(pAO->sp_var4==ON)		// Hit ground contour tile ?.
		{
			pAO->sp_var4=OFF;		// Reset hit ground flag for next time.

	 		pAO->sp_xvel=0;			// Freeze velocities.
			pAO->sp_yvel=0;

		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=2;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=5;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_STANDJUMPLAND; // Enter stand jump land mode.
		}

		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

   		break;
//--

// Stand Jump Land.

	case MODE_STANDJUMPLAND:

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;}
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(pAO->sp_aniuser==ON)		// HOLD anim sequence ?.
		{
			pAO->sp_mode=MODE_STAND; // Enter stand mode.
		}

		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

   		break;

//--

// Run Jump.

	case MODE_RUNJUMP:  			// SpongeBob run jump left or right ?.

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(pAO->sp_xvel<0) {pAO->sp_xvel+=RUNVEL;}	// Reduce the velocities.
		if(pAO->sp_xvel>0) {pAO->sp_xvel-=RUNVEL;}

	 	pAO->sp_yvel=0;				// Freeze y velocity only.

		if(pAO->sp_aniuser==ON)		// HOLD anim sequence ?.
		{
			if(gKeyInput&L_KEY&&pAO->sp_xpos>0) {pAO->sp_xvel=-RUNMAXVEL;} // Do full jump left.
			if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels-pAO->sp_xsize) {pAO->sp_xvel=RUNMAXVEL;} // Do full jump right.
			pAO->sp_yvel=JUMPVEL;	// Jump up.
		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=8;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=3;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_RUNJUMPFALL; // Enter run jump fall mode.
		}

		if((pAO->sp_var1==DIR_LEFT&&pAO->sp_xpos<0)||(pAO->sp_var1==DIR_RIGHT&&pAO->sp_xpos>map_x_size_pixels-pAO->sp_xsize)) // @ map scroll limits in x ?.
		{
			pAO->sp_xvel=0;			// Stop sprite now !.
		}

		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

		pAO->sp_var4=OFF;			// Flag not hit ground.

	   	break;

//--

// Run Jump Fall.

	case MODE_RUNJUMPFALL:

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;} // 'Un-look' up or down !.
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(pAO->sp_xvel<0) {pAO->sp_xvel+=RUNVEL;} // Reduce the velocities.
		if(pAO->sp_xvel>0) {pAO->sp_xvel-=RUNVEL;}
				 
		if(gKeyInput&L_KEY&&pAO->sp_xpos>0)
		{
			gPushScrollX-=VIEWSPEED; // Add push scroll.
		 	pAO->sp_xvel-=RUNVEL;	// Add inertia.
			pAO->sp_flipX=ON;		// Set sprite h-flip.
		}

		else if(gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels-pAO->sp_xsize)
		{
			gPushScrollX+=VIEWSPEED; // Add push scroll.
 		 	pAO->sp_xvel+=RUNVEL;	// Add inertia.
	 		pAO->sp_flipX=OFF;		// Set sprite h-flip.
		}

		pAO->sp_yvel+=GRAVITY;		// Add gravity.
		if(pAO->sp_yvel>=MAXGRAVITY) {pAO->sp_yvel=MAXGRAVITY;} // Limit gravity (else we could go right through a ground tile !).

		if(pAO->sp_var4==ON)		// Hit ground contour tile ?.
		{
			pAO->sp_var4=OFF;		// Reset hit ground flag for next time.

  	 		pAO->sp_xvel=0;			// Freeze velocities.
			pAO->sp_yvel=0;

		 	pAO->sp_aniframe=0;		// Reset animtaion frame counter.
		 	pAO->sp_aninum=7;		// Set aninmation sequence.
			pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
			pAO->sp_anispeed=4;		// Set animation speed.
			pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
			pAO->sp_mode=MODE_RUNJUMPLAND; // Enter run jump land mode.
		}

		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

   		break;
//--

// Run Jump Land.

	case MODE_RUNJUMPLAND:

		if(gPushScrollY<0) {gPushScrollY+=LOOKSPEED;}
		if(gPushScrollY>0) {gPushScrollY-=LOOKSPEED;}

		if(pAO->sp_aniuser==ON)		// HOLD anim sequence ?.
		{
			pAO->sp_mode=MODE_RUN;	// Enter run mode.
		}

		if(gPushScrollX<=-PUSHBOXX) {gPushScrollX=-PUSHBOXX;} // Limit push scroll.
		if(gPushScrollX>=PUSHBOXX) {gPushScrollX=PUSHBOXX;}

   		break;

//--

// Karate.

	case MODE_KARATE:				// SpongeBob karate chop left or right ?.

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

	}								// End of switch statement.

//--

	CheckContour(pAO);				// Check for platform contours and offset sprite accordingly.
						 
	map_xpos=pAO->sp_xpos-((LCD_WIDTH>>1)-(pAO->sp_xsize>>1))+gPushScrollX; // Drive scroll from this sprite.
	map_ypos=pAO->sp_ypos-((LCD_HEIGHT>>1)-(pAO->sp_ysize>>1))+gPushScrollY;

	if (map_xpos<0) {map_xpos=0;}	// Limit map position.
	if (map_xpos>map_x_size_pixels-LCD_WIDTH) {map_xpos=map_x_size_pixels-LCD_WIDTH;}
	if (map_ypos<0) {map_ypos=0;}
	if (map_ypos>map_y_size_pixels-LCD_HEIGHT) {map_ypos=map_y_size_pixels-LCD_HEIGHT;}
}

//***************************************************************************************************