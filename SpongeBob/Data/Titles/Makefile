.BMPFILES = Title_Main.bmp Title_Main_2.bmp
.CFILES = Title_Main_LZ.c Title_Main_2_LZ.c
.OFILES = Title_Main_LZ.o Title_Main_2_LZ.o
_AGBDIR = ($AGBDIR)
CFLAGS	= -g -O2 -I$(AGBDIR)/include -mthumb-interwork -nostdlib

TARGET_ARC = libTitlesGFX.a

$(TARGET_ARC): $(.OFILES)
	ar rcs $(TARGET_ARC) $(.OFILES)

Title_Main_LZ.c: Title_Main.bmp
	bmp2agb -bm -l 2 $<

Title_Main_2_LZ.c: Title_Main_2.bmp
	bmp2agb -bm -l 2 $<

clean:
	-rm $(TARGET_ARC) $(.OFILES) $(.CFILES)
