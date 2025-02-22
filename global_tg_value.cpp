#include "global_tg_value.h"

std::unique_ptr<tg_peson_qt> tg_qt::TgQtClient;

void tg_qt::Init_TgQtClient()
{
    TgQtClient = std::make_unique<tg_peson_qt>();
}

void tg_qt::Restart_TgQtClient()
{
    TgQtClient.reset(new tg_peson_qt());
}

