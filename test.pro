#-------------------------------------------------
#
# Project created by QtCreator 2016-05-20T21:04:07
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = OSG_Widget
TEMPLATE = app
INCLUDEPATH += .

QT += opengl

# Input
HEADERS += mainwindow.h viewerwidget.h
FORMS += mainwindow.ui
SOURCES += main.cpp mainwindow.cpp

INCLUDEPATH += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\include"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\OpenThreadsd.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgAnimationd.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgd.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgDBd.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgFXd.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgGAd.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgManipulatord.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgParticled.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgPresentationd.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgShadowd.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgSimd.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgTerraind.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgTextd.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgUtild.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgViewerd.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgVolumed.lib"
LIBS += "C:\Users\schoe\Desktop\Openscenegraph\x64\OpenScenegraph\lib\osgWidgetd.lib"
LIBS += "C:\Users\schoe\Desktop\OpenScenegraph\x64\OpenScenegraph\lib\osgQt.lib"
LIBS += "C:\Users\schoe\Desktop\OpenScenegraph\x64\OpenScenegraph\lib\osgQtd.lib"
