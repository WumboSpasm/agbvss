.CFILES = Level1.c

.OFILES = $(.CFILES:.c=.o)

_AGBDIR = ($AGBDIR)

CFLAGS	= -g -O2 -I$(AGBDIR)/include -mthumb-interwork -nostdlib

TARGET_ARC = libMaps.a

$(TARGET_ARC): $(.OFILES)
	ar rcs $(TARGET_ARC) $(.OFILES)

clean:
	-rm $(TARGET_ARC) $(.OFILES)
