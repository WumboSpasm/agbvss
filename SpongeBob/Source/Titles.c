//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Titles (Source).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#define _TITLES_C

#include "Includes.h"							// general includes
#include "Titles.h"							// main titles header
#include "TitlesData.h"							// external graphic data needed
#include "SineCos.h"							// sin/cos tables + general math instructions
#include "Random.h"							// Random Number Generator
#include "Text_Sys.h"                                                   // text system
#include "Scroll_Engine.h"                                              // scroll engine 
#include "StartUp.h"                                                    // legal screens  
#include "Hub.h"							// Hub/Map Level
#include "Fade.h"							// Fade Routines

const u16 Text_Palette[3]={0x7c00,0x0000,0xffff,};                      // title scren pallete select/back/text

//------------prototype functions--------
static void UpdateInput(void);					        // read input and update gamestate accordingly
static void ClearSelectLayer(void);                                     // clear the under layer where the select option is put..
static void PutSelectText(u8 startx,u8 starty);                         // put the select bar on screen in relevant place
static void CheckPassword(void);                                        // check password
//--------Local Variables-----------------
title Title;						        // Title struct (lots of nice variables in here)
u8 Password_Buffer[6];                                           // buffer to enter password into..
const u8 PasswordIconOffsetTable[8]={0,2,4,6,16,18,20,22,};      // offset into tile libraries for each password icon

//////////////////////////////
// Titles Functions
//////////////////////////////
void InitTitles(void)
{
        int x,y;
//-- temp        
	SetBgTextControl((vu16*)REG_BG0CNT,BG_PRIORITY_3,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,28,TILE_BASE_1);
	SetBgTextControl((vu16*)REG_BG1CNT,BG_PRIORITY_1,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,29,TILE_BASE_3);
	SetBgTextControl((vu16*)REG_BG2CNT,BG_PRIORITY_2,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,30,TILE_BASE_2);
	SetBgTextControl((vu16*)REG_BG3CNT,BG_PRIORITY_0,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,31,TILE_BASE_2);

	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,32);
	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,32);
	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,32);
	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,32);
	
	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_BG0_ON|DISP_BG1_ON|DISP_BG2_ON|DISP_BG3_ON|DISP_OBJ_CHAR_1D_MAP;
//-------------------

        for(x=0;x<6;x++)
        {
                Password_Buffer[x]=0x01;                                // flood password buffer with sysmbol no 1
        }

	//---set up title stats
	Title.mCurrent_Screen = 0;					// on screen 0 i.e. title screen
	Title.mCurrent_Selection = 0;   				// currently no selection
	Title.mCurrent_PasswordPlace = 0;				// currently no selection
	Title.mMax_Selections = 0;					// there are no selections on this screen so set this to zero

	//---reset game timer
	gTimer = 0;							// reset timer used to decide the random number bit
       
	ClearTextLayer();

	for (y=0;y<20;y++)
	{
		for (x=0;x<30;x++)
		{
			Bg1_ScreenDat[y*32+x]=127;                      // Select Layer
			Bg2_ScreenDat[y*32+x]=32;                       // Mid Layer
			Bg3_ScreenDat[y*32+x]=menuback_Map[(y*30)+x];   // Back Ripely Layer
		}
	}                        

	DmaArrayCopy(3,menuback_Character,TILE_BASE_ADDR_1,16);         // Load level data.
	DmaArrayCopy(3,PasswordIcons_Char,TILE_BASE_ADDR_3,16);         // Password Icons.
	DmaArrayCopy(3,libFontMenu_Char,TILE_BASE_ADDR_2,16);           // Load Text tile data.
	DmaArrayCopy(3,menuback_Palette,BG_PLTT,16);
	DmaArrayCopy(3,Text_Palette,BG_PLTT+(253<<1),16);               // Set Text colours (all '3' of them :).
	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);
	DmaArrayCopy(3,Bg2_ScreenDat,MAP_BASE_ADDR+0x0800,16);
	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,16);
        PutText(5,1,24,1,GAMENAME,0);
	PutText(5,14,20,1,PRESSSTART,0);
	DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);

        *(vu16 *)REG_IE    = V_BLANK_INTR_FLAG | H_BLANK_INTR_FLAG;	// set Vblank interrupt enable flag // Enable Hblank Ripple effect too
        *(vu16 *)REG_STAT  = STAT_V_BLANK_IF_ENABLE | STAT_H_BLANK_IF_ENABLE;

