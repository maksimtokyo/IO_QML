#include "tg_controller_qt.h"

tg_controller_qt::tg_controller_qt(QObject* parent) : QObject(parent)
{
    tg_qt::Init_TgQtClient();
    sup_thread = new QThread;
    handler = new tg_while_handler_qt;

    handler->moveToThread(sup_thread);

    QObject::connect(sup_thread, &QThread::started, handler, &tg_while_handler_qt::start_loop);
    QObject::connect(handler, &tg_while_handler_qt::end_loop, sup_thread, &QThread::quit);
    QObject::connect(handler, &tg_while_handler_qt::end_loop, handler, &QThread::deleteLater);
    QObject::connect(sup_thread, &QThread::finished, sup_thread, &QThread::deleteLater);
    QObject::connect(tg_qt::TgQtClient.get(), &tg_peson_qt::send_ans_parametrs , this, &tg_controller_qt::get_ans_parametrs);
    QObject::connect(this, &tg_controller_qt::stringstateChanged, this, &tg_controller_qt::paramaters_handler);
    QObject::connect(this, &tg_controller_qt::getChathistory, this, &tg_controller_qt::getChatHistory);
    QObject::connect(this, &tg_controller_qt::messagestringChanged, this, &tg_controller_qt::qml_sendmessage);
    sup_thread->start();
}


void tg_controller_qt::get_ans_parametrs(std::int64_t id)
{
    this->cur_id = id;
}

void tg_controller_qt::need_exit()
{
    tg_qt::Restart_TgQtClient();
    PersonTgQt::ChangeLoopState();
}

void tg_controller_qt::paramaters_handler()
{
    if (m_stringstate == " ")
        return;

    switch (cur_id)
    {
    case td::td_api::authorizationStateWaitPhoneNumber::ID:{
        tg_qt::TgQtClient->send_phone(m_stringstate);
        break;
    }
    case td::td_api::authorizationStateWaitCode::ID:{

        tg_qt::TgQtClient->send_code(m_stringstate);
        break;
    }
    case td::td_api::authorizationStateWaitPassword::ID:{
        tg_qt::TgQtClient->send_password(m_stringstate);
        break;
    }
    case td::td_api::authorizationStateWaitRegistration::ID:
    case td::td_api::authorizationStateWaitOtherDeviceConfirmation::ID:
    case td::td_api::authorizationStateWaitEmailCode::ID:
    case td::td_api::authorizationStateWaitEmailAddress::ID:
    case td::td_api::authorizationStateReady::ID:
    default:
    }

}


void tg_controller_qt::getChatHistory(std::int64_t id)
{
    this->controller_id = id;
    if (tg_qt::TgQtClient->chatsHistory[controller_id] == nullptr)
    {
        PersonTgQt::ChangeLoopState();
        tg_qt::TgQtClient->send_chatlist(controller_id);
    }
    else{
        return;
    }
}

void tg_controller_qt::qml_sendmessage(QString message)
{
    PersonTgQt::ChangeLoopState();
    tg_qt::TgQtClient->send_message(message, controller_id);
}


void tg_controller_qt::logged_correct(){
    setlogged(true);
}

