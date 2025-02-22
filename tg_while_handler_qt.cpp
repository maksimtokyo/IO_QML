#include "tg_while_handler_qt.h"

tg_while_handler_qt::tg_while_handler_qt(QObject* parent) : QObject(parent) {}



void tg_while_handler_qt::start_loop()
{
    while(PersonTgQt::pls_stop)
    {
        if (tg_qt::TgQtClient && PersonTgQt::pls_stop)
        {

            tg_qt::TgQtClient->send_req();
        }
    }
}

