//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Fade (Source).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#define _TITLES_C

#include "Includes.h"							// general includes
#include "Titles.h"							// main titles header
#include "TitlesData.h"							// external graphic data needed
#include "Text_Sys.h"                                                   // text system
#include "Scroll_Engine.h"                                              // scroll engine 
#include "StartUp.h"                                                    // legal screens  
#include "Hub.h"							// Hub/Map Level

static s16 ce_EVA_rate,ce_EVB_rate;                         // aplha channel co-efficients


//---------------------------------------------------------------------------------------------------------------                  
// fade routines.. // use 1 to fade up and 0 to fade down
//---------------------------------------------------------------------------------------------------------------                  
void FadeOut(u8 type)
{            
        if (type)
        {
	        *(vu16*)REG_BLDCNT = BLD_BG0_2ND|BLD_BG1_2ND|BLD_BG2_2ND|BLD_BG3_2ND|BLD_OBJ_2ND|BLD_UP_MODE|BLD_OBJ_1ST|BLD_BG0_1ST|BLD_BG1_1ST|BLD_BG2_1ST|BLD_BG3_1ST;  // alpha
        }
        else
	{
        	*(vu16*)REG_BLDCNT = BLD_BG0_2ND|BLD_BG1_2ND|BLD_BG2_2ND|BLD_BG3_2ND|BLD_OBJ_2ND|BLD_DOWN_MODE|BLD_OBJ_1ST|BLD_BG0_1ST|BLD_BG1_1ST|BLD_BG2_1ST|BLD_BG3_1ST;  // alpha
        }

        if(gTimer>=3)
        {
                gFadeLevel++;
                gTimer=0;
        }

        *(vu16*)REG_BLDY = gFadeLevel;

        if(gFadeLevel==0x10)
        {
        	gFade=3;
        }


}

//---------------------------------------------------------------------------------------------------------------                  
// fade routines..
//---------------------------------------------------------------------------------------------------------------                  
void FadeIn(void)
{
        if(gTimer>=3)
        {
                gFadeLevel--;
                gTimer=0;
        }

        *(vu16*)REG_BLDY = gFadeLevel;


        if(gFadeLevel==0)
        {
                //restore blend mode....
        	ce_EVA_rate = 0x0F;                                                // alpha blend coefficient EVA
        	ce_EVB_rate = 0x03;                                                // alpha blend coefficient EVB

	        *(vu16*)REG_BLDCNT = BLD_BG0_2ND|BLD_BG1_2ND|BLD_A_BLEND_MODE|BLD_BG2_1ST|BLD_BG1_1ST;  // alpha
        	*(vu16*)REG_BLDALPHA = (ce_EVB_rate<<8)|ce_EVA_rate;            // Coefficient EVB EVA
        	gFade=0;
        	
        	if(gGameState!=e_TITLE_SCREEN)
        	{
	        	*(vu16*)REG_BLDCNT=BLD_2ND_ALL|BLD_NORMAL_MODE|BLD_ALL; //No SFX.
			*(vu16*)REG_BLDALPHA=0x0808;				// EVB EVA coefficient value.
			*(vu16*)REG_BLDY=8;							// EVY coefficient value.
		}
        }
}

//----------------------------------------------------------------------------------------------------------------
// set up next stage of menu;
//----------------------------------------------------------------------------------------------------------------

