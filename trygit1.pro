TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += static
QMAKE_CFLAGS_DEBUG += -std=gnu99 -Wall -Wextra
QMAKE_CFLAGS_RELEASE += -std=gnu99 -Wall -Wextra
QMAKE_LFLAGS += -static -static-libgcc -static-libstdc++
INCLUDEPATH += $(WORKSPACE)/Util/
INCLUDEPATH += $(WORKSPACE)/include/
INCLUDEPATH += $(WORKSPACE)/include/SDL2/
LIBS += $(WORKSPACE)/lib/libUtil.a
TARGETDEPS += $(WORKSPACE)/lib/libUtil.a
LIBS += $(WORKSPACE)/lib/libutillery.a
LIBS += $(WORKSPACE)/lib/libssl.a
LIBS += $(WORKSPACE)/lib/libcrypto.a
LIBS += -lmingw32
LIBS += $(WORKSPACE)/lib/libSDL2main.a
LIBS += $(WORKSPACE)/lib/libSDL2.a
LIBS += -lgdi32
LIBS += -lwinmm
LIBS += -lole32
LIBS += -loleaut32
LIBS += -limm32
LIBS += -lversion
LIBS += -lz

SOURCES += main.c

