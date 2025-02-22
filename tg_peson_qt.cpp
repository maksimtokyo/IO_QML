#include "tg_peson_qt.h"

QMutex mutex;




void PersonTgQt::ChangeLoopState(){
    if (pls_stop) {
        pls_stop = false;
    }
    else {pls_stop = true;}
}
std::atomic<bool> PersonTgQt::pls_stop = true;

tg_peson_qt::tg_peson_qt(QObject* parent) : QObject(parent) {
    td::ClientManager::execute(td::td_api::make_object<td::td_api::setLogVerbosityLevel>(1));
    q_client_manager = std::make_unique<td::ClientManager>();
    q_client_id = q_client_manager->create_client_id();
    chat_model = new tg_chatslistmodel;
    auto req = td::td_api::make_object<td::td_api::getOption>("version");
    q_client_manager->send(q_client_id, next_req(), std::move(req));
}

void tg_peson_qt::on_authorization_state_update()
{
    td::td_api::downcast_call(*q_auth_state,
                              overloaded(
                                  [this](td::td_api::authorizationStateReady &){
                                      auto req  = td::td_api::make_object<td::td_api::getChats>(nullptr, 100);
                                      send_request(std::move(req),
                                                   [this](Object object){
                                                       auto chats = td::move_tl_object_as<td::td_api::chats>(object);
                                                       for (auto id_chat : chats->chat_ids_)
                                                       {
                                                            auto req = td::td_api::make_object<td::td_api::getChat>(id_chat);
                                                            q_client_manager->send(q_client_id, next_req(), std::move(req));

                                                            while(true)
                                                            {
                                                                auto response = q_client_manager->receive(0);
                                                                if (response.object)
                                                                {
                                                                    if (response.object->get_id() == td::td_api::chat::ID)
                                                                    {
                                                                        auto ans = td::move_tl_object_as<td::td_api::chat>(response.object);
                                                                        chat_model->push_chat(ans->id_, QString::fromStdString(ans->title_));
                                                                        break;
                                                                    }
                                                                }
                                                            }
                                                       }

                                        });
                                  },

                                  [this](td::td_api::authorizationStateLoggingOut &){
                                  },

                                  [this](td::td_api::authorizationStateClosing &){ qDebug() << "stupid work3"; },
                                  [this](td::td_api::authorizationStateClosed &){
                                      emit restart_me();
                                  },
                                  [this](td::td_api::authorizationStateWaitPhoneNumber &){
                                      emit send_ans_parametrs(q_auth_state->get_id());
                                      PersonTgQt::ChangeLoopState();

                                  },
                                  [this](td::td_api::authorizationStateWaitEmailAddress &){

                                      std::string email_ad = "ma";
                                  },
                                  [this](td::td_api::authorizationStateWaitEmailCode &){

                                  },
                                  [this](td::td_api::authorizationStateWaitCode &){
                                      emit send_ans_parametrs(q_auth_state->get_id());
                                       PersonTgQt::ChangeLoopState();

                                  },
                                  [this](td::td_api::authorizationStateWaitRegistration &){
                                      std::string first_n;
                                      std::string second_n;
                                  },
                                  [this](td::td_api::authorizationStateWaitPassword &){
                                      qDebug() << "stupid work7";
                                      emit send_ans_parametrs(q_auth_state->get_id());
                                      PersonTgQt::ChangeLoopState();
                                      std::string password = "ad";
                                  },
                                  [this](td::td_api::authorizationStateWaitOtherDeviceConfirmation &state) { qDebug() << "stupid work8"; },
                                  [this](td::td_api::authorizationStateWaitTdlibParameters &){
                                      auto request = td::td_api::make_object<td::td_api::setTdlibParameters>();
                                      request->database_directory_ = "tdlib/lolp";
                                      request->use_message_database_ = true;
                                      request->use_secret_chats_ = true;
                                      request->api_id_ = 24056062;
                                      request->api_hash_ = "bf793de4c780164ebc16d5fce390e69e";
                                      request->system_language_code_ = "ru";
                                      request->device_model_ = "Desktop";
                                      request->application_version_ = "1.0";
                                      q_client_manager->send(q_client_id, next_req(), std::move(request));
                                  }));
}


std::int32_t tg_peson_qt::get_id_authorizatinonstate() const
{
    if (q_auth_state) return q_auth_state->get_id();
    return 0;
}



void tg_peson_qt::send_request(td::td_api::object_ptr<td::td_api::Function> f, std::function<void(Object)> handler)
{
    auto query_id = next_req();
    if (handler)
    {
        q_handlers.emplace(query_id, std::move(handler));
    }
    q_client_manager->send(q_client_id, query_id, std::move(f));
}



