import QtQuick
import QtQuick.Controls
// import IO_QML

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World 😍😍😍😍v")

    // Tontroll{
    //     id: mainreactor
    // }



    ListView{
        anchors.fill: parent

        model: 3


        delegate: Component{
            Rectangle{
                width:  50
                height: 50


                Text{
                    text: ""
                }
            }
        }
    }


}
