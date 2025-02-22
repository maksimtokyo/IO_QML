#include "tg_chatslistmodel.h"



tg_chat::tg_chat(std::int64_t chat_id, QString chat_title)
    : m_chat_id(chat_id), m_chat_title(chat_title) {}

tg_message::tg_message(QString message, std::int64_t id, QString messagetype)
    : m_message(message), m_chatuserid(id), m_message_type(messagetype) {}

tg_message_file::tg_message_file(QString message, std::int64_t id, QString messagetype, std::int64_t file_id, QString path)
    : tg_message (message, id, messagetype), m_fileid(file_id), m_path(path) {}


tg_chatslistmodel::tg_chatslistmodel(QObject* parent)
    : QAbstractListModel(parent) {}


QTgChatHistory::QTgChatHistory(QObject* parent)
    : QAbstractListModel(parent) {}



int QTgChatHistory::rowCount(const QModelIndex &parent) const
{
    return mDatas.size();
}


QHash<int, QByteArray> QTgChatHistory::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[ChatMessage] = "chatmessage";
    roles[ChatUserId] = "chatuserid";
    roles[ChatFileId] = "chatfileid";
    roles[Messagetype] = "messagetype";
    roles[Messagepath] = "path";
    roles[Valuesize] = "valuesize";
    return roles;
}



QVariant QTgChatHistory::data(const QModelIndex& index, int role) const
{
    if (index.row() < 0 || index.row() >= mDatas.size())
    {
        return QVariant();
    }

    if (role == ChatMessage)
    {
        return QVariant(mDatas.at(index.row())->chatmessage());
    }

    if (role == ChatUserId)
    {
        return QVariant(mDatas.at(index.row())->chatuserid());
    }

    if (role == ChatFileId)
    {
        if (mDatas.at(index.row())->messagtype() == "message_file")
            return QVariant(static_cast<tg_message_file*>(mDatas.at(index.row()))->chatfileid());
    }

    if (role == Messagetype)
    {
        return QVariant(mDatas.at(index.row())->messagtype());
    }

    if (role == Valuesize)
    {
        if (mDatas.at(index.row())->messagtype() == "message_file")
            return QVariant(static_cast<tg_message_file*>(mDatas.at(index.row()))->valuesize());
    }

    return QVariant();
}


int tg_chatslistmodel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return mDatas.size();
}

QHash<int, QByteArray> tg_chatslistmodel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[ChatId] = "chat_id";
    roles[ChatTitle] = "chat_title";
    return roles;
}


QVariant tg_chatslistmodel::data(const QModelIndex &index, int role) const
{
    if (index.row() < 0 || index.row() >= mDatas.size())
    {
        return QVariant();
    }

    if (role == ChatId){
        return QVariant(mDatas.at(index.row()).chat_id());
    }

    if (role == ChatTitle){
        return QVariant(mDatas.at(index.row()).chat_title());
    }

    return QVariant();
}


void tg_chatslistmodel::push_chat(std::int64_t c_id, QString c_title)
{
    beginInsertRows(QModelIndex(), mDatas.size(), mDatas.size());
    tg_chat buf(c_id, c_title);
    mDatas.append(buf);
    endInsertRows();

}


void QTgChatHistory::createQList(td::td_api::messages* message)
{

    for (auto& messagec : message->messages_)
    {

        if (messagec->content_->get_id() == td::td_api::messageText::ID)
        {
            beginInsertRows(QModelIndex(), mDatas.size(), mDatas.size());
            auto text = static_cast<const td::td_api::messageText*>(messagec->content_.get());
            auto sender_auto = static_cast<td::td_api::messageSenderUser*>(messagec->sender_id_.get());
            tg_message*  buf = new tg_message(QString::fromStdString(text->text_->text_), sender_auto->user_id_);
            mDatas.append(buf);
            endInsertRows();

        }
    }

    emit ChatListCreated("chatHistory");
}



void QTgChatHistory::push_message(QString message, std::int64_t sender_id, QString messagetype, std::int64_t fileid, QString path)
{
    beginInsertRows(QModelIndex(), mDatas.size(), mDatas.size());

    if (messagetype == "message")
    {
        tg_message* buf = new tg_message(message, sender_id);
        mDatas.append(buf);
    }

    else if (messagetype == "message_file")
    {
        tg_message_file* buf = new tg_message_file(message, sender_id, "message_file", fileid, path);
        mDatas.append(buf);
    }
    endInsertRows();
}

bool QTgChatHistory::setData(const QModelIndex &index, const QVariant &value, int role)
{

    if (index.row() < 0 || index.row() >= mDatas.size())
    {
        return false;
    }

    if (role == Valuesize)
    {


        if (mDatas.at(index.row())->messagtype() == "message_file")
        {
            static_cast<tg_message_file*>(mDatas.at(index.row()))->setvaluesize(value.value<double>());
            emit dataChanged(index, index);
            return true;
        }
    }

    if (role == Messagepath)
    {
        if (mDatas.at(index.row())->messagtype() == "message_file")
        {
            static_cast<tg_message_file*>(mDatas.at(index.row()))->setpath(value.value<QString>());
            emit dataChanged(index, index);
            return true;
        }
    }

    return false;


}

void QTgChatHistory::updatefile(double filevalue, int index)
{
    if (index >= 0)
    {
        QModelIndex ind = this->index(index, 0, QModelIndex());
        QVariant nm(filevalue);
        setData(ind, nm, Valuesize);
    }
}

void QTgChatHistory::setpath(int index, QString path)
{
    if (index >= 0){

        if (static_cast<tg_message_file*>(mDatas[index])->path() == path)
        {
            return;
        }

        else{
            QModelIndex ind = this->index(index, 0, QModelIndex());
            QVariant nm(path);
            setData(ind, nm, Messagepath);
        }

    }
}
