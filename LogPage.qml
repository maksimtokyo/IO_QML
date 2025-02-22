import QtQuick
import QtQuick.Effects
import QtQuick.Controls
import QtQuick.Layouts

Item {


    Image{
        id: img
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source: "nebula.jpg"
        visible: false
    }


    ShaderEffect{
        id: horizontalshader
        anchors.fill: img
        layer.enabled: true
        visible: false
        property variant src: img
        property real radius: 20
        property real sw: 1.0/img.width
        property real sh: 0.0
        blending: true
        fragmentShader: "qrc:/mfrag.frag.qsb"
    }


    ShaderEffect{
        id: verticalshader
        anchors.fill: img
        property variant src: horizontalshader
        property real radius: 20
        property real sw: 0.0
        property real sh: 1.0/img.height
        fragmentShader: "qrc:/mfrag.frag.qsb"
    }

    ColumnLayout{
        anchors.fill: parent

        Item{
            Layout.alignment: Qt.AlignCenter
            Layout.preferredWidth: 150
            Layout.preferredHeight: 60

            TextField{
                id: phonefield
                width: parent.width
                height: parent.height/2
                placeholderText: "phone"
                Keys.onReturnPressed:
                {

                    telegramroot.stringstate = text
                    console.log("Phone: " + text)
                    text = ""
                }
            }

            TextField{
                id: codefield
                anchors.top: phonefield.bottom
                placeholderText: "code"

                width: parent.width
                height: parent.height/2
                Keys.onReturnPressed:{
                    telegramroot.stringstate = text
                    console.log("Code: " + text)
                    text = ""
                }
            }

            TextField{
                id: passwordfield
                anchors.top: codefield.bottom
                placeholderText: "password"
                width: parent.width
                height: parent.height/2
                Keys.onReturnPressed:{
                    telegramroot.stringstate = text
                    console.log("Password: " + text)
                    text = ""
                }
            }
        }

    }

}
