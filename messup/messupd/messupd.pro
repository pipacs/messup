#-------------------------------------------------
#
# Project created by QtCreator 2012-03-05T00:16:12
#
#-------------------------------------------------

QT       += core

QT       -= gui

TARGET = messupd
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += main.cpp

contains(MEEGO_EDITION,harmattan) {
    target.path = /opt/messupd/bin
    INSTALLS += target
}

OTHER_FILES += \
    messupd.conf

daemonconf.path = /etc/init/apps
daemonconf.files = exampleapp.conf
INSTALLS += daemonconf
