//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Main Game (Source).
// Author:		A.R.Cummings / RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "Scroll_Engine.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "SprEng_Animate.h"
#include "SprEng_Display.h"
#include "Text_Sys.h"
#include "Collision.h"
#include "Fade.h"

/////////////////////////////////////////////////
// Global Functions.
/////////////////////////////////////////////////

const u16 Speech_Bubble_Palette[2]={0xffff,0x0000,}; // 'Speech Bubble' palette (black text on white).

//***************************************************************************************************

// Initialise Main Routine

void InitGame(void)
{
//	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_LCDC_OFF;	// Set which layers to display


	InitSprites();								// Init. sprite engine.
	InitPalettes();								// Init. in-game colour palettes.
	InitScroll();								// Init. scroll engine.

	ReadJoypad();								// Read joypad.
	ObjectControl2();							// Update sprites (control 'method-2').
	UpdateScroll();
	ObjectDisplay();

//--

	*(vu16*)REG_IE=V_BLANK_INTR_FLAG;			// Set vblank interrupt enable flag.
	*(vu16*)REG_STAT=STAT_V_BLANK_IF_ENABLE;

//--

	// Enable game screen display.
	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_OBJ_ON|DISP_BG0_ON|DISP_BG1_ON|DISP_BG2_ON|DISP_BG3_ON|DISP_OBJ_CHAR_1D_MAP;	// Set which layers to display
}

//***************************************************************************************************
//***************************************************************************************************

// Main Game Loop.

void MainGame(void)
{
	WaitVBlank();								// Wait 4 VBL.
	switch(gFade)
	{
//--
	case 0:
		ReadJoypad();		  					// Read joypad.
		ObjectControl2();	  					// Update sprites (control 'method-2').
		SB2MovingPlats();	  					// Check 'SpongeBob' to 'Moving Platforms'.
		UpdateScroll();		  					// Update the 8-way parallax scroll.
		ObjectDisplay();	  					// Update sprites (display).
		CheckExit();							// Check for level exit.

		if(gKeyTap&SELECT_BUTTON)				// Next level test only !!!.
		{
			Level++;
			if(Level==LEVELTERM){Level=1;}
			gFade=1;
		}
		break;
//--
        case 1:
                FadeOut(0);						// call fade out routine
                break;
        case 2:
                FadeIn();						// call fade back in routine
                break;
        case 3:
                NextMenuSetUp();				// initialise the next screen
                break;
//--
	}
}

//***************************************************************************************************
//***************************************************************************************************

// Init. in-game colour palettes.

// Note: The very first sprite (i.e. SpongeBob 'Stand', contains the common sprite palette).

