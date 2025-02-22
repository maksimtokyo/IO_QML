#ifndef TG_WHILE_HANDLER_QT_H
#define TG_WHILE_HANDLER_QT_H

#include <QObject>
#include <QMutex>

#include "global_tg_value.h"

class tg_while_handler_qt : public QObject
{
    Q_OBJECT
public:
    tg_while_handler_qt(QObject* parent = nullptr);
public slots:
    void start_loop();
signals:
    void end_loop();

};

#endif // TG_WHILE_HANDLER_QT_H
