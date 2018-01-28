QT += widgets

CONFIG += c++11

SOURCES += src/qglobalshortcut.cc
win32:      SOURCES += src/qglobalshortcut_win.cc
unix:!macx: SOURCES += src/qglobalshortcut_x11.cc
macx:       SOURCES += src/qglobalshortcut_macx.cc

HEADERS += src/qglobalshortcut.h

INCLUDEPATH += src

macx {
    warning(MacOS X implementation is not tested)
    LIBS += -framework Carbon
}
unix {
    QT += x11extras
    LIBS += -lX11 -lxcb
}
win32 {
    DEFINES += WIN32_LEAN_AND_MEAN
}