void InitPalettes(void)
{
	switch(Level)			 					// Get Level.
	{

//---------------------------------------------------------------------------------------------------

// Chapter 1.

//--

// Level 1 & Sub-Levels.

//		case LEVEL010101:
//		case LEVEL010102: 					   	// Etc.		
//		case LEVEL010103:		
//		case LEVEL010104:		
//		case LEVEL010105:		
//		case LEVEL010106:		
//			DmaArrayCopy(3,CHAPTER01_LEVEL01_TILEPALETTE,BG_PLTT,16);
//#ifdef MUSIC_ON
//        m4aSongNumStart(SBP_CHAP1LEV1);//BGM Start
//#endif
//			break;

//--

// Level 2 & Sub-Levels.

//		case LEVEL010201:		
//		case LEVEL010202:		
//		case LEVEL010203:		
//		case LEVEL010204:		
//		case LEVEL010205:		
//		case LEVEL010206:		
//			DmaArrayCopy(3,CHAPTER01_LEVEL02_TILEPALETTE,BG_PLTT,16);
//#ifdef MUSIC_ON
//        m4aSongNumStart(SBP_CHAP1LEV2);//BGM Start
//#endif
//			break;

//--

// Level 3 & Sub-Levels.

//		case LEVEL010301:		
//		case LEVEL010302:		
//		case LEVEL010303:		
//		case LEVEL010304:		
//		case LEVEL010305:		
//		case LEVEL010306:		
//			DmaArrayCopy(3,CHAPTER01_LEVEL03_TILEPALETTE,BG_PLTT,16);
//#ifdef MUSIC_ON
//        m4aSongNumStart(SBP_CHAP1LEV3);//BGM Start
//#endif
//			break;

//--

// Level 4 & Sub-Levels.

//		case LEVEL010401:
//		case LEVEL010402:
//		case LEVEL010403:
//		case LEVEL010404:
//		case LEVEL010405:
//		case LEVEL010406:
//			DmaArrayCopy(3,CHAPTER01_LEVEL04_TILEPALETTE,BG_PLTT,16);
//#ifdef MUSIC_ON
//        m4aSongNumStart(SBP_CHAP1LEV2);//BGM Start
//#endif
//			break;

//---------------------------------------------------------------------------------------------------

// Chapter 2.

//--

// Level 1 & Sub-Levels.

		case LEVEL020101:
		case LEVEL020102: 					   	// Etc.		
		case LEVEL020103:		
		case LEVEL020104:		
		case LEVEL020105:		
		case LEVEL020106:		
		case LEVEL020107:		
			DmaArrayCopy(3,CHAPTER02_LEVEL01_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV1);//BGM Start
#endif
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL020201:		
		case LEVEL020202:		
		case LEVEL020203:		
		case LEVEL020204:		
			DmaArrayCopy(3,CHAPTER02_LEVEL02_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV2);//BGM Start
#endif
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL020301:		
		case LEVEL020302:		
		case LEVEL020303:		
		case LEVEL020304:		
		case LEVEL020305:		
		case LEVEL020306:		
			DmaArrayCopy(3,CHAPTER02_LEVEL03_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV3);//BGM Start
#endif
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL020401:
		case LEVEL020402:
		case LEVEL020403:
		case LEVEL020404:
		case LEVEL020405:
			DmaArrayCopy(3,CHAPTER02_LEVEL04_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1BOSS);//BGM Start
#endif
			break;

//---------------------------------------------------------------------------------------------------

// Chapter 3.

//--

// Level 1 & Sub-Levels.

		case LEVEL030101:		
		case LEVEL030102:		
		case LEVEL030103:		
		case LEVEL030104:		
		case LEVEL030105:		
		case LEVEL030106:		
		case LEVEL030107:		
			DmaArrayCopy(3,CHAPTER03_LEVEL01_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV1);//BGM Start
#endif
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL030201:		
		case LEVEL030202:		
		case LEVEL030203:		
		case LEVEL030204:		
		case LEVEL030205:		
		case LEVEL030206:		
		case LEVEL030207:		
			DmaArrayCopy(3,CHAPTER03_LEVEL02_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV2);//BGM Start
#endif
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL030301:		
		case LEVEL030302:		
		case LEVEL030303:		
		case LEVEL030304:		
		case LEVEL030305:		
		case LEVEL030306:		
			DmaArrayCopy(3,CHAPTER03_LEVEL03_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV3);//BGM Start
#endif
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL030401:		
		case LEVEL030402:		
		case LEVEL030403:		
		case LEVEL030404:		
		case LEVEL030405:		
		case LEVEL030406:		
			DmaArrayCopy(3,CHAPTER03_LEVEL04_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1BOSS);//BGM Start
#endif
			break;

//---------------------------------------------------------------------------------------------------

// Chapter 4.

//--

// Level 1 & Sub-Levels.

		case LEVEL040101:		
		case LEVEL040102:		
		case LEVEL040103:		
		case LEVEL040104:		
			DmaArrayCopy(3,CHAPTER04_LEVEL01_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV1);//BGM Start
#endif
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL040201:		
		case LEVEL040202:		
		case LEVEL040203:		
		case LEVEL040204:		
		case LEVEL040205:		
			DmaArrayCopy(3,CHAPTER04_LEVEL02_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV2);//BGM Start
#endif
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL040301:		
		case LEVEL040302:		
		case LEVEL040303:		
		case LEVEL040304:		
		case LEVEL040305:		
		case LEVEL040306:		
			DmaArrayCopy(3,CHAPTER04_LEVEL03_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV3);//BGM Start
#endif
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL040401:		
		case LEVEL040402:		
		case LEVEL040403:		
		case LEVEL040404:		
		case LEVEL040405:		
 		case LEVEL040406:		
		case LEVEL040407:		
			DmaArrayCopy(3,CHAPTER04_LEVEL04_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1BOSS);//BGM Start
#endif
			break;

//---------------------------------------------------------------------------------------------------

// Chapter 5.

//--

// Level 1 & Sub-Levels.

		case LEVEL050101:
		case LEVEL050102: 					   	// Etc.		
		case LEVEL050103:		
			DmaArrayCopy(3,CHAPTER05_LEVEL01_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV1);//BGM Start
#endif
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL050201:		
		case LEVEL050202:		
		case LEVEL050203:		
		case LEVEL050204:		
			DmaArrayCopy(3,CHAPTER05_LEVEL02_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV2);//BGM Start
#endif
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL050301:		
		case LEVEL050302:		
		case LEVEL050303:		
		case LEVEL050304:		
		case LEVEL050305:		
			DmaArrayCopy(3,CHAPTER05_LEVEL03_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV3);//BGM Start
#endif
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL050401:
		case LEVEL050402:
		case LEVEL050403:
		case LEVEL050404:
		case LEVEL050405:
		case LEVEL050406:
		case LEVEL050407:
		case LEVEL050408:
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1BOSS);//BGM Start
#endif
			DmaArrayCopy(3,CHAPTER05_LEVEL04_TILEPALETTE,BG_PLTT,16);
			break;

//---------------------------------------------------------------------------------------------------

// Chapter 6.

//--

// Level 1 & Sub-Levels.

		case LEVEL060101:
		case LEVEL060102: 					   	// Etc.		
			DmaArrayCopy(3,CHAPTER06_LEVEL01_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV1);//BGM Start
#endif
			break;

//--

// Level 2 & Sub-Levels.

//		case LEVEL060201:		
//		case LEVEL060202:		
//			DmaArrayCopy(3,CHAPTER06_LEVEL02_TILEPALETTE,BG_PLTT,16);
//#ifdef MUSIC_ON
//        m4aSongNumStart(SBP_CHAP1LEV2);//BGM Start
//#endif
//			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL060301:		
		case LEVEL060302:		
			DmaArrayCopy(3,CHAPTER06_LEVEL03_TILEPALETTE,BG_PLTT,16);
#ifdef MUSIC_ON
        m4aSongNumStart(SBP_CHAP1LEV3);//BGM Start
#endif
			break;

//--

// Level 4 & Sub-Levels.

//		case LEVEL060401:
//		case LEVEL060402:
//		case LEVEL060403:
//		case LEVEL060404:
//			DmaArrayCopy(3,CHAPTER06_LEVEL04_TILEPALETTE,BG_PLTT,16);
//#ifdef MUSIC_ON
//        m4aSongNumStart(SBP_CHAP1BOSS);//BGM Start
//#endif
//			break;

//---------------------------------------------------------------------------------------------------

	};

