/****************************************************************************
** Meta object code from reading C++ file 'tg_controller_qt.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.7.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../tg_controller_qt.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tg_controller_qt.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.7.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASStg_controller_qtENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASStg_controller_qtENDCLASS = QtMocHelpers::stringData(
    "tg_controller_qt",
    "QML.Element",
    "Tontroll",
    "stringstateChanged",
    "",
    "statusloaderChanged",
    "chatsmodeChanged",
    "chatHistoryChanged",
    "getChathistory",
    "std::int64_t",
    "id",
    "start_handl",
    "loadedViewChanged",
    "mainuseridChanged",
    "createQList",
    "td::td_api::messages*",
    "message",
    "messagestringChanged",
    "loggedChanged",
    "fileidChanged",
    "indexmessageChanged",
    "get_ans_parametrs",
    "paramaters_handler",
    "need_exit",
    "getChatHistory",
    "qml_sendmessage",
    "logged_correct",
    "stringstate",
    "chatsmodel",
    "tg_chatslistmodel*",
    "chatHistory",
    "QTgChatHistory*",
    "mainuserid",
    "messagestring",
    "fileid",
    "logged",
    "indexmessage"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASStg_controller_qtENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       1,   14, // classinfo
      19,   16, // methods
       8,  161, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      13,       // signalCount

 // classinfo: key, value
       1,    2,

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       3,    0,  130,    4, 0x06,    9 /* Public */,
       5,    0,  131,    4, 0x06,   10 /* Public */,
       6,    0,  132,    4, 0x06,   11 /* Public */,
       7,    0,  133,    4, 0x06,   12 /* Public */,
       8,    1,  134,    4, 0x06,   13 /* Public */,
      11,    0,  137,    4, 0x06,   15 /* Public */,
      12,    0,  138,    4, 0x06,   16 /* Public */,
      13,    0,  139,    4, 0x06,   17 /* Public */,
      14,    1,  140,    4, 0x06,   18 /* Public */,
      17,    1,  143,    4, 0x06,   20 /* Public */,
      18,    0,  146,    4, 0x06,   22 /* Public */,
      19,    0,  147,    4, 0x06,   23 /* Public */,
      20,    0,  148,    4, 0x06,   24 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
      21,    1,  149,    4, 0x0a,   25 /* Public */,
      22,    0,  152,    4, 0x0a,   27 /* Public */,
      23,    0,  153,    4, 0x0a,   28 /* Public */,
      24,    1,  154,    4, 0x0a,   29 /* Public */,
      25,    1,  157,    4, 0x0a,   31 /* Public */,
      26,    0,  160,    4, 0x0a,   33 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 9,   10,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 15,   16,
    QMetaType::Void, QMetaType::QString,   16,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 9,   10,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 9,   10,
    QMetaType::Void, QMetaType::QString,   16,
    QMetaType::Void,

 // properties: name, type, flags
      27, QMetaType::QString, 0x00015103, uint(0), 0,
      28, 0x80000000 | 29, 0x00015009, uint(2), 0,
      30, 0x80000000 | 31, 0x00015009, uint(3), 0,
      32, 0x80000000 | 9, 0x00015009, uint(7), 0,
      33, QMetaType::QString, 0x00015003, uint(9), 0,
      34, 0x80000000 | 9, 0x0001500b, uint(11), 0,
      35, QMetaType::Bool, 0x00015003, uint(10), 0,
      36, QMetaType::Int, 0x00015003, uint(12), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject tg_controller_qt::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASStg_controller_qtENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASStg_controller_qtENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_metaTypeArray<
        // property 'stringstate'
        QString,
        // property 'chatsmodel'
        tg_chatslistmodel*,
        // property 'chatHistory'
        QTgChatHistory*,
        // property 'mainuserid'
        std::int64_t,
        // property 'messagestring'
        QString,
        // property 'fileid'
        std::int64_t,
        // property 'logged'
        bool,
        // property 'indexmessage'
        int,
        // Q_OBJECT / Q_GADGET
        tg_controller_qt,
        // method 'stringstateChanged'
        void,
        // method 'statusloaderChanged'
        void,
        // method 'chatsmodeChanged'
        void,
        // method 'chatHistoryChanged'
        void,
        // method 'getChathistory'
        void,
        std::int64_t,
        // method 'start_handl'
        void,
        // method 'loadedViewChanged'
        void,
        // method 'mainuseridChanged'
        void,
        // method 'createQList'
        void,
        td::td_api::messages *,
        // method 'messagestringChanged'
        void,
        QString,
        // method 'loggedChanged'
        void,
        // method 'fileidChanged'
        void,
        // method 'indexmessageChanged'
        void,
        // method 'get_ans_parametrs'
        void,
        std::int64_t,
        // method 'paramaters_handler'
        void,
        // method 'need_exit'
        void,
        // method 'getChatHistory'
        void,
        std::int64_t,
        // method 'qml_sendmessage'
        void,
        QString,
        // method 'logged_correct'
        void
    >,
    nullptr
} };

