.BMPFILES = Title_Main.bmp
.CFILES = $(.BMPFILES:.bmp=.c)
.OFILES = $(.BMPFILES:.bmp=.o)
_AGBDIR = ($AGBDIR)
CFLAGS	= -g -O2 -I$(AGBDIR)/include -mthumb-interwork -nostdlib

TARGET_ARC = libTitlesGFX.a

$(TARGET_ARC): $(.OFILES)
	ar rcs $(TARGET_ARC) $(.OFILES)

Title_Main.c: Title_Main.bmp
	bmp2map -bm -o $@ $<

clean:
	-rm $(TARGET_ARC) $(.OFILES) $(.CFILES)