//	DmaArrayCopy(3,Speech_Bubble_Palette,BG_PLTT+(254<<1),16); // Set 'Speech Bubble' colours (all '2' of them :).

	DmaArrayCopy(3,Stand_Palette,OBJ_PLTT,16);	// Set 256 colour palette data for ALL sprites.
}

//***************************************************************************************************

// Check for level exit.

void CheckExit(void)
{
	int x;										// Local variable.
	s32 Exit_x,Exit_y,Width,Height;

	Object *pAO;								// Object table pointers.

	pAO=g_pObject;								// Get copy of global object pointer.

	for(x=0;x!=numUsedObjects;x++,pAO++)	   	// Scan forward through objects currently in use.
	{
		if(pAO->sp_type==TYPE_SPONGEBOB){break;} // Found 'SPONGEBOB' sprite slot address ?.
	}
	
	Exit_x=ExitCoords[0+((Level-1)<<2)]>>1;   	// Get set of exit co-ords based for current level (>>1 = /2 to convert PSX to AGB values).
	Exit_y=ExitCoords[1+((Level-1)<<2)]>>1;
	Width=ExitCoords[2+((Level-1)<<2)]>>1;
	Height=ExitCoords[3+((Level-1)<<2)]>>1;

	if(pAO->sp_type!=TYPE_OFF&&pAO->sp_display==ON&& // If sprite is on, then check for sprite box to exit box collision. 
	((pAO->sp_xpos+pAO->sp_xsize)>=Exit_x)&&
	((pAO->sp_xpos)<=Width)&& 
	((pAO->sp_ypos+pAO->sp_ysize)>=Exit_y)&& 
	((pAO->sp_ypos)<=Height))
	{
		Level++;								// Next level.
		if(Level>=LEVELTERM){Level=1;}
   		gFade=1;
	}
}

//---------------------------------------------------------------------------------------------------

// Exit coordinate data.

