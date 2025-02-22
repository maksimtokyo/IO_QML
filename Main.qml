import QtQuick
import QtQuick.Controls
import Qt.labs.settings 1.0
import IO_QML

Window {
    id: root
    width: 340
    height: 680
    visible: true


    Tontroll{
        id: telegramroot

        onLoggedChanged:{
            mainsettings.islasttimelogged = logged
        }
    }

    Loader{
        anchors.fill: parent
        source: mainsettings.islasttimelogged === true ?  "LogPage.qml" : "Chats.qml"
    }

    Settings
    {
        id: mainsettings
        property bool islasttimelogged: false
    }


    Component.onDestruction:{
        mainsettings.islasttimelogged = telegramroot.logged
        console.log(telegramroot.logged)
    }
}