#ifdef MUSIC_ON                
        m4aSongNumStart(SBP_CHAP1LEV2);//BGM Start
#endif    
}

//----------------------------------------------------------------------------------------------------------    
// Main Title Screen / Front End Loops..
//----------------------------------------------------------------------------------------------------------    
void MainTitles(void)
{
       	WaitVBlank();							// Wait 4 VBL.
        switch(gFade)
        {             
        case 0:
        	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
        	ReadJoypad();							// Read joypad.
        	UpdateInput();							// Take Key Input and work out what needs to be done from here
                break;
        case 1:
                FadeOut(1);
                break;
        case 2:
                FadeIn();
                break;
        case 3:
                NextMenuSetUp();
                break;
        }
}


//---------read input and update accordingly----
//
// Title Screens
// 0 = Title Screen      (wait 10 seconds and move to rolling demo)
// 1 = Menu Options Menu (Options - New Game + (3)password + (4)Options + (7?)Credits)
// 3 = Password Screen   (Enter 5 symbols from choice of 6 differnt ones)
// 4 = Options Menu      (Options - (5)Controller + (6)Sound)
// 5 = Controller Menu   (Controller - (A)a=Action b=Jump or (B)a=Jump b=Action)
// 6 = Sound Menu        (Sliders For Music Volume + SFX Volume)
//
//	eTitle_Screen,			//0
//	eMain_Menu,				//1
//	eStart_Menu,			//2
//	ePassword_Menu,			//3
//	eOptions_Menu,			//4
//	eController_Menu,		//5
//	eSound_Menu,			//6
//
//-----------------------------------------------
static void UpdateInput(void)
{
        int x;
        
	switch(Title.mCurrent_Screen)
	{
	case eTitle_Screen:
		if((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)||(gTimer==600))
		{      
		        gFade=1;
			Title.mCurrent_Screen = eMain_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 4;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
			break;
		}
		break;

	case eMain_Menu:
		if (((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)) && (Title.mCurrent_Selection == 1)) // Select Start New Game
		{       
#ifdef MUSIC_ON                
		        m4aSongNumStart(SBP_CHAP1LEV2);
#endif
		        gFade=1;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
 			Title.mCurrent_Screen = eTitle_Screen;
			break;
		}
		if (((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)) && (Title.mCurrent_Selection == 2)) // Select Password Menu
		{
		        gFade=1;
			Title.mCurrent_Screen = ePassword_Menu;
			Title.mCurrent_Selection = 1;
			Title.mCurrent_PasswordPlace = 0;
			Title.mMax_Selections = 8;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
			break;
		}
		if (((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)) && (Title.mCurrent_Selection == 3))	// Select Options Screen
		{
		        gFade=1;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
			Title.mCurrent_Screen = eOptions_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 2;
			break;
		}
		if (((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)) && (Title.mCurrent_Selection == 4))	// Select Credits Screen
		{
		        gFade=1;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
			break;
		}
		break;

	case ePassword_Menu:
	        if (gKeyTap&A_BUTTON)
	        {
	                Password_Buffer[Title.mCurrent_PasswordPlace]=Title.mCurrent_Selection;
	                Title.mCurrent_PasswordPlace++;
	                if(Title.mCurrent_PasswordPlace==6)
	                {
	                        CheckPassword();
        	                Title.mCurrent_PasswordPlace--;
	                }
	        }
	        if(gKeyTap&START_BUTTON)
	        {
	                CheckPassword();
	        }
	        if ((gKeyTap&L_KEY)&&(Title.mCurrent_PasswordPlace>0))
	        {
	                Title.mCurrent_PasswordPlace--;
	        }
	        if ((gKeyTap&R_KEY)&&(Title.mCurrent_PasswordPlace<5))
	        {
	                Title.mCurrent_PasswordPlace++;
	        }
		if ((gKeyTap&B_BUTTON))			// Cancel Back To Previous Option
		{
		        gFade=1;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
			Title.mCurrent_Screen = eMain_Menu;
			Title.mCurrent_Selection = 2;
			Title.mMax_Selections = 4;
		}
		break;

	case eOptions_Menu:
		if (((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)) && (Title.mCurrent_Selection == 1)) // Controller
		{
		        gFade=1;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
			Title.mCurrent_Screen = eController_Menu;
			Title.mCurrent_Selection = gGameParams.mControllerMethod+1;
			Title.mMax_Selections = 2;
		}
		if (((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON)) && (Title.mCurrent_Selection == 2)&&(Title.mCurrent_Screen!=eController_Menu)) // Sound
		{
		        gFade=1;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
			Title.mCurrent_Screen = eSound_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 2;
		}
		if ((gKeyTap&B_BUTTON))			// Cancel Back To Previous Option
		{
		        gFade=1;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
			Title.mCurrent_Screen = eMain_Menu;
			Title.mCurrent_Selection = 3;
			Title.mMax_Selections = 4;
		}
		break;

	case eController_Menu:
		if ((gKeyTap&A_BUTTON)&&Title.mCurrent_Selection == 1)			// Cancel Back To Previous Option
		{
		        gFade=1;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
		        gGameParams.mControllerMethod = 0;
			Title.mCurrent_Screen = eOptions_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 2;
			break;
		}
		if ((gKeyTap&A_BUTTON)&&Title.mCurrent_Selection == 2)			// Cancel Back To Previous Option
		{
		        gFade=1;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
		        gGameParams.mControllerMethod = 1;
			Title.mCurrent_Screen = eOptions_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 2;
			break;
		}
		if ((gKeyTap&B_BUTTON))			// Cancel Back To Previous Option
		{
		        gFade=1;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
			Title.mCurrent_Screen = eOptions_Menu;
			Title.mCurrent_Selection = 1;
			Title.mMax_Selections = 2;
			break;
		}
		break;

	case eSound_Menu:
		if ((gKeyTap&L_KEY)&&(gGameParams.mMusicVolume>0)&&(Title.mCurrent_Selection == 1))
		{
		      gGameParams.mMusicVolume-=5;  
		}
		if ((gKeyTap&R_KEY)&&(gGameParams.mMusicVolume<100)&&(Title.mCurrent_Selection == 1))
		{
		      gGameParams.mMusicVolume+=5;  
		}
		if ((gKeyTap&L_KEY)&&(gGameParams.mSFXVolume>0)&&(Title.mCurrent_Selection == 2))
		{
		      gGameParams.mSFXVolume-=5;  
		}
		if ((gKeyTap&R_KEY)&&(gGameParams.mSFXVolume<100)&&(Title.mCurrent_Selection == 2))
		{
		      gGameParams.mSFXVolume+=5;  
		}
		if ((gKeyTap&B_BUTTON))			// Cancel Back To Previous Option
		{
		        gFade=1;
                        ClearSelectLayer();
                	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);          // copy the select layer data into vram
			Title.mCurrent_Screen = eOptions_Menu;
			Title.mCurrent_Selection = 2;
			Title.mMax_Selections = 2;
			break;
		}
		break;

	default:							        // not on a valid screen????
		break;
	}
        
	//generic options used on ALL menus
	if ((gKeyTap&U_KEY))		                                        //up key
	{
		Title.mCurrent_Selection--;
        	if (Title.mCurrent_Selection == 0)
        	{
	        	if(Title.mCurrent_Screen==ePassword_Menu)
	        	{
	        	        Title.mCurrent_Selection=8;
	        	}
                	else
                	{
	                	Title.mCurrent_Selection=1;
                	}
        	}
	}
	if ((gKeyTap&D_KEY))                                                    //doon key
	{
		Title.mCurrent_Selection++;
        	if (Title.mCurrent_Selection == Title.mMax_Selections+1)
        	{
	        	if(Title.mCurrent_Screen==ePassword_Menu)
	        	{
	        	        Title.mCurrent_Selection=1;
	        	}
                	else
                	{
	                	Title.mCurrent_Selection=Title.mMax_Selections;
                	}
        	}
	}
        if(gFade==0)
        {
                ClearSelectLayer();

                if(Title.mMax_Selections!=0 && Title.mCurrent_Screen!=eSound_Menu && Title.mCurrent_Screen!=ePassword_Menu)
                {
                        PutSelectText(5,(Title.mCurrent_Selection*2)+6);
                }

                if(Title.mCurrent_Screen==ePassword_Menu)
                {       
                        // display current password string
                        for(x=0;x<6;x++)
                        {
                		Bg2_ScreenDat[(11*32)+(x*3)+2]=PasswordIconOffsetTable[Password_Buffer[x]-1];                      // Select Layer
        	        	Bg2_ScreenDat[(11*32)+(x*3)+3]=PasswordIconOffsetTable[Password_Buffer[x]-1]+1;                     // Select Layer
        		        Bg2_ScreenDat[(12*32)+(x*3)+2]=PasswordIconOffsetTable[Password_Buffer[x]-1]+8;                     // Select Layer
                		Bg2_ScreenDat[(12*32)+(x*3)+3]=PasswordIconOffsetTable[Password_Buffer[x]-1]+9;                     // Select Layer
                        }
                                                          
                        // show highlights on select layer
        		Bg1_ScreenDat[(12*32)+(Title.mCurrent_PasswordPlace*3)+2]=32;                      // Select Layer
        		Bg1_ScreenDat[(11*32)+(Title.mCurrent_PasswordPlace*3)+2]=32;                      // Select Layer
        		Bg1_ScreenDat[(12*32)+(Title.mCurrent_PasswordPlace*3)+3]=32;                      // Select Layer
        		Bg1_ScreenDat[(11*32)+(Title.mCurrent_PasswordPlace*3)+3]=32;                      // Select Layer
        		Bg1_ScreenDat[(10*32)+(7*3)+1]=32;                      // Select Layer
        		Bg1_ScreenDat[(10*32)+(7*3)+2]=32;                      // Select Layer
        		Bg1_ScreenDat[(10*32)+(7*3)+3]=32;                      // Select Layer
        		Bg1_ScreenDat[(10*32)+(7*3)+4]=32;                      // Select Layer
        		Bg1_ScreenDat[(11*32)+(7*3)+1]=32;                      // Select Layer
        		Bg1_ScreenDat[(11*32)+(7*3)+2]=32;                      // Select Layer
        		Bg1_ScreenDat[(11*32)+(7*3)+3]=32;                      // Select Layer
        		Bg1_ScreenDat[(11*32)+(7*3)+4]=32;                      // Select Layer
        		Bg1_ScreenDat[(12*32)+(7*3)+1]=32;                      // Select Layer
        		Bg1_ScreenDat[(12*32)+(7*3)+2]=32;                      // Select Layer
        		Bg1_ScreenDat[(12*32)+(7*3)+3]=32;                      // Select Layer
        		Bg1_ScreenDat[(12*32)+(7*3)+4]=32;                      // Select Layer
        		Bg1_ScreenDat[(13*32)+(7*3)+1]=32;                      // Select Layer
        		Bg1_ScreenDat[(13*32)+(7*3)+2]=32;                      // Select Layer
        		Bg1_ScreenDat[(13*32)+(7*3)+3]=32;                      // Select Layer
        		Bg1_ScreenDat[(13*32)+(7*3)+4]=32;                      // Select Layer
        
                        // display the Password Icons
                        x=Title.mCurrent_Selection-2;
                        
                        if(x==-1){x=7;}                         // make sure we got correct icon at the top
        
                        // Previous Icon
                        Bg2_ScreenDat[(7*32)+(7*3)+2]=PasswordIconOffsetTable[x];
                        Bg2_ScreenDat[(7*32)+(7*3)+3]=PasswordIconOffsetTable[x]+1;
                        Bg2_ScreenDat[(8*32)+(7*3)+2]=PasswordIconOffsetTable[x]+8;
                        Bg2_ScreenDat[(8*32)+(7*3)+3]=PasswordIconOffsetTable[x]+9;
                        // Actual Selected Icon
                        Bg2_ScreenDat[(11*32)+(7*3)+2]=PasswordIconOffsetTable[Title.mCurrent_Selection-1];
                        Bg2_ScreenDat[(11*32)+(7*3)+3]=PasswordIconOffsetTable[Title.mCurrent_Selection-1]+1;
                        Bg2_ScreenDat[(12*32)+(7*3)+2]=PasswordIconOffsetTable[Title.mCurrent_Selection-1]+8;
                        Bg2_ScreenDat[(12*32)+(7*3)+3]=PasswordIconOffsetTable[Title.mCurrent_Selection-1]+9;
                        // Next Icon
                        Bg2_ScreenDat[(15*32)+(7*3)+2]=PasswordIconOffsetTable[Title.mCurrent_Selection];
                        Bg2_ScreenDat[(15*32)+(7*3)+3]=PasswordIconOffsetTable[Title.mCurrent_Selection]+1;
                        Bg2_ScreenDat[(16*32)+(7*3)+2]=PasswordIconOffsetTable[Title.mCurrent_Selection]+8;
                        Bg2_ScreenDat[(16*32)+(7*3)+3]=PasswordIconOffsetTable[Title.mCurrent_Selection]+9;
        
                	DmaArrayCopy(3,Bg2_ScreenDat,MAP_BASE_ADDR+0x0800,16);
                }
        
                if(Title.mCurrent_Screen==eSound_Menu)
                {
                        PutSelectText(5,(Title.mCurrent_Selection*4)+4);
                        
                        //display slider bars :o) // this is such a blag!!! //need to do better than this really!!!!
                        switch(gGameParams.mMusicVolume)
                        {
                                case 0:
                                        PutText(5,10,20,1,PCT0,0);
        	                        break;
                                case 5:
                                        PutText(5,10,20,1,PCT5,0);
                                        break;
                                case 10:
                                        PutText(5,10,20,1,PCT10,0);
                                        break;
                                case 15:
                                        PutText(5,10,20,1,PCT15,0);
                                        break;
                                case 20:
                                        PutText(5,10,20,1,PCT20,0);
                                        break;
                                case 25:
                                        PutText(5,10,20,1,PCT25,0);
                                        break;
                                case 30:
                                        PutText(5,10,20,1,PCT30,0);
                                        break;
                                case 35:
                                        PutText(5,10,20,1,PCT35,0);
                                        break;
                                case 40:
                                        PutText(5,10,20,1,PCT40,0);
                                        break;
                                case 45:
                                        PutText(5,10,20,1,PCT45,0);
                                        break;
                                case 50:
                                        PutText(5,10,20,1,PCT50,0);
                                        break;
                                case 55:
                                        PutText(5,10,20,1,PCT55,0);
                                        break;
                                case 60:
                                        PutText(5,10,20,1,PCT60,0);
                                        break;
                                case 65:
                                        PutText(5,10,20,1,PCT65,0);
                                        break;
                                case 70:
                                        PutText(5,10,20,1,PCT70,0);
                                        break;
                                case 75:
                                        PutText(5,10,20,1,PCT75,0);
                                        break;
                                case 80:
                                        PutText(5,10,20,1,PCT80,0);
                                        break;
                                case 85:
                                        PutText(5,10,20,1,PCT85,0);
                                        break;
                                case 90:
                                        PutText(5,10,20,1,PCT90,0);
                                        break;
                                case 95:
                                        PutText(5,10,20,1,PCT95,0);
                                        break;
                                case 100:
                                        PutText(5,10,20,1,PCT100,0);
                                        break;
                        }
                        switch(gGameParams.mSFXVolume)
                        {
                                case 0:
                                        PutText(5,14,20,1,PCT0,0);
        	                        break;
                                case 5:
                                        PutText(5,14,20,1,PCT5,0);
                                        break;
                                case 10:
                                        PutText(5,14,20,1,PCT10,0);
                                        break;
                                case 15:
                                        PutText(5,14,20,1,PCT15,0);
                                        break;
                                case 20:
                                        PutText(5,14,20,1,PCT20,0);
                                        break;
                                case 25:
                                        PutText(5,14,20,1,PCT25,0);
                                        break;
                                case 30:
                                        PutText(5,14,20,1,PCT30,0);
                                        break;
                                case 35:
                                        PutText(5,14,20,1,PCT35,0);
                                        break;
                                case 40:
                                        PutText(5,14,20,1,PCT40,0);
                                        break;
                                case 45:
                                        PutText(5,14,20,1,PCT45,0);
                                        break;
                                case 50:
                                        PutText(5,14,20,1,PCT50,0);
                                        break;
                                case 55:
                                        PutText(5,14,20,1,PCT55,0);
                                        break;
                                case 60:
                                        PutText(5,14,20,1,PCT60,0);
                                        break;
                                case 65:
                                        PutText(5,14,20,1,PCT65,0);
                                        break;
                                case 70:
                                        PutText(5,14,20,1,PCT70,0);
                                        break;
                                case 75:
                                        PutText(5,14,20,1,PCT75,0);
                                        break;
                                case 80:
                                        PutText(5,14,20,1,PCT80,0);
                                        break;
                                case 85:
                                        PutText(5,14,20,1,PCT85,0);
                                        break;
                                case 90:
                                        PutText(5,14,20,1,PCT90,0);
                                        break;
                                case 95:
                                        PutText(5,14,20,1,PCT95,0);
                                        break;
                                case 100:
                                        PutText(5,14,20,1,PCT100,0);
                                        break;
                        }
                        DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);
                }
        }
}

