#ifndef TG_PESON_QT_H
#define TG_PESON_QT_H

#include <QObject>
#include <QDebug>
#include <QMutex>
#include <QString>
#include <QMap>
#include <QList>


#include <td/telegram/Client.h>
#include <td/telegram/td_api.h>
#include <td/telegram/td_api.hpp>

/*CUSTOM INDCLUDES*/

#include "tg_chatslistmodel.h"


#include <iostream>
#include <memory>
#include <cstdint>
#include <map>
#include <functional>



namespace PersonTgQt{
    void ChangeLoopState();
    extern std::atomic<bool> pls_stop;
}


extern QMutex mutex;

template <typename... Ls>
struct overload : Ls...{
    explicit overload(Ls... ls) noexcept : Ls{std::move(ls)}...{}
    using Ls::operator()...;
};

template<class... F>
auto overloaded(F... f)
{
    return overload<F...>(f...);
}

class tg_peson_qt : public QObject
{
    Q_OBJECT

public:

    using Object = td::td_api::object_ptr<td::td_api::Object>;

    tg_peson_qt(QObject* parent = nullptr);
    void send_req();
    void send_message(QString input_messag, std::int64_t id);
    void send_request(td::td_api::object_ptr<td::td_api::Function> f, std::function<void(Object)> handler);
    void send_phone(const QString &phone);
    void send_code(const QString &code);
    void send_password(const QString &password);
    void send_chatlist(std::int64_t& id);
    void send_getfile(std::int64_t file_id, std::int64_t chatid, int message_index);





    std::int32_t get_id_authorizatinonstate() const;
    std::int32_t get_ci() const { return q_client_id; }
    std::int64_t next_req(){return ++q_next_req;}
    std::int64_t get_mainuserid() { return main_user_id; }
    const std::unique_ptr<td::ClientManager>& get_cm() const{ return q_client_manager; }
    QHash<std::int32_t, QTgChatHistory*> chatsHistory;

    tg_chatslistmodel* chat_model;

signals:

    void send_ans_parametrs(std::int32_t id);
    void restart_me();
    void createQList(td::td_api::messages* message);


private:

    std::int64_t main_user_id{0};
    std::unique_ptr<td::ClientManager> q_client_manager;
    std::int32_t q_client_id{0};
    td::td_api::object_ptr<td::td_api::AuthorizationState> q_auth_state;
    std::int64_t q_next_req{0};
    std::map<std::int64_t, std::function<void(Object)>> q_handlers;

    /*exp*/

    std::int64_t cur_chat{0};
    int cur_message_index{0};

    /*exp*/



    bool chatCreated(std::int64_t& id);


    /*methods*/
    void process_response(td::ClientManager::Response response);
    void process_update(td::td_api::object_ptr<td::td_api::Object> update);
    void on_authorization_state_update();

    /* Qt types*/
    QMap<std::int64_t, QString> chat_title;

};

#endif // TG_PESON_QT_H
