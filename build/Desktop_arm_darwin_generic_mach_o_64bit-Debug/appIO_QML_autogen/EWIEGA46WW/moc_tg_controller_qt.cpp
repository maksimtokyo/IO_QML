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
    "get_ans_parametrs",
    "std::int32_t",
    "id",
    "paramaters_handler",
    "need_exit",
    "status_load_chats",
    "str",
    "stringstate",
    "statusloader",
    "chatsmodel",
    "tg_chatslistmodel*"
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
       7,   16, // methods
       3,   69, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // classinfo: key, value
       1,    2,

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       3,    0,   58,    4, 0x06,    4 /* Public */,
       5,    0,   59,    4, 0x06,    5 /* Public */,
       6,    0,   60,    4, 0x06,    6 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       7,    1,   61,    4, 0x0a,    7 /* Public */,
      10,    0,   64,    4, 0x0a,    9 /* Public */,
      11,    0,   65,    4, 0x0a,   10 /* Public */,
      12,    1,   66,    4, 0x0a,   11 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   13,

 // properties: name, type, flags
      14, QMetaType::QString, 0x00015103, uint(0), 0,
      15, QMetaType::QString, 0x00015103, uint(1), 0,
      16, 0x80000000 | 17, 0x00015009, uint(2), 0,

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
        // property 'statusloader'
        QString,
        // property 'chatsmodel'
        tg_chatslistmodel*,
        // Q_OBJECT / Q_GADGET
        tg_controller_qt,
        // method 'stringstateChanged'
        void,
        // method 'statusloaderChanged'
        void,
        // method 'chatsmodeChanged'
        void,
        // method 'get_ans_parametrs'
        void,
        std::int32_t,
        // method 'paramaters_handler'
        void,
        // method 'need_exit'
        void,
        // method 'status_load_chats'
        void,
        QString
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
        case 3: _t->get_ans_parametrs((*reinterpret_cast< std::add_pointer_t<std::int32_t>>(_a[1]))); break;
        case 4: _t->paramaters_handler(); break;
        case 5: _t->need_exit(); break;
        case 6: _t->status_load_chats((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
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
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 2:
            *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< tg_chatslistmodel* >(); break;
        }
    }  else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<tg_controller_qt *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->stringstate(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->statusloader(); break;
        case 2: *reinterpret_cast< tg_chatslistmodel**>(_v) = _t->chatsmodel(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<tg_controller_qt *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setStringstate(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setStatusloader(*reinterpret_cast< QString*>(_v)); break;
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
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 7;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
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
QT_WARNING_POP