//----------------------------------------------------------------------------------------------------------    
// clear the select layer         
//----------------------------------------------------------------------------------------------------------    
static void ClearSelectLayer(void)
{
        int x,y;

        
        for(x=0;x<30;x++)
	{
		for(y=0;y<20;y++)
		{
			Bg1_ScreenDat[(y*32)+x]=127;
		}
	}
}

//----------------------------------------------------------------------------------------------------------    
// place the select bar gfx on screen
//----------------------------------------------------------------------------------------------------------    
static void PutSelectText(u8 startx,u8 starty)
{          
        int x;
        
        for(x=startx;x<startx+20;x++)
        {
       		Bg1_ScreenDat[(starty*32)+x]=32;
        }
} 

//----------------------------------------------------------------------------------------------------------    
// check password buffer to see if we have a valid passowrd and set up the player info accordingly    
//----------------------------------------------------------------------------------------------------------    
static void CheckPassword(void)
{
        if(Password_Buffer[0]==0x06&&Password_Buffer[1]==0x01&&Password_Buffer[2]==0x01&&Password_Buffer[3]==0x04&&Password_Buffer[4]==0x08&&Password_Buffer[5]==0x06)
        {
                Level = 1;
        	InitGame();
        	gGameState = e_IN_GAME;
        }
}
                  
