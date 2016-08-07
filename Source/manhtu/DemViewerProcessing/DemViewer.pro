#-------------------------------------------------
#
# Project created by QtCreator 2016-07-05T19:44:27
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = DemViewer
TEMPLATE = app


SOURCES += main.cpp\
    View/graphics.cpp \
    Controller/actionlistener.cpp \
    View/graphicscomposite.cpp \
    View/menu.cpp \
    Controller/defaultcontroller.cpp \
    Controller/modulecontroller.cpp \
    Modules/Files/filemodule.cpp \
    Modules/Files/filegraphics.cpp \
    Modules/Files/filecontroller.cpp \
    View/graphicsglobal.cpp \
    View/scrollviewport.cpp \
    View/logo.cpp \
    View/mainwindow.cpp \
    Model/demmodel.cpp

HEADERS  += \
    Controller/defaultcontroller.h \
    Controller/actionlistener.h \
    Controller/actioninterface.h \
    Model/deminterface.h \
    Controller/modulecontroller.h \
    View/graphics.h \
    Modules/moduleinterface.h \
    View/graphicscomposite.h \
    View/menu.h \
    Modules/Files/filemodule.h \
    Modules/Files/filegraphics.h \
    Modules/Files/filecontroller.h \
    View/graphicsglobal.h \
    View/scrollviewport.h \
    View/logo.h \
    View/mainwindow.h \
    Model/demmodel.h

FORMS    += widget.ui

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../../../../../usr/local/Cellar/gdal/1.11.3_1/lib/release/ -lgdal
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../../../../../usr/local/Cellar/gdal/1.11.3_1/lib/debug/ -lgdal
else:unix: LIBS += -L$$PWD/../../../../../../../../usr/local/Cellar/gdal/1.11.3_1/lib/ -lgdal

INCLUDEPATH += $$PWD/../../../../../../../../usr/local/Cellar/gdal/1.11.3_1/include
DEPENDPATH += $$PWD/../../../../../../../../usr/local/Cellar/gdal/1.11.3_1/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../../../usr/local/Cellar/gdal/1.11.3_1/lib/release/libgdal.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../../../usr/local/Cellar/gdal/1.11.3_1/lib/debug/libgdal.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../../../usr/local/Cellar/gdal/1.11.3_1/lib/release/gdal.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../../../usr/local/Cellar/gdal/1.11.3_1/lib/debug/gdal.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../../../../../../usr/local/Cellar/gdal/1.11.3_1/lib/libgdal.a