void tg_peson_qt::process_update(td::td_api::object_ptr<td::td_api::Object> update)
{
    td::td_api::downcast_call(
        *update, overloaded(
            [this](td::td_api::updateAuthorizationState &update_authorization_state){
                q_auth_state= std::move(update_authorization_state.authorization_state_);
                on_authorization_state_update();
            },
            [this](td::td_api::updateNewChat &update_new_chat)
            {
            },
            [this](td::td_api::updateChatTitle &update_chat_title){
            },
            [this](td::td_api::updateNewMessage &update_new_message){

                switch (update_new_message.message_->content_->get_id()){
                    case td::td_api::messageText::ID: {
                        std::string text;
                        text = static_cast<td::td_api::messageText &>(*update_new_message.message_->content_).text_->text_;
                        if (chatCreated(update_new_message.message_->chat_id_)){
                            chatsHistory[update_new_message.message_->chat_id_]->push_message(QString::fromStdString(text), update_new_message.message_->sender_id_->get_id());
                        }
                        else{
                            return;
                        }
                        break;
                    }
                    case td::td_api::messageAudio::ID:{
                        if (chatCreated(update_new_message.message_->chat_id_)){
                            auto  &audio = static_cast<td::td_api::messageAudio &>(*update_new_message.message_->content_);
                            chatsHistory[update_new_message.message_->chat_id_]->push_message(QString::fromStdString(audio.audio_->file_name_), update_new_message.message_->sender_id_->get_id(), "message_file", audio.audio_->audio_->id_);
                        }
                        break;
                    }
                    default:
                }
            },
            [this](td::td_api::updateFile &update_file){
                auto file = update_file.file_.get();
                if(file->local_->is_downloading_completed_)
                {
                    if (chatsHistory[cur_chat] != nullptr){
                        chatsHistory[cur_chat]->setpath(cur_message_index, QString::fromStdString(file->local_->path_));
                    }
                }
                else{
                    if (chatsHistory[cur_chat] != nullptr)
                    {


                        chatsHistory[cur_chat]->updatefile((double)file->local_->downloaded_size_/file ->size_, cur_message_index);
                    }
                }

            },
            [](auto &update) {}));
}




void tg_peson_qt::process_response(td::ClientManager::Response response)
{
    if (!response.object) return;

    if (response.object->get_id() == td::td_api::messages::ID)
    {
        auto message = td::move_tl_object_as<td::td_api::messages>(response.object);
        emit createQList(message.release());
    }

    if (response.request_id == 0)
    {
        return process_update(std::move(response.object));
    }

    auto it = q_handlers.find(response.request_id);

    if (it != q_handlers.end())
    {
        it->second(std::move(response.object));
        q_handlers.erase(it);
    }
}

void tg_peson_qt::send_req()
{
    if (q_client_manager)
    {
        auto resp = q_client_manager->receive(10);
        process_response(std::move(resp));
    }
}


void tg_peson_qt::send_message(QString input_messag, std::int64_t id)
{
    auto message = td::td_api::make_object<td::td_api::sendMessage>();
    message->chat_id_ = id;
    auto message_content = td::td_api::make_object<td::td_api::inputMessageText>();
    message_content->text_ = td::td_api::make_object<td::td_api::formattedText>();
    message_content->text_->text_ = input_messag.toStdString();
    message->input_message_content_ = std::move(message_content);
    send_request(std::move(message), [this](Object object) {qDebug() << "Message sended"; });
    PersonTgQt::ChangeLoopState();

}

bool tg_peson_qt::chatCreated(std::int64_t& id)
{
    if (chatsHistory[id] != nullptr) {
        return true;
    }
    return false;
}

void tg_peson_qt::send_phone(const QString &phone)
{
    auto request = td::td_api::make_object<td::td_api::setAuthenticationPhoneNumber>(phone.toStdString(), nullptr);
    send_request(std::move(request), [this](Object object) {qDebug() << "phone sended";});
    PersonTgQt::ChangeLoopState();
}

void tg_peson_qt::send_code(const QString &code)
{
    auto request = td::td_api::make_object<td::td_api::checkAuthenticationCode>(code.toStdString());
    send_request(std::move(request), [this](Object object) {qDebug() << "code sended";});
     PersonTgQt::ChangeLoopState();
}

void tg_peson_qt::send_password(const QString &password)
{
    auto request = td::td_api::make_object<td::td_api::checkAuthenticationPassword>(password.toStdString());
    send_request(std::move(request), [this](Object object){qDebug() << "password sended";});
     PersonTgQt::ChangeLoopState();
}

void tg_peson_qt::send_chatlist(std::int64_t &id)
{

    chatsHistory[id] = new QTgChatHistory;
    QObject::connect(this, &tg_peson_qt::createQList, chatsHistory[id], &QTgChatHistory::createQList);
    auto request = td::td_api::make_object<td::td_api::getChatHistory>(id, 0, 0, 100, false);
    send_request(std::move(request), [this](Object object) {qDebug()<< "Request for chat listsended";});
    PersonTgQt::ChangeLoopState();
}

void tg_peson_qt::send_getfile(std::int64_t file_id, std::int64_t chatid, int message_index)
{


    cur_chat = chatid;
    cur_message_index = message_index;


    qDebug() << "Chat: " <<  cur_chat << " " << cur_message_index;



    auto download_request = td::td_api::make_object<td::td_api::downloadFile>();
    download_request = td::td_api::make_object<td::td_api::downloadFile>();
    download_request->file_id_ = file_id;
    download_request->priority_ = 1;
    download_request->offset_ = 0;
    download_request->limit_ = 0;
    download_request->synchronous_ = false;

    send_request(std::move(download_request), [this](Object object) {
        if (object->get_id() == td::td_api::file::ID)
        {
            auto file = td::move_tl_object_as<td::td_api::file>(object);
            chatsHistory[cur_chat]->setpath(cur_message_index, QString::fromStdString(file->local_->path_));
        }
    });
    PersonTgQt::ChangeLoopState();
}
