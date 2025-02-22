#ifndef TG_CHATSLISTMODEL_H
#define TG_CHATSLISTMODEL_H

#include <QObject>
#include <QAbstractListModel>
#include <QList>

#include <td/telegram/td_api.h>
#include <td/telegram/Client.h>
#include <td/telegram/td_api.hpp>
#include <cstdint>
#include <vector>



class tg_chat{
public:

    tg_chat(std::int64_t chat_id = 0, QString chat_title = "");
    std::int64_t    chat_id() const { return m_chat_id; }
    QString chat_title() const { return m_chat_title; }
private:

    std::int64_t m_chat_id;
    QString m_chat_title;
};

class tg_message{

public:
    tg_message(QString message = "", std::int64_t id = 0, QString messagetype = "message");
    QString chatmessage() const { return m_message; }
    QString messagtype() const { return  m_message_type; }
    std::int64_t chatuserid() const { return m_chatuserid;}

private:
    QString m_message;
    QString m_message_type;
    std::int64_t m_chatuserid;
};

class tg_message_file : public tg_message
{

public:
    tg_message_file(QString message = "", std::int64_t id = 0, QString messagetype = "message_file", std::int64_t file_id = 0, QString path = "");
    std::int64_t chatfileid() const { return m_fileid; }
    QString path() const { return m_path; }

    double valuesize() const { return m_valuesize; }

    void setvaluesize(double value) {m_valuesize = value; }
    void setpath(QString path) { m_path = path;}

private:

    std::int64_t m_fileid;
    double m_valuesize;

    QString m_path;
};


class tg_chatslistmodel : public QAbstractListModel
{
    Q_OBJECT
public:

    enum Roles{
        ChatTitle,
        ChatId
    };

    tg_chatslistmodel(QObject* parent = nullptr);
    QHash<int, QByteArray> roleNames() const;
    int rowCount(const QModelIndex &parent) const;
    int size_m() const {return mDatas.size();}
    QVariant data(const QModelIndex& index, int role) const;
    void push_chat(std::int64_t c_id, QString c_title);
private:
    QList<tg_chat> mDatas;
};



class QTgChatHistory : public QAbstractListModel
{
    Q_OBJECT

public:

    enum Roles{
        ChatMessage,
        ChatUserId,
        ChatFileId,
        Messagetype,
        Messagepath,
        Valuesize
    };

    QTgChatHistory(QObject* parent = nullptr);
    QHash<int, QByteArray> roleNames() const;
    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex& index, int role) const;
    bool setData(const QModelIndex &index, const QVariant &value, int role);
    void setpath(int index, QString path);
    void updatefile(double filevalue, int index);

public slots:
    void createQList(td::td_api::messages* message);
    void push_message(QString message, std::int64_t sender_id, QString messagetype = "message", std::int64_t fileid = 0, QString path = "");

signals:
    void ChatListCreated(QString loadChat);

private:
    QList<tg_message*> mDatas;
};

#endif // TG_CHATSLISTMODEL_H
