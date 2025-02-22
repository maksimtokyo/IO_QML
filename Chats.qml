import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Qt.labs.qmlmodels



Item {


    ColumnLayout{
        anchors.fill: parent
        spacing: -1

        Rectangle{
            id: callbackrec
            Layout.alignment: Qt.AlignTop
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height/15
            color: "#141414"


            Button{

                anchors.top: parent.top
                anchors.left: parent.left

                onClicked: {
                    stackchat.pop()
                    console.log("POP")
                }
            }
        }


        StackView{
            id: stackchat

            Layout.fillHeight: true
            Layout.fillWidth: true

            initialItem: chatsViewcom

            Rectangle{
                color: "#191a19"
                anchors.fill: parent
            }

            Component{
                id: chatsViewcom

                ListView{
                    id: chatsView
                    implicitHeight: stackchat.height
                    spacing: 10
                    implicitWidth: stackchat.width
                    model:  telegramroot.chatsmodel
                    clip: true

                    delegate: Component{
                        Rectangle{
                            width: chatsView.width
                            height: chatsView.height/10
                            color:  "transparent"

                            Text{
                                text: "ID:__ " + chat_id + "  Name:__" + chat_title
                                color: "white"
                            }

                            MouseArea{
                                anchors.fill: parent
                                onClicked: {
                                    telegramroot.getChathistory(chat_id)
                                    stackchat.push(chatViewcom)
                                }
                            }
                        }
                    }
                }
            }

            Component{
                id: chatViewcom

                Item{
                    implicitHeight: stackchat.height
                    implicitWidth:  stackchat.width


                    Image{
                        id: imgback
                        anchors.fill: parent
                        source: "flower.png"
                        visible: false
                    }

                    ShaderEffect{
                        id: horizontalShader
                        anchors.fill: imgback
                        layer.enabled: true
                        visible: false
                        property variant src: imgback
                        property real radius: 10
                        property real sw: 1.0/imgback.width
                        property real sh: 0.0
                        blending: true
                        fragmentShader: "qrc:/mfrag.frag.qsb"
                    }

                    ShaderEffect{
                        id: verticalshader
                        anchors.fill: imgback
                        property variant src: horizontalShader
                        property real radius: 10
                        property real sw: 0.0
                        property real sh: 1.0/imgback.height
                        fragmentShader: "qrc:/mfrag.frag.qsb"
                    }


                    ListView{
                        id: chatView

                        implicitHeight: stackchat.height - 50
                        implicitWidth:  stackchat.width
                        model: telegramroot.chatHistory

                        clip: true
                        spacing: 5

                        delegate: chooser
                        DelegateChooser{
                            id: chooser
                            role: "messagetype"
                            DelegateChoice { roleValue: "message";
                                TextArea{
                                    id: messageArea
                                    text: chatmessage
                                    onTextChanged: width = Math.min(300, width)
                                    wrapMode: TextEdit.WrapAnywhere
                                    anchors.right: parent.right

                                    background: Rectangle{
                                        color: "#121212"
                                        opacity:  0.5
                                        anchors.fill: messageArea
                                        radius: 15
                                    }

                                Component.onCompleted: {
                                    console.log("user id: ... " + chatuserid)
                                }
                            }
                            }

                            DelegateChoice{roleValue:  "message_file";
                                Item{


                                    property int indexOfThisDelegate: index
                                    id: fileLogic
                                    implicitWidth: messageAreaFile.width
                                    implicitHeight: messageAreaFile.height + clickdown.height + progressDownload.height



                                    Rectangle{
                                        color: "#121212"
                                        opacity:  0.5
                                        anchors.fill: fileLogic
                                        radius: 15
                                    }




                                    ProgressBar{
                                        id: progressDownload
                                        value: 0.5
                                        anchors.top: fileLogic.top

                                        opacity: 0.5

                                        background: Rectangle{
                                            implicitWidth: messageAreaFile.width - 30
                                            implicitHeight: 2
                                            color: "#ab3fa0"
                                            radius: 15
                                        }
                                    }

                                    TextArea{
                                        id: messageAreaFile
                                        anchors.top: progressDownload.bottom
                                        text:  chatmessage
                                        onTextChanged: width = Math.min(300, width)
                                        wrapMode:  TextEdit.WrapAnywhere
                                        anchors.right:  parent.right

                                        background: Item{}
                                    }

                                    Button{
                                        id: clickdown
                                        anchors.top:  messageAreaFile.bottom
                                        width: 50
                                        height: 50

                                        onClicked: {
                                            telegramroot.fileid = chatfileid
                                            telegramroot.indexmessage = indexOfThisDelegate
                                        }
                                    }
                                }
                            }
                        }



                        add: Transition {
                            NumberAnimation  {property: "opacity"; from: 0.7; to: 1.0; duration: 100}
                            NumberAnimation  {property: "scale"; from: 0.7; to: 1.0; duration: 100}

                        }

                        Connections{
                            target: chatView.model
                            onDataChanged:{
                                console.log("Value in model changed _____ ___ __ ")
                            }
                        }

                    }

                    TextField{

                        anchors.top: chatView.bottom
                        height: 50
                        implicitWidth:  stackchat.width
                        Keys.onReturnPressed: {
                            telegramroot.messagestringChanged(text)
                            text = ""
                        }

                        background: Rectangle{
                            color: "#121212"
                            opacity: 0.5
                            anchors.fill: parent
                        }
                    }
                }
            }
        }
    }
}
