CC = gcc  #编译器
CFLAGS:=$(shell pkg-config --cflags gtk+-2.0) -Werror -Wall -g  #相关配置
LDFLAGS:=$(shell pkg-config --libs gtk+-2.0)
TARGET:=liang  #最终生成目标

ALL: $(TARGET)

$(TARGET): ui.o signalAction.o files.o

clean:
	rm -f *.o *.gch TAGS $(TARGET)

TAGS:
	find -name "*.[ch]" | xargs ctags -e

.PHONY: clean TAGS
