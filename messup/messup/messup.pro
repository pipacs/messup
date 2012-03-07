VERSION = 0.0.1
CONFIG += mobility qt-components qdeclarative-boostable
MOBILITY += messaging
QT += network

# Add more folders to ship with the application, here
folder_01.source = qml/messup
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

DEFINES += MESSUP_VERSION=\\\"$$VERSION\\\"
SOURCES += main.cpp

# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()
