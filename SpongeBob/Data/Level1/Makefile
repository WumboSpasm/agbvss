.BMPFILES = Lev1bg1.bmp Lev1bg2.bmp Lev1bg3.bmp
.CFILES = $(.BMPFILES:.bmp=.c)
.OFILES = $(.BMPFILES:.bmp=.o)
_AGBDIR = ($AGBDIR)
CFLAGS	= -g -O2 -I$(AGBDIR)/include -mthumb-interwork -nostdlib

TARGET_ARC = libLev1bgbmp.a

$(TARGET_ARC): $(.OFILES)
	ar rcs $(TARGET_ARC) $(.OFILES)

Lev1bg1.c: Lev1bg1.bmp
	bmp2map -f -o $@ $<
Lev1bg2.c: Lev1bg2.bmp
	bmp2map -f -o $@ $<
Lev1bg3.c: Lev1bg3.bmp
	bmp2map -f -o $@ $<

clean:
	-rm $(TARGET_ARC) $(.OFILES) $(.CFILES)