const s32 ExitCoords[MAXLEVELS]=
{

//--

// Chapter 1.

/*	0,0,0,0,
	0,0,0,0,	
	0,0,0,0,	
	0,0,0,0,	
	0,0,0,0,	

	0,0,0,0,
	0,0,0,0,	
	0,0,0,0,	
	0,0,0,0,	
	0,0,0,0,	

	0,0,0,0,
	0,0,0,0,	
	0,0,0,0,	
	0,0,0,0,	
 
	0,0,0,0,
	0,0,0,0,	
	0,0,0,0,	
	0,0,0,0,	
	0,0,0,0,	
*/
//--

// Chapter 2.

	95*16,29*16,98*16,32*16, 	
	96*16,66*16,99*16,69*16, 	
	1*16,42*16,4*16,45*16,		
	85*16,67*16,88*16,70*16,
	1*16,63*16,4*16,66*16,		
	71*16,26*16,74*16,29*16, 	
	93*16,15*16,96*16,18*16, 	
        
        0*16,33*16,3*16,41*16,
        122*16,126*16,134*16,129*16,	
        92*16,11*16,95*16,27*16,	
        76*16,10*16,79*16,23*16,	

	129*16,75*16,133*16,84*16,	
	65*16,71*16,68*16,79*16,	
	169*16,16*16,174*16,37*16,	
	70*16,9*16,73*16,20*16,
	131*16,13*16,137*16,26*16,	
	112*16,5*16,117*16,18*16,	

        146*16,44*16,149*16,56*16,
        127*16,15*16,129*16,29*16,
        223*16,81*16,229*16,94*16,
        130*16,52*16,134*16,63*16,
        126*16,44*16,129*16,55*16,

//--

// Chapter 3.

        0,0,50,50,
        0,0,50,50,
        110*16,0*16,113*16,31*16,	
        85*16,39*16,106*16,42*16,	
        90*16,30*16,93*16,40*16,	
        84*16,10*16,87*16,24*16,	
        74*16,30*16,77*16,40*16,	

	152*16,19*16,159*16,26*19,
	171*16,24*16,179*16,31*16,
	148*16,7*16,155*16,14*16,	
	184*16,22*16,191*16,29*16,
	161*16,32*16,165*16,39*16,
	115*16,8*16,122*16,15*16,	
	203*16,28*16,210*16,34*16,

	140*16,12*16,147*16,19*16,
	140*16,12*16,147*16,19*16,
	88*16,34*16,95*16,41*16,	
	49*16,6*16,56*16,13*16,
	144*16,27*16,151*16,34*16,
	157*16,25*16,164*16,32*16,

	160*16,16*16,167*16,23*16,
	19*16,0*16,25*16,4*16,
	158*16,25*16,165*16,32*16,
	149*16,28*16,164*16,35*16,
	0*16,42*16,7*16,49*16,
	0*16,16*16,7*16,18*16,


//--

// Chapter 4.

	15*16,98*16,19*16,103*16,		
	13*16,118*16,17*16,123*16,		
	118*16,31*16,122*16,36*16,		
	152*16,104*16,156*16,109*16,    

	219*16,15*16,222*16,18*16,
	196*16,25*16,199*16,28*16,
	156*16,23*16,159*16,26*16,
	180*16,33*16,183*16,36*16,
	226*16,24*16,229*16,27*16,

	74*16,6*16,81*16,13*16,	
	24*16,0*16,28*16,1*16,	
	79*16,5*16,86*16,12*16,	
	79*16,9*16,86*16,16*16,	
	97*16,4*16,104*16,11*16,
	32*16,0*16,38*16,1*16,	

	99*16,36*16,102*16,39*16,	
	173*16,36*16,176*16,39*16,      
	3*16,36*16,6*16,39*16,
	177*16,36*16,180*16,39*16,      
	68*16,0*16,70*16,3*16, 
	67*16,0*16,70*16,3*16,
	27*16,0*16,30*16,3*16,

//--

// Chapter 5.

	214*16,8*16,221*16,15*16,	
	210*16,12*16,217*16,19*16,	
	233*16,4*16,240*16,11*16,	

	164*16,21*16,171*16,28*16,		
	218*16,30*16,225*16,37*16,		
	173*16,26*16,180*16,33*16,		
	134*16,12*16,141*16,19*16,		

	16*16,67*16,19*16,70*16,		
	8*16,55*16,11*16,58*16,			
	14*16,14*16,17*16,17*16,		
	71*16,8*16,74*16,11*16,			
	15*16,0*16,18*16,3*16,			

	56*16,19*16,63*16,26*16,		
	48*16,31*16,51*16,35*16,		
	67*16,27*16,70*16,31*16,		
	109*16,50*16,112*16,54*16,		
	64*16,15*16,67*16,19*16,		
	16*16,4*16,19*16,7*16,			
	80*16,3*16,82*16,11*16,			
	38*16,65*16,43*16,71*16,		

//--

// Chapter 6.

	152*16,22*16,155*16,25*16,		
	8*16,100*16,11*16,103*16,		

	185*16,22*16,189*16,25*16,		
	211*16,62*16,214*16,65*16,	

/*	0,0,0,0,

	0,0,0,0,
	0,0,0,0,
	0,0,0,0,
	0,0,0,0,

	0,0,0,0,
	0,0,0,0,
	0,0,0,0,
	0,0,0,0,
	0,0,0,0,
	0,0,0,0,
	0,0,0,0,
	0,0,0,0,
*/
//--

};

//***************************************************************************************************