void NextMenuSetUp(void)
{
        int x,y;

        if(gGameState==e_IN_GAME)
        {
       		InitGame();
	}
        if(gGameState==e_HUB_SCREEN)
        {
       		InitGame();
       		gGameState = e_IN_GAME;
	}
        if(gGameState==e_TITLE_SCREEN)
        {
                switch(Title.mCurrent_Screen)
                {
                        case eMain_Menu:               	        
			for (y=0;y<32;y++)
			{
				for (x=0;x<32;x++)
				{
					Bg3_ScreenDat[y*32+x]=menuback_Map[(y*32)+x];   // Back Ripely Layer
				}
			}                        

                	DmaArrayCopy(3,menuback_Character,TILE_BASE_ADDR_1,16);         // Load level data.
			DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,16);
                       	ClearTextLayer();
                        PutText(5,7,20,1,NEWGAME,0);
                        PutText(5,9,20,1,PASSWORD,0);
                        PutText(5,11,20,1,OPTION,0);
                        PutText(5,13,20,1,CREDITS,0);
                	DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);
                	break;
                case eTitle_Screen:
	       		InitGame();
	       		gGameState = e_IN_GAME;
                        break;
                case ePassword_Menu:
                	ClearTextLayer();
                        PutText(1,7,20,1,PASSWORD2,0);
                	DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);
                        for(x=0;x<6;x++)
                        {
                		Bg2_ScreenDat[(11*32)+(x*3)+2]=PasswordIconOffsetTable[Password_Buffer[x]-1];                      // Select Layer
        	        	Bg2_ScreenDat[(11*32)+(x*3)+3]=PasswordIconOffsetTable[Password_Buffer[x]-1]+1;                     // Select Layer
        		        Bg2_ScreenDat[(12*32)+(x*3)+2]=PasswordIconOffsetTable[Password_Buffer[x]-1]+8;                     // Select Layer
                		Bg2_ScreenDat[(12*32)+(x*3)+3]=PasswordIconOffsetTable[Password_Buffer[x]-1]+9;                     // Select Layer
                        }
                
                        x=Title.mCurrent_Selection-2;
                
                        if(x==-1){x=7;}                         // make sure we got correct icon at the top
        
        
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
                       	break;
                case eOptions_Menu:
			for (y=0;y<32;y++)
			{
				for (x=0;x<32;x++)
				{
					Bg3_ScreenDat[y*32+x]=menuback2_Map[(y*32)+x];   // Back Ripely Layer
				}
			}                        

                	DmaArrayCopy(3,menuback2_Character,TILE_BASE_ADDR_1,16);         // Load level data.
			DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,16);
                        ClearTextLayer();
                        PutText(5,7,20,1,CONTROLLER,0);
                        PutText(5,9,20,1,SOUND,0);
                        DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);
                        break;
                case eController_Menu:
			for (y=0;y<32;y++)
			{
				for (x=0;x<32;x++)
				{
					Bg3_ScreenDat[y*32+x]=menuback_Map[(y*32)+x];   // Back Ripely Layer
				}
			}                        

                	DmaArrayCopy(3,menuback_Character,TILE_BASE_ADDR_1,16);         // Load level data.
			DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,16);
                	ClearTextLayer();
                        PutText(5,7,20,1,CONTA,0);
                        PutText(5,9,20,1,CONTB,0);
                	DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);
                        break;
                case eSound_Menu:
			for (y=0;y<32;y++)
			{
				for (x=0;x<32;x++)
				{
					Bg3_ScreenDat[y*32+x]=menuback_Map[(y*32)+x];   // Back Ripely Layer
				}
			}                        

                	DmaArrayCopy(3,menuback_Character,TILE_BASE_ADDR_1,16);         // Load level data.
			DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,16);
                       	ClearTextLayer();
                        PutText(5,7,20,1,MUSICVOL,0);
                        PutText(5,11,20,1,SFXVOL,0);
                	DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);
                        switch(gGameParams.mSFXVolume)
                        {
                                case 0:
                                        PutText(5,13,20,1,PCT0,0);
        	                        break;
                                case 5:
                                        PutText(5,13,20,1,PCT5,0);
                                        break;
                                case 10:
                                        PutText(5,13,20,1,PCT10,0);
                                        break;
                                case 15:
                                        PutText(5,13,20,1,PCT15,0);
                                        break;
                                case 20:
                                        PutText(5,13,20,1,PCT20,0);
                                        break;
                                case 25:
                                        PutText(5,13,20,1,PCT25,0);
                                        break;
                                case 30:
                                        PutText(5,13,20,1,PCT30,0);
                                        break;
                                case 35:
                                        PutText(5,13,20,1,PCT35,0);
                                        break;
                                case 40:
                                        PutText(5,13,20,1,PCT40,0);
                                        break;
                                case 45:
                                        PutText(5,13,20,1,PCT45,0);
                                        break;
                                case 50:
                                        PutText(5,13,20,1,PCT50,0);
                                        break;
                                case 55:
                                        PutText(5,13,20,1,PCT55,0);
                                        break;
                                case 60:
                                        PutText(5,13,20,1,PCT60,0);
                                        break;
                                case 65:
                                        PutText(5,13,20,1,PCT65,0);
                                        break;
                                case 70:
                                        PutText(5,13,20,1,PCT70,0);
                                        break;
                                case 75:
                                        PutText(5,13,20,1,PCT75,0);
                                        break;
                                case 80:
                                        PutText(5,13,20,1,PCT80,0);
                                        break;
                                case 85:
                                        PutText(5,13,20,1,PCT85,0);
                                        break;
                                case 90:
                                        PutText(5,13,20,1,PCT90,0);
                                        break;
                                case 95:
                                        PutText(5,13,20,1,PCT95,0);
                                        break;
                                case 100:
                                        PutText(5,13,20,1,PCT100,0);
                                        break;
                        }
                        switch(gGameParams.mMusicVolume)
                        {
                                case 0:
                                        PutText(5,9,20,1,MUSICOFF,0);
        	                        break;
                                case 100:
                                        PutText(5,9,20,1,MUSICON,0);
                                        break;
                        }
                        DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);
                        break;
                }
        }
        if(gGameState==e_LEGAL_SCREEN)
        {
                switch(CurrentScreen)
                {
                case eCopyRight:
                        CurrentScreen=eNickLogo;
                        DmaArrayCopy(3,Start_Nick_Character,TILE_BASE_ADDR_1,16);         // Load level data.
                	for (y=0;y<20;y++)
                	{
                 	        for (x=0;x<30;x++)
                                {
                                        Bg3_ScreenDat[y*32+x]=Start_Nick_Map[(y*30)+x];   // Back Ripely Layer
                		}
                	}                        
			DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x1800,32);	// upload the map data
                	gTimer = 0;
                	ScreenDelay = (5*60);
                	CanSkip = FALSE;
                	break;
                case eNickLogo:
                	CurrentScreen=eTHQLogo;
                        DmaArrayCopy(3,Start_THQ_Character,TILE_BASE_ADDR_1,16);         // Load level data.
                	for (y=0;y<20;y++)
                	{
                         	for (x=0;x<30;x++)
                                {
                                        Bg3_ScreenDat[y*32+x]=Start_THQ_Map[(y*30)+x];   // Back Ripely Layer
                		}
                	}                        
			DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x1800,32);	// upload the map data
                	gTimer = 0;
                	ScreenDelay = (5*60);
                	CanSkip = FALSE;
                	break;
                case eTHQLogo:
                	CurrentScreen=eClimaxLogo;
                        DmaArrayCopy(3,Start_Climax_Character,TILE_BASE_ADDR_1,16);         // Load level data.
                	for (y=0;y<20;y++)
                	{
                                for (x=0;x<30;x++)
                                {
                                        Bg3_ScreenDat[y*32+x]=Start_Climax_Map[(y*30)+x];   // Back Ripely Layer
                                }
                	}                        
			DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x1800,32);	// upload the map data
                	gTimer = 0;
                	ScreenDelay = (5*60);
                	CanSkip = FALSE;
                	break;
                case eClimaxLogo:
                	gGameState = e_TITLE_SCREEN;
                	InitTitles();
                	break;
                default:
                	// ooops should not get here.....
                	break;
                
                }                
        }
        gFade = 2;
}