//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Sprite 1 Control (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "Scroll_Engine.h"

//***************************************************************************************************

void Sprite1Control()
{
	Object *pAO;

	pAO=g_pObject;				// Get copy of global pointer instead of using it directly coz it's cozy.

	if (gKeyInput&U_KEY&&pAO->sp_ypos>0) {pAO->sp_ypos-=2;} // Test.
	if (gKeyInput&D_KEY&&pAO->sp_ypos<map_y_size_pixels-pAO->sp_size) {pAO->sp_ypos+=2;}
	if (gKeyInput&L_KEY&&pAO->sp_xpos>0) {pAO->sp_xpos-=2;}
	if (gKeyInput&R_KEY&&pAO->sp_xpos<map_x_size_pixels-pAO->sp_size) {pAO->sp_xpos+=2;}

	map_xpos=pAO->sp_xpos-((LCD_WIDTH>>1)-(pAO->sp_size>>1));
	map_ypos=pAO->sp_ypos-((LCD_HEIGHT>>1)-(pAO->sp_size>>1));

	if (map_ypos<0) {map_ypos=0;}
	if (map_ypos>map_y_size_pixels-LCD_HEIGHT) {map_ypos=map_y_size_pixels-LCD_HEIGHT;}
	if (map_xpos<0) {map_xpos=0;}
	if (map_xpos>map_x_size_pixels-LCD_WIDTH) {map_xpos=map_x_size_pixels-LCD_WIDTH;}

//	pAO->sp_xvel+=0;			// Acclerate right.
//	pAO->sp_yvel-=0;			// Accelerate up.

//	if(pAO->sp_xvel>=1) {pAO->sp_xvel=2;} // Limit the velocities.
//	if(pAO->sp_yvel<=-1) {pAO->sp_yvel=-2;}

//	pAO->sp_xpos+=pAO->sp_xvel; // Add vels into the positions.
//	pAO->sp_ypos+=pAO->sp_yvel; // Add vels into the positions.

//	pAO->sp_rotate+=4;			// Rotate sprite.
//	if(pAO->sp_rotate>=256) {pAO->sp_rotate=0;}
}

//***************************************************************************************************