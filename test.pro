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
INCLUDEPATH += $$(PWD)/OpenScenegraph/include
LIBS += $$(PWD)/OpenScenegraph/lib/OpenThreadsd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgAnimationd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgDBd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgFXd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgGAd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgManipulatord.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgParticled.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgPresentationd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgShadowd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgSimd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgTerraind.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgTextd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgUtild.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgViewerd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgVolumed.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgWidgetd.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgQt.lib
LIBS += $$(PWD)/OpenScenegraph/lib/osgQtd.lib