void tg_controller_qt::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<tg_controller_qt *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->stringstateChanged(); break;
        case 1: _t->statusloaderChanged(); break;
        case 2: _t->chatsmodeChanged(); break;
        case 3: _t->chatHistoryChanged(); break;
        case 4: _t->getChathistory((*reinterpret_cast< std::add_pointer_t<std::int64_t>>(_a[1]))); break;
        case 5: _t->start_handl(); break;
        case 6: _t->loadedViewChanged(); break;
        case 7: _t->mainuseridChanged(); break;
        case 8: _t->createQList((*reinterpret_cast< std::add_pointer_t<td::td_api::messages*>>(_a[1]))); break;
        case 9: _t->messagestringChanged((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 10: _t->loggedChanged(); break;
        case 11: _t->fileidChanged(); break;
        case 12: _t->indexmessageChanged(); break;
        case 13: _t->get_ans_parametrs((*reinterpret_cast< std::add_pointer_t<std::int64_t>>(_a[1]))); break;
        case 14: _t->paramaters_handler(); break;
        case 15: _t->need_exit(); break;
        case 16: _t->getChatHistory((*reinterpret_cast< std::add_pointer_t<std::int64_t>>(_a[1]))); break;
        case 17: _t->qml_sendmessage((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 18: _t->logged_correct(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (tg_controller_qt::*)();
            if (_t _q_method = &tg_controller_qt::stringstateChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)();
            if (_t _q_method = &tg_controller_qt::statusloaderChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)();
            if (_t _q_method = &tg_controller_qt::chatsmodeChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)();
            if (_t _q_method = &tg_controller_qt::chatHistoryChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)(std::int64_t );
            if (_t _q_method = &tg_controller_qt::getChathistory; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)();
            if (_t _q_method = &tg_controller_qt::start_handl; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)();
            if (_t _q_method = &tg_controller_qt::loadedViewChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)();
            if (_t _q_method = &tg_controller_qt::mainuseridChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)(td::td_api::messages * );
            if (_t _q_method = &tg_controller_qt::createQList; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 8;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)(QString );
            if (_t _q_method = &tg_controller_qt::messagestringChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 9;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)();
            if (_t _q_method = &tg_controller_qt::loggedChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 10;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)();
            if (_t _q_method = &tg_controller_qt::fileidChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 11;
                return;
            }
        }
        {
            using _t = void (tg_controller_qt::*)();
            if (_t _q_method = &tg_controller_qt::indexmessageChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 12;
                return;
            }
        }
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 2:
            *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QTgChatHistory* >(); break;
        case 1:
            *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< tg_chatslistmodel* >(); break;
        }
    }  else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<tg_controller_qt *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->stringstate(); break;
        case 1: *reinterpret_cast< tg_chatslistmodel**>(_v) = _t->chatsmodel(); break;
        case 2: *reinterpret_cast< QTgChatHistory**>(_v) = _t->chatHistory(); break;
        case 3: *reinterpret_cast< std::int64_t*>(_v) = _t->mainuserid(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->messagestring(); break;
        case 5: *reinterpret_cast< std::int64_t*>(_v) = _t->fileid(); break;
        case 6: *reinterpret_cast< bool*>(_v) = _t->logged(); break;
        case 7: *reinterpret_cast< int*>(_v) = _t->indexmessage(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<tg_controller_qt *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setStringstate(*reinterpret_cast< QString*>(_v)); break;
        case 4: _t->setmessagestring(*reinterpret_cast< QString*>(_v)); break;
        case 5: _t->setfileid(*reinterpret_cast< std::int64_t*>(_v)); break;
        case 6: _t->setlogged(*reinterpret_cast< bool*>(_v)); break;
        case 7: _t->setindexmessage(*reinterpret_cast< int*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *tg_controller_qt::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *tg_controller_qt::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASStg_controller_qtENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int tg_controller_qt::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 19)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 19;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 19)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 19;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    }
    return _id;
}

// SIGNAL 0
void tg_controller_qt::stringstateChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void tg_controller_qt::statusloaderChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void tg_controller_qt::chatsmodeChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void tg_controller_qt::chatHistoryChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void tg_controller_qt::getChathistory(std::int64_t _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void tg_controller_qt::start_handl()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void tg_controller_qt::loadedViewChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void tg_controller_qt::mainuseridChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void tg_controller_qt::createQList(td::td_api::messages * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}

// SIGNAL 9
void tg_controller_qt::messagestringChanged(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 9, _a);
}

// SIGNAL 10
void tg_controller_qt::loggedChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 10, nullptr);
}

// SIGNAL 11
void tg_controller_qt::fileidChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 11, nullptr);
}

// SIGNAL 12
void tg_controller_qt::indexmessageChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 12, nullptr);
}
QT_WARNING_POP
