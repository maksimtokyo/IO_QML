/****************************************************************************
** Generated QML type registration code
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <QtQml/qqml.h>
#include <QtQml/qqmlmoduleregistration.h>

#include <tg_controller_qt.h>


#if !defined(QT_STATIC)
#define Q_QMLTYPE_EXPORT Q_DECL_EXPORT
#else
#define Q_QMLTYPE_EXPORT
#endif
Q_QMLTYPE_EXPORT void qml_register_types_IO_QML()
{
    qmlRegisterTypesAndRevisions<tg_controller_qt>("IO_QML", 1);
    qmlRegisterModule("IO_QML", 1, 0);
}

static const QQmlModuleRegistration iOQMLRegistration("IO_QML", qml_register_types_IO_QML);
