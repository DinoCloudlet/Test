#ifndef VIEWERWIDGET_H
#define VIEWERWIDGET_H

#include <QTimer>
#include <QGridLayout>

#include <osgDB/ReadFile>
#include <osgViewer/CompositeViewer>
#include <osgViewer/ViewerEventHandlers>
#include <osgGA/MultiTouchTrackballManipulator>
#include <osgQt/GraphicsWindowQt>
typedef osgQt::GraphicsWindowQt* gWindow;

class ViewerWidget : public QWidget, public osgViewer::CompositeViewer
{
public:
    ViewerWidget(QWidget* parent= 0,
                 Qt::WindowFlags f = 0,
                 osgViewer::ViewerBase::ThreadingModel threadingModel= osgViewer::CompositeViewer::SingleThreaded)
        : QWidget(parent, f)
    {
        setThreadingModel(threadingModel);

        // disable the default setting of viewer.done() by pressing Escape.
        setKeyEventSetsDone(0);

        QWidget* widget1 = addViewWidget( createGraphicsWindow(0,0,100,100), osgDB::readRefNodeFile("cow.osgt") );
        QWidget* widget2 = addViewWidget( createGraphicsWindow(0,0,100,100), osgDB::readRefNodeFile("glider.osgt") );
        QWidget* widget3 = addViewWidget( createGraphicsWindow(0,0,100,100), osgDB::readRefNodeFile("axes.osgt") );
        QWidget* widget4 = addViewWidget( createGraphicsWindow(0,0,100,100), osgDB::readRefNodeFile("fountain.osgt") );
        QWidget* popupWidget = addViewWidget( createGraphicsWindow(900,100,320,240,"Popup window",true), osgDB::readRefNodeFile("dumptruck.osgt") );
        popupWidget->show();

        QGridLayout* grid = new QGridLayout;
        grid->addWidget( widget1, 0, 0 );
        grid->addWidget( widget2, 0, 1 );
        grid->addWidget( widget3, 1, 0 );
        grid->addWidget( widget4, 1, 1 );
        setLayout( grid );

        connect( &_timer, SIGNAL(timeout()), this, SLOT(update()) );
        _timer.start( 10 );
    }
    gWindow createGraphicsWindow( int x, int y, int w, int h, const std::string& name="", bool windowDecoration=false )
    {

        osg::DisplaySettings* ds = osg::DisplaySettings::instance().get();
        osg::ref_ptr<osg::GraphicsContext::Traits> traits = new osg::GraphicsContext::Traits;
        traits->windowName = name;
        traits->windowDecoration = windowDecoration;
        traits->x = x;
        traits->y = y;
        traits->width = w;
        traits->height = h;
        traits->doubleBuffer = true;
        traits->alpha = ds->getMinimumNumAlphaBits();
        traits->stencil = ds->getMinimumNumStencilBits();
        traits->sampleBuffers = ds->getMultiSamples();
        traits->samples = ds->getNumMultiSamples();

        return new osgQt::GraphicsWindowQt(traits.get());
    }
    QWidget* addViewWidget( osgQt::GraphicsWindowQt* gw, osg::ref_ptr<osg::Node> scene )
    {
        osgViewer::View* view = new osgViewer::View;
        addView( view );

        osg::Camera* camera = view->getCamera();
        camera->setGraphicsContext( gw );

        const osg::GraphicsContext::Traits* traits = gw->getTraits();

        camera->setClearColor( osg::Vec4(0.2, 0.2, 0.6, 1.0) );
        camera->setViewport( new osg::Viewport(0, 0, traits->width, traits->height) );
        camera->setProjectionMatrixAsPerspective(30.0f, static_cast<double>(traits->width)/static_cast<double>(traits->height), 1.0f, 10000.0f );

        view->setSceneData( scene );
        view->addEventHandler( new osgViewer::StatsHandler );
        view->setCameraManipulator( new osgGA::MultiTouchTrackballManipulator );
        gw->setTouchEventsEnabled( true );
        return gw->getGLWidget();
    }
private:
    virtual void paintEvent( QPaintEvent* event )
        { frame(); }
protected:
    QTimer _timer;
};

#endif // VIEWERWIDGET_H
