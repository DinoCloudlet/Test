#include "mainwindow.h"
#include <QApplication>
#include "viewerwidget.h"

int main(int argc, char *argv[])
{
    int i = 10;
    //osg::ArgumentParser arguments(&argc, argv);

    osgViewer::ViewerBase::ThreadingModel threadingModel = osgViewer::ViewerBase::SingleThreaded;
    /*
    while (arguments.read("--SingleThreaded")) threadingModel = osgViewer::ViewerBase::SingleThreaded;
    while (arguments.read("--CullDrawThreadPerContext")) threadingModel = osgViewer::ViewerBase::CullDrawThreadPerContext;
    while (arguments.read("--DrawThreadPerContext")) threadingModel = osgViewer::ViewerBase::DrawThreadPerContext;
    while (arguments.read("--CullThreadPerCameraDrawThreadPerContext")) threadingModel = osgViewer::ViewerBase::CullThreadPerCameraDrawThreadPerContext;
*/
    QApplication a(argc, argv);
    MainWindow w;

    ViewerWidget *viewWidget = new ViewerWidget(0, Qt::Widget, threadingModel);
    //viewWidget->setGeometry( 100, 100, 800, 600 );
/*
    viewWidget->show();
    */
    w.show();
    return a.exec();
}
