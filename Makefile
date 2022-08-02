CC = g++
TARGET = app.out
OBJS = main.o kor.o usa.o

CFLAGS = -Wall -O2 -g
LDFLAGS = -lc

all : $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) -$(LDFLASGS) -o $@ $^

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: clean
clean :
	rm -f $(OBJS) $(TARGET)
