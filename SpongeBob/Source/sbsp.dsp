# Microsoft Developer Studio Project File - Name="sbsp" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=sbsp - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "sbsp.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "sbsp.mak" CFG="sbsp - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "sbsp - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "sbsp - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/SpongeBob/source", CAAAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "sbsp - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /FR /YX /FD /c
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# Begin Custom Build
InputPath=.\Release\sbsp.exe
SOURCE="$(InputPath)"

"sbsp.bin" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	make

# End Custom Build

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /out:"SPONGEBOB'S INFLATED UNDERPANTS" /pdbtype:sept
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Desc=make
PreLink_Cmds=make
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "sbsp - Win32 Release"
# Name "sbsp - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Group "Asm"

# PROP Default_Filter ".s"
# Begin Source File

SOURCE=.\Crt0.s
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\Rom_Header.s
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Source File

SOURCE=.\Game.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\Main.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\random.c

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Scroll_Engine.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\Sinecos.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\SprEng_Animate.c

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\SprEng_Common.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\SprEng_Control.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\SprEng_Display.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\SprEng_Misc1.c

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\SprEng_Misc2.c

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\SprEng_Misc3.c

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\SprEng_SpongeBob.c

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\StartUp.c

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Text_Sys.c

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Titles.c
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\Game.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\Includes.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\Main.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\random.h

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Scroll_Engine.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\Sinecos.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\SprEng_Animate.h

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\SprEng_Common.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\SprEng_Control.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\SprEng_Display.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\StartUp.h

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Text_Sys.h

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Titles.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\TitlesData.h
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# Begin Group "Language Files"

# PROP Default_Filter ".lan"
# Begin Source File

SOURCE=.\American.lan

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\English.lan

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\French.lan

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\German.lan

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Spanish.lan

!IF  "$(CFG)" == "sbsp - Win32 Release"

!ELSEIF  "$(CFG)" == "sbsp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=.\Makefile
# PROP Exclude_From_Build 1
# End Source File
# End Target
# End Project
