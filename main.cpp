#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "td/telegram/td_api.h"


int main(int argc, char *argv[])
{

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    engine.loadFromModule("IO_QML", "Main");



    return app.exec();

}
