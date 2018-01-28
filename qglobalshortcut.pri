win32 {
    CONFIG(release, debug|release) {
        LIBS += -L$$shadowed(release) -lqglobalshortcut
    }
    CONFIG(debug, debug|release) {
        LIBS += -L$$shadowed(debug) -lqglobalshortcut
    }
} else {
    LIBS += -L$$shadowed($$PWD) -lqglobalshortcut
}

PRE_TARGETDEPS += $$shadowed($$PWD)

INCLUDEPATH += $$PWD/src
DEPENDPATH += $$PWD/src
