.BMPFILES = Patrick64.bmp
 
.CFILES = $(.BMPFILES:.bmp=.c)

.OFILES = $(.BMPFILES:.bmp=.o)

_AGBDIR = ($AGBDIR)

CFLAGS	= -g -O2 -I$(AGBDIR)/include -mthumb-interwork -nostdlib

TARGET_ARC = lib\Misc_Sprs.a

$(TARGET_ARC): $(.OFILES)
	ar rcs $(TARGET_ARC) $(.OFILES)

Patrick64.c: Patrick64.bmp
	bmp2agb -onp $@ $<

clean:
	-rm $(TARGET_ARC) $(.OFILES) $(.CFILES)
