
#ifndef TG_CONTROLLER_QT_H
#define TG_CONTROLLER_QT_H

#include <QObject>
#include <QThread>
#include <QMutex>
#include <QtQml/qqmlregistration.h>
#include <QString>

#include "global_tg_value.h"
#include "tg_while_handler_qt.h"

#include <chrono>

class tg_controller_qt : public QObject
{
    Q_OBJECT
    QML_NAMED_ELEMENT(Tontroll)
    Q_PROPERTY(QString stringstate READ stringstate WRITE setStringstate NOTIFY stringstateChanged)
    Q_PROPERTY(tg_chatslistmodel* chatsmodel READ chatsmodel NOTIFY chatsmodeChanged)
    Q_PROPERTY(QTgChatHistory* chatHistory READ chatHistory NOTIFY chatHistoryChanged)
    Q_PROPERTY(std::int64_t mainuserid READ mainuserid NOTIFY mainuseridChanged)
    Q_PROPERTY(QString messagestring READ messagestring WRITE setmessagestring NOTIFY messagestringChanged)
    Q_PROPERTY(std::int64_t fileid READ fileid WRITE setfileid NOTIFY fileidChanged)
    Q_PROPERTY(bool logged READ logged WRITE setlogged NOTIFY loggedChanged)
    Q_PROPERTY(int indexmessage READ indexmessage WRITE setindexmessage NOTIFY indexmessageChanged)

public:

    using Object = td::td_api::object_ptr<td::td_api::Object>;
    tg_controller_qt(QObject* parent = nullptr);



    void setindexmessage(int indexmessage)
    {
        if (m_indexmessage == indexmessage)
        {
            return;
        }

        m_indexmessage = indexmessage;
        PersonTgQt::ChangeLoopState();
        tg_qt::TgQtClient->send_getfile(m_fileid, controller_id, m_indexmessage);
        emit indexmessageChanged();
    }

    void setmessagestring(QString messagestring)
    {
        if (m_messagestring == messagestring)
        {
            return;
        }
        m_messagestring = messagestring;
        emit messagestringChanged(messagestring);
    }


    void setStringstate(QString stringstate)
    {
        if (m_stringstate == stringstate)
        {
            return;
        }
        m_stringstate = stringstate;
        emit stringstateChanged();
    }


    void setlogged(bool logged)
    {
        if (m_logged == logged)
            return;

        m_logged = logged;
        emit loggedChanged();
    }


    void setfileid(std::int64_t fileid)
    {
        if (fileid == m_fileid)
        {
            return;
        }

        m_fileid = fileid;
        emit fileidChanged();
    }

    tg_chatslistmodel* chatsmodel() const {return tg_qt::TgQtClient->chat_model;}
    QTgChatHistory* chatHistory() const {
        qDebug() << controller_id << "!!";
        return tg_qt::TgQtClient->chatsHistory[controller_id];
    }
    QString stringstate() const { return m_stringstate;}
    QString messagestring() const { return m_messagestring; }
    std::int64_t fileid() const { return m_fileid;}
    int indexmessage() const { return m_indexmessage;}
    bool logged() const {return m_logged;}
    std::int64_t mainuserid() const { return tg_qt::TgQtClient->get_mainuserid(); }

    ~tg_controller_qt()
    {
        if (sup_thread) {sup_thread->quit();}
    }


public slots:

    void get_ans_parametrs(std::int64_t id);
    void paramaters_handler();
    void need_exit();
    void getChatHistory(std::int64_t id);
    void qml_sendmessage(QString message);
    void logged_correct();

signals:

    void stringstateChanged();
    void statusloaderChanged();
    void chatsmodeChanged();
    void chatHistoryChanged();
    void getChathistory(std::int64_t id);
    void start_handl();
    void loadedViewChanged();
    void mainuseridChanged();
    void createQList(td::td_api::messages* message);
    void messagestringChanged(QString message);
    void loggedChanged();
    void fileidChanged();
    void indexmessageChanged();





private:

    QThread* sup_thread;
    tg_while_handler_qt* handler;
    QTgChatHistory* curchathistory;

    QString m_stringstate{""};
    QString m_messagestring{""};

    QHash<std::int32_t, QTgChatHistory*> chatsHistory;

    int m_indexmessage{-1};
    std::int64_t controller_id{0};
    std::int64_t m_fileid{-1};


    std::int64_t cur_id{0};


    bool m_logged {true};
};

#endif // TG_CONTROLLER_QT_H
