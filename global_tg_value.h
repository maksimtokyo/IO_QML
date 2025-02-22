#ifndef GLOBAL_TG_VALUE_H
#define GLOBAL_TG_VALUE_H
#include "tg_peson_qt.h"
#include <atomic>

#include <QMutex>

namespace tg_qt{
    void Init_TgQtClient();
    void Restart_TgQtClient();
    extern std::unique_ptr<tg_peson_qt> TgQtClient;
}

#endif // GLOBAL_TG_VALUE_H